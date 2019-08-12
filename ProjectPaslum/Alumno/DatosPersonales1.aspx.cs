using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectPaslum.Alumno
{
    public partial class DatosPersonales1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["nombre"] != null)
            {
                lbNombre.Text = Session["nombre"].ToString();
                lbApellidoP.Text = Session["apellido1"].ToString();
                lbApellidoM.Text = Session["apellido2"].ToString();
                lbMatricula.Text = Session["matricula"].ToString();
                lbCorreo.Text = Session["correo"].ToString();
                lbTelefono.Text = Session["telefono1"].ToString();
                lbCelular.Text = Session["telefono2"].ToString();
                lbOtro.Text = Session["telefono3"].ToString();
                lbCarrera.Text = Session["carrera"].ToString();
                lbArea.Text = Session["area"].ToString();
            }
        }
    }
}