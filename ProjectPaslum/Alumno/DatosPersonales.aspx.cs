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
                lbcorreo.Text = Session["correo"].ToString();
                lbCalle.Text = Session["calle"].ToString();
                lbColonia.Text = Session["colonia"].ToString();
                lbMunicipio.Text = Session["municipio"].ToString();
                lbTelefono.Text = Session["telefono1"].ToString();
                lbCelular.Text = Session["telefono2"].ToString();
                lbOtro.Text = Session["telefono3"].ToString();
                TxtCarrera.Text = Session["carrera"].ToString();
                TxtArea.Text = Session["area"].ToString();
            }
        }

        protected void BtnEditar_Click(object sender, EventArgs e)
        {
            TblAlumno alum = new TblAlumno();
            alum.id = Convert.ToInt32(Session["id"]);
            alum.strCorreo = TxtCorreo.Text;

            TblTelefono tel = new TblTelefono();
            tel.strcelular = TxtCelular.Text;
            tel.strtelCasa = TxtTelefono.Text;
            tel.strotro = TxtOtro.Text;           


            ControllerAlumno ctrlAlum = new ControllerAlumno();
            ctrlAlum.Editar(alum,tel);
        }
    }
}