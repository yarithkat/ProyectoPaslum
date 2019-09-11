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
                lbforTel.Text = Session["forTel"].ToString();
                lbforDom.Text = Session["forDom"].ToString();
            }
        }

        protected void BtnEditar_Click(object sender, EventArgs e)
        {
            TblAlumno alum = new TblAlumno();
            alum.id = Convert.ToInt32(Session["id"]);
            if (TxtCorreo != null)
            {
                alum.strCorreo = TxtCorreo.Text;
            }
            else if (TxtCorreo == null)
            {
                alum.strCorreo = lbcorreo.Text;
            }

            TblTelefono tel = new TblTelefono();
            tel.id = Convert.ToInt32(Session["forTel"]);
            if (TxtCelular != null)
            {
                tel.strcelular = TxtCelular.Text;
            }
            else if (TxtCelular == null)
            {
                tel.strcelular = lbCelular.Text;
            }
            if (TxtTelefono != null)
            {
                tel.strtelCasa = TxtTelefono.Text;
            }
            else if (TxtTelefono == null)
            {
                tel.strtelCasa = lbTelefono.Text;
            }
            if (TxtOtro != null)
            {
                tel.strotro = TxtOtro.Text;
            }
            else if (TxtOtro == null)
            {
                tel.strotro = lbOtro.Text;
            }

            TblDireccion dom = new TblDireccion();
            dom.id = Convert.ToInt32(Session["forDom"]);
            if (TxtCalle != null)
            {
                dom.strcalle = TxtCalle.Text;
            }
            else if (TxtCalle == null)
            {
                dom.strcalle = lbCalle.Text;
            }
            if (TxtColonia != null)
            {
                dom.strcolonia = TxtColonia.Text;
            }
            else if (TxtColonia == null)
            {
                dom.strcolonia = lbColonia.Text;
            }
            if (TxtMunicipio != null)
            {
                dom.strmunicipio = TxtMunicipio.Text;
            }
            else if (TxtMunicipio == null)
            {
                dom.strmunicipio = lbMunicipio.Text;
            }


            ControllerAlumno ctrlAlum = new ControllerAlumno();
            ctrlAlum.Editar(alum,tel, dom);
        }
    }
}