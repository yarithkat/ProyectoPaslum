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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.LlenarCarrera();
            }

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

            TblGrupo grupo = new TblGrupo();
            grupo.strNombre = txtNombre.Text.ToUpper();
            grupo.strCapacidad = txtcapacidad.Text;
            grupo.idCarrera = int.Parse(carrera);
            ControllerGrupo ctrlGrupo = new ControllerGrupo();
            ctrlGrupo.InsertarGrupo(grupo);
            this.Response.Redirect("./GruposAdmin.aspx", true);

        }
    }
}