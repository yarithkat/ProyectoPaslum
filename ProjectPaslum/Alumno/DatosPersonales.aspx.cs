using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Controller;
using Modelo;

namespace ProjectPaslum.Alumno
{
    public partial class DatosPersonales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["nombre"] != null)
            {
                TxtNombre.Text = Session["nombre"].ToString();
                TxtApellidoP.Text = Session["apellido1"].ToString();
                TxtApellidoM.Text = Session["apellido2"].ToString();
                TxtMatricula.Text = Session["matricula"].ToString();
                TxtCorreo.Text = Session["correo"].ToString();
                TxtCalle.Text = Session["calle"].ToString();
                TxtColonia.Text = Session["colonia"].ToString();
                TxtMunicipio.Text = Session["municipio"].ToString();
                TxtTelefono.Text = Session["telefono1"].ToString();
                TxtCelular.Text = Session["telefono2"].ToString();
                TxtOtro.Text = Session["telefono3"].ToString();
                TxtCarrera.Text = Session["carrera"].ToString();
                TxtArea.Text = Session["area"].ToString();
            }
        }

        protected void BtnEditar_Click(object sender, EventArgs e)
        {

        }
    }
}