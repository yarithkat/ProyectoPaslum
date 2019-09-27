using Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectPaslum.Alumno
{
    public partial class DatosEscolares : System.Web.UI.Page
    {
        PaslumBaseDatoDataContext contexto = new PaslumBaseDatoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["id"] != null)
                {
                    lbAlumno.Text = Session["id"].ToString();
                    loadGridItems(Convert.ToInt32(Session["id"].ToString()));

                }
            }
        }

        private void loadGridItems(int idCuatri)
        {
            try
            {
                GridView2.DataSource = contexto.TblAlumno
                    .Where(n => n.idCuatri == idCuatri)
                    .Select(n => new
                    {
                        Nombre = n.strNombre.ToUpper(),
                        ApellidoP = n.strApellidoP.ToUpper(),
                        ApellidoM = n.strApellidoM.ToUpper(),
                        Edad = n.intEdad,
                        Sexo = n.strSexo.ToUpper(),
                        Usuario = n.TblUser != null ? n.TblUser.strusuario : String.Empty,
                        Contraseña = n.TblUser != null ? n.TblUser.strpass : String.Empty

                    })
                    .ToList();
                GridView2.DataBind();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}