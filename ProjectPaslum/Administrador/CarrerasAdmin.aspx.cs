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
        PaslumBaseDatoDataContext contexto = new PaslumBaseDatoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptarAgregar_Click(object sender, EventArgs e)
        {      
            var carre = cmbArea.SelectedItem.Value;
            var repetido = (from rep in contexto.TblCarrera
                            select new { rep.strNombre, rep.strArea }).FirstOrDefault();
            var cuenta = (from cue in contexto.TblCarrera
                          select cue.id).Count() + 1;
            

            if (repetido.strNombre == txtNombreAgregar.Text.ToUpper() && repetido.strArea == carre)
            {

            }
            else
            {
                TblCarrera alum = new TblCarrera();
                alum.strNombre = txtNombreAgregar.Text.ToUpper();
                alum.strClave = cuenta.ToString();
                alum.strArea = carre;
                alum.bStatus = "1";
                ControllerCarrera ctrlCar = new ControllerCarrera();
                ctrlCar.InsertarCarrera(alum);
            }
            
            this.Response.Redirect("./CarrerasAdmin.aspx", true);
        }
    }
}