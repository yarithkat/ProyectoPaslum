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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.LlenarCarrera();
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
        protected void btnAceptarAgregar_Click(object sender, EventArgs e)
        {
            var sex = cmbSexo.SelectedItem.Value;
            var carrera = ddlCarrera.SelectedValue;

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
                alum.intMatricula = Int32.Parse(txtMatriculaAgregar.Text);
                alum.bitFoto = path;
                alum.idCarrera = int.Parse(carrera);
                ControllerAlumno ctrlAlum = new ControllerAlumno();
                ctrlAlum.InsertarAlum(GetDatosVista(alum));
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