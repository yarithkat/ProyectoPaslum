using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Controller;
using Modelo;

namespace ProjectPaslum.Administrador
{
    public partial class Alumnosadmin : System.Web.UI.Page
    {
        PaslumBaseDatoDataContext contexto = new PaslumBaseDatoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.LlenarCarrera();
                this.LlenarCuatri();
                alertError.Visible = false;
                alertBien.Visible = false;
            }

        }
        private void LlenarCarrera()
        {
            ControllerAlumno CtrlAsignarC = new ControllerAlumno();
            List<TblCarrera> carrera = CtrlAsignarC.ConsultaCarrera();
            ddlCarrera.Items.Add("Seleccionar");
            ddlCarrera.DataSource = carrera;
            ddlCarrera.DataValueField = "id";
            ddlCarrera.DataTextField = "strNombre";
            ddlCarrera.DataBind();
        }
        protected void ddlCarrera_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        private void LlenarCuatri()
        {
            ControllerAlumno CtrlAsignarCuatri = new ControllerAlumno();
            List<TblCuatri> cuatri = CtrlAsignarCuatri.ConsultaCuatri();
            ddlCuatri.Items.Add("Seleccionar");
            ddlCuatri.DataSource = cuatri;
            ddlCuatri.DataValueField = "id";
            ddlCuatri.DataTextField = "strNombre";
            ddlCuatri.DataBind();

        }

        protected void ddlCarrera_SelectedIndexChanged1(object sender, EventArgs e)
        {
            var grupo = (from grup in contexto.TblGrupo where grup.idCarrera == Convert.ToInt32(ddlCarrera.SelectedValue) select grup).ToList();
            ddlGrupo.DataSource = grupo;
            ddlGrupo.DataValueField = "id";
            ddlGrupo.DataTextField = "strNombre";
            ddlGrupo.DataBind();
            ddlGrupo.Items.Insert(0, new ListItem("Seleccionar", "0"));
        }

        protected void btnAceptarAgregar_Click(object sender, EventArgs e)
        {
            
            var sex = cmbSexo.SelectedItem.Value;
            var carrera = ddlCarrera.SelectedValue;
            var cuatri = ddlCuatri.SelectedValue;
            var grupo = ddlGrupo.SelectedValue;            

            if (FotoAlumno.HasFile)
            {
                string path = Server.MapPath("~/images/AlumRegistrado/" + FotoAlumno.FileName);
                FotoAlumno.SaveAs(path);

                TblAlumno alum = new TblAlumno();
                alum.strNombre = txtNombreAgregar.Text.ToUpper();
                alum.strApellidoP = txtPaternoAgregar.Text.ToUpper();
                alum.strApellidoM = txtMaternoAgregar.Text.ToUpper();
                alum.intEdad = Int32.Parse(txtEdadAgregar.Text);
                alum.strSexo = sex;
                alum.strCorreo = txtCorreoAgregar.Text;
                alum.bitFoto = path;
                alum.idCarrera = int.Parse(carrera);
                alum.idCuatri = int.Parse(cuatri);
                alum.idGrupo = int.Parse(grupo);

                var maximo = (from max in contexto.TblGrupo
                              where max.id == Convert.ToInt32(ddlGrupo.SelectedValue)
                              select  max.strCapacidad ).FirstOrDefault();

                var cuenta = (from cue in contexto.TblAlumno
                              where cue.idGrupo == Convert.ToInt32(ddlGrupo.SelectedValue)
                              && cue.idCarrera == Convert.ToInt32(ddlCarrera.SelectedValue)
                              select cue.idGrupo).Count();
                
                var cuenta1 = cuenta + 1;
                if (maximo >= cuenta1)
                {
                    ControllerAlumno ctrlAlum = new ControllerAlumno();
                    ctrlAlum.InsertarAlum(GetDatosVista(alum));
                    alertBien.Visible = true;
                }
                else
                {
                    alertError.Visible = true;
                }
                
            }
            this.Response.Redirect("./Alumnosadmin.aspx", true);
        }

        protected TblAlumno GetDatosVista(TblAlumno alum)
        {
            var random = new Random();
            var value = random.Next(0, 999999);
            TblDireccion direccion = new TblDireccion();
            direccion.strestado = txtDirecEstado.Text.ToUpper();
            direccion.strmunicipio = txtDirecMunicipio.Text.ToUpper();
            direccion.strcolonia = txtDirecColonia.Text.ToUpper();
            direccion.strcalle = txtDirecCalle.Text.ToUpper();
            direccion.intcodpost = Int32.Parse(txtpostal.Text);
            direccion.strnumInt = txtDirecInter.Text.ToUpper();
            direccion.strnumExt = txtDirecExt.Text.ToUpper();
            direccion.strreferencias = TxtReferencia.Text.ToUpper();

            TblTelefono telefono = new TblTelefono();
            telefono.strcelular = txtTelCelular.Text.ToUpper();
            telefono.strtelCasa = txtTelCasa.Text.ToUpper();
            telefono.strotro = txtTelotro.Text.ToUpper();

            TblUser login = new TblUser();
            login.strusuario = txtCorreoAgregar.Text.ToString();
            login.strpass = value.ToString();
            login.strtipoUsuario = "ALUMNO";

            alum.TblDireccion = direccion;
            alum.TblTelefono = telefono;
            alum.TblUser = login;

            return alum;

        }


    }
}