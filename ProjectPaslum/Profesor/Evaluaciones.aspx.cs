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
    public partial class Evaluaciones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.LlenarParcial();
            }
        }

        protected void BtnAceptar_Click(object sender, EventArgs e)
        {
            TblCatalogoParcial parcial = new TblCatalogoParcial();
            parcial.strNombre = TxtNombre.Text.ToUpper();
            parcial.strDescripcion = TxtDescripcion.Text.ToUpper();
            parcial.intPorcentaje = Int32.Parse(TxtPorcentaje.Text);
            ControllerParcial ctrlParcial = new ControllerParcial();
            ctrlParcial.InsertarParcial(parcial);
            this.Response.Redirect("./Evaluaciones.aspx", true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var par = ddlParcial.SelectedValue;

            TblCatalogoEvaluacion asignacion = new TblCatalogoEvaluacion();
            asignacion.idCatalogoParcial = int.Parse(par);
            asignacion.strDescripcion = TxtDescripcionActividad.Text.ToUpper();
            ControllerEvaluacion ctrlAsig = new ControllerEvaluacion();
            ctrlAsig.InsertarEvaluacion(asignacion);
            this.Response.Redirect("./Evaluaciones.aspx", true);
        }

        protected void LlenarParcial()
        {
            ControllerEvaluacion CtrlAsignarE = new ControllerEvaluacion();
            var evaluacion = CtrlAsignarE.ConsultaParciales();
            ddlParcial.Items.Add("Seleccionar");
            ddlParcial.DataSource = evaluacion;
            ddlParcial.DataValueField = "id";
            ddlParcial.DataTextField = "strNombre";
            ddlParcial.DataBind();

        }
    }
}