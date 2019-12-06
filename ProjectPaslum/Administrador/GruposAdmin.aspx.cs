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
    public partial class GruposAdmin : System.Web.UI.Page
    {
        PaslumBaseDatoDataContext contexto = new PaslumBaseDatoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.LlenarCarrera();
            }

            alertError.Visible = false;
            alertBien.Visible = false;

        }

        private void LlenarCarrera()
        {
            ControllerGrupo CtrlAsignarCarrera = new ControllerGrupo();
            List<TblCarrera> carrera = CtrlAsignarCarrera.ConsultaCarrera();
            ddlCarrera.Items.Add("Seleccionar");
            ddlCarrera.DataSource = carrera;
            ddlCarrera.DataValueField = "id";
            ddlCarrera.DataTextField = "strNombre";
            ddlCarrera.DataBind();

        }

        protected void btnaceptar_Click(object sender, EventArgs e)
        {
            var carrera = ddlCarrera.SelectedValue;
            var repetido = (from rep in contexto.TblGrupo
                          where rep.idCarrera == Convert.ToInt32(ddlCarrera.SelectedValue)
                          select rep.strNombre).FirstOrDefault();

            if (repetido == txtNombre.Text.ToUpper())
            {
                alertError.Visible = true;

            }
            else
            {
                TblGrupo grupo = new TblGrupo();
                grupo.strNombre = txtNombre.Text.ToUpper();
                grupo.strCapacidad = int.Parse(txtcapacidad.Text);
                grupo.idCarrera = int.Parse(carrera);
                ControllerGrupo ctrlGrupo = new ControllerGrupo();
                ctrlGrupo.InsertarGrupo(grupo);
                alertBien.Visible = true;
            }
            Response.Redirect("./GruposAdmin.aspx", true);
           

        }
    }
}