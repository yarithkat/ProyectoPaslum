using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;
using Controller;

namespace ProjectPaslum.Administrador
{
    public partial class Maestrosadmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnAceptarAgregar_Click(object sender, EventArgs e)
        {
            var sex = cmbSexo.SelectedItem.Value;

            if (FotoMaestro.HasFile)
            {
                string path = Server.MapPath("~/images/ProfeRegistrado/" + FotoMaestro.FileName);
                FotoMaestro.SaveAs(path);

                TblProfesor prof = new TblProfesor();
                prof.strNombre = txtNombreAgregar.Text.ToUpper();
                prof.strApellidoP = txtPaternoAgregar.Text.ToUpper();
                prof.strApellidoM = txtMaternoAgregar.Text.ToUpper();
                prof.intEdad = Int32.Parse(txtEdadAgregar.Text);
                prof.strSexo = sex;
                prof.strCorreo = txtCorreoAgregar.Text;
                prof.strCedula = txtCedulaAgregar.Text;
                prof.strEspecialidad = txtEspecialidadAgregar.Text.ToUpper();
                prof.bitFoto = path;
                ControllerMaestro ctrlProfe = new ControllerMaestro();
                ctrlProfe.InsertarProfe(GetDatosVista(prof));
            }
            this.Response.Redirect("./Maestrosadmin.aspx", true);
        }

        protected TblProfesor GetDatosVista(TblProfesor prof)
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
            login.strusuario = "UTTT" + login.id;
            login.strpass = value.ToString();
            login.strtipoUsuario = "PROFESOR";

            prof.TblDireccion = direccion;
            prof.TblTelefono = telefono;
            prof.TblUser = login;

            return prof;


        }
    }
}