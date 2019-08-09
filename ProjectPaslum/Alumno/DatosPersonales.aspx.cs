using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectPaslum.Alumno
{
    public partial class DatosPersonales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["nombre"] != null)
            {
                TxtNombre.Text = Session["nombre"].ToString();
                txtApellidoP.Text = Session["apellido1"].ToString();
                txtApellidoM.Text = Session["apellido2"].ToString();
                TxtMatricula.Text = Session["matricula"].ToString();
                TxtCorreo.Text = Session["correo"].ToString();
                TxtTelefono.Text = Session["telefono1"].ToString();
                txtCelular.Text = Session["telefono2"].ToString();
                txtOtro.Text = Session["telefono3"].ToString();
                TxtCarrera.Text = Session["carrera"].ToString();
                TxtArea.Text = Session["area"].ToString();
            }
        }
    }
}