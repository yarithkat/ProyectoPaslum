using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;
using Controller;


namespace ProjectPaslum.Administrador
{
    public partial class CuatriAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnaceptar_Click(object sender, EventArgs e)
        {
            TblCuatri cuat = new TblCuatri();
            cuat.strNombre = txtNombre.Text.ToUpper();
            cuat.strFechaInicio = DateTime.Parse(Inicio.Text);
            cuat.strFechaFin = DateTime.Parse(Fin.Text); ;
            ControllerCuatri ctrlCuat = new ControllerCuatri();
            ctrlCuat.InsertarCuatri(cuat);
            this.Response.Redirect("./CuatriAdmin.aspx", true);
        }
    }
}