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
    public partial class AsignacionProfesor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.LlenarProfesor();
                this.LlenarMateria();
                this.LlenarGrupo();
                this.LlenarAsigMateria();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var prof = ddlProfesor.SelectedValue;
            var materia = ddlMateria.SelectedValue;

            TblAsignacionMateria asignacion = new TblAsignacionMateria();
            asignacion.idProfesor = int.Parse(prof);
            asignacion.idMateria = int.Parse(materia);
            ControllerAsignarMateria ctrlAsig = new ControllerAsignarMateria();
            ctrlAsig.InsertarAsignacionMateria(asignacion);
            this.Response.Redirect("./AsignacionProfesor.aspx", true);
        }

        protected void LlenarProfesor()
        {
            ControllerAsignarMateria CtrlAsignarP = new ControllerAsignarMateria();
            var profesor = CtrlAsignarP.ConsultaProfesor();
            ddlProfesor.Items.Add("Seleccionar");
            ddlProfesor.DataSource = profesor;
            ddlProfesor.DataValueField = "id";
            ddlProfesor.DataTextField = "strNombre";
            ddlProfesor.DataBind();

        }

        protected void LlenarMateria()
        {
            ControllerAsignarMateria CtrlAsignarM = new ControllerAsignarMateria();
            List<TblMateria> materia = CtrlAsignarM.ConsultaMateria();
            ddlMateria.Items.Add("Seleccionar");
            ddlMateria.DataSource = materia;
            ddlMateria.DataValueField = "id";
            ddlMateria.DataTextField = "strNombre";
            ddlMateria.DataBind();

        }

        protected void LlenarAsigMateria()
        {
            ControllerAsignarGrupo CtrlAsignarM = new ControllerAsignarGrupo();
            var asigmateria = CtrlAsignarM.ConsultaAsigMateria();
            ddlMateriaGrupo.Items.Add("Seleccionar");
            ddlMateriaGrupo.DataSource = asigmateria;
            ddlMateriaGrupo.DataValueField = "id";
            ddlMateriaGrupo.DataTextField = "id";
            ddlMateriaGrupo.DataBind();
                   
        }

        protected void LlenarGrupo()
        {
            ControllerAsignarGrupo CtrlAsignarG = new ControllerAsignarGrupo();
            List<TblGrupo> grupo = CtrlAsignarG.ConsultaGrupo();
            ddlGrupoGrupo.Items.Add("Seleccionar");
            ddlGrupoGrupo.DataSource = grupo;
            ddlGrupoGrupo.DataValueField = "id";
            ddlGrupoGrupo.DataTextField = "strNombre";
            ddlGrupoGrupo.DataBind();

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            var asigmateria = ddlMateriaGrupo.SelectedValue;
            var grupo = ddlGrupoGrupo.SelectedValue;

            TblAsignacionGrupo asignacionGrupo = new TblAsignacionGrupo();
            asignacionGrupo.idAsignacionMateria = int.Parse(asigmateria);
            asignacionGrupo.idGrupo = int.Parse(grupo);
            ControllerAsignarGrupo ctrlAsigGrupo = new ControllerAsignarGrupo();
            ctrlAsigGrupo.InsertarAsignacionGrupo(asignacionGrupo);
            this.Response.Redirect("./AsignacionProfesor.aspx", true);
        }
    }
}