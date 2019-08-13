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
    public partial class Materiadmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.LlenarCarrera();
                this.LlenarCuatri();
            }
        }

        private void LlenarCarrera()
        {
            ControllerMateria CtrlAsignarCarrera = new ControllerMateria();
            List<TblCarrera> carrera = CtrlAsignarCarrera.ConsultaCarrera();
            ddlCarrera.Items.Add("Seleccionar");
            ddlCarrera.DataSource = carrera;
            ddlCarrera.DataValueField = "id";
            ddlCarrera.DataTextField = "strNombre";
            ddlCarrera.DataBind();

        }

        private void LlenarCuatri()
        {
            ControllerMateria CtrlAsignarCuatri = new ControllerMateria();
            List<TblCuatri> cuatri = CtrlAsignarCuatri.ConsultaCuatri();
            ddlCuatri.Items.Add("Seleccionar");
            ddlCuatri.DataSource = cuatri;
            ddlCuatri.DataValueField = "id";
            ddlCuatri.DataTextField = "strNombre";
            ddlCuatri.DataBind();

        }

        protected void btnaceptar_Click(object sender, EventArgs e)
        {
            var carrera = ddlCarrera.SelectedValue;
            var cuatri = ddlCuatri.SelectedValue;

            TblMateria mat = new TblMateria();
                mat.strNombre = txtNombre.Text.ToUpper();
                mat.strDescripcion = txtDescrip.Text.ToUpper();
                mat.bStatus = "1";
                mat.idCarrera = int.Parse(carrera);
                mat.idCuatri = int.Parse(cuatri);
                ControllerMateria ctrlMate = new ControllerMateria();
                ctrlMate.InsertarMateria(mat);
                this.Response.Redirect("./Materiadmin.aspx", true);
        }
    }
}