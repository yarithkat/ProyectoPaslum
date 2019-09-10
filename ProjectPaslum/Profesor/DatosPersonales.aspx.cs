using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;
using Controller;

namespace ProjectPaslum.Profesor
{
    public partial class DatosPersonales : System.Web.UI.Page
    {
        PaslumBaseDatoDataContext contexto = new PaslumBaseDatoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["nombre"] != null)
            {
                TxtNombre.Text = Session["nombre"].ToString();
                TxtApellidoP.Text = Session["apellido1"].ToString();
                TxtApellidoM.Text = Session["apellido2"].ToString();
                lbcorreo.Text = Session["correo"].ToString();
                lbCalle.Text = Session["calle"].ToString();
                lbColonia.Text = Session["colonia"].ToString();
                lbMunicipio.Text = Session["municipio"].ToString();
                lbTelefono.Text = Session["telefono1"].ToString();
                lbCelular.Text = Session["telefono2"].ToString();
                lbOtro.Text = Session["telefono3"].ToString();
            }
        }

        protected void BtnEditar_Click(object sender, EventArgs e)
        {
            TblProfesor prof = new TblProfesor();
            prof.id = Convert.ToInt32(Session["id"]);
            prof.strCorreo = TxtCorreo.Text;

            TblTelefono tel = new TblTelefono();
            prof.idTelefono = Convert.ToInt32(Session["forTel"]);
            tel.strcelular = TxtCelular.Text;
            tel.strtelCasa = TxtTelefono.Text;
            tel.strotro = TxtOtro.Text;


            ControllerMaestro ctrlProfe = new ControllerMaestro();
            ctrlProfe.Editar(prof, tel);
        }
    }
}