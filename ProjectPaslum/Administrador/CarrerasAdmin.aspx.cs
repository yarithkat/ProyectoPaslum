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
    public partial class CarrerasAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptarAgregar_Click(object sender, EventArgs e)
        {
            var carre = cmbArea.SelectedItem.Value;

            TblCarrera alum = new TblCarrera();
            alum.strNombre = txtNombreAgregar.Text.ToUpper();
            alum.strClave = txtClaveAgregar.Text.ToUpper();
            alum.strArea = carre;
            ControllerCarrera ctrlCar = new ControllerCarrera();
            ctrlCar.InsertarCarrera(alum);
            this.Response.Redirect("./CarrerasAdmin.aspx", true); 
        }
    }
}