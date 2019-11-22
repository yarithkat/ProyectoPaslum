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
        PaslumBaseDatoDataContext contexto = new PaslumBaseDatoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.LlenarProfesor();
                this.LlenarMateria();
                this.LlenarCarrera();
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
            try
            {
                var gfg = (from am in contexto.TblAsignacionMateria
                           join m in contexto.TblMateria
                           on am.idMateria equals m.id
                           join p in contexto.TblProfesor 
                           on am.idProfesor equals p.id
                           select m).ToList();

                ddlMateriaGrupo.DataValueField = "id";
                ddlMateriaGrupo.DataTextField = "strNombre";
                ddlMateriaGrupo.DataSource = gfg;
                ddlMateriaGrupo.DataBind();
                ddlMateriaGrupo.Items.Insert(0, new ListItem("Seleccionar", "0"));
            }
            catch (Exception)
            {

                throw;
            }

        }

        protected void LlenarCarrera()
        {
            ControllerAlumno CtrlAsignarC = new ControllerAlumno();
            List<TblCarrera> carrera = CtrlAsignarC.ConsultaCarrera();
            ddlCarrera.Items.Add("Seleccionar");
            ddlCarrera.DataSource = carrera;
            ddlCarrera.DataValueField = "id";
            ddlCarrera.DataTextField = "strNombre";
            ddlCarrera.DataBind();

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

        protected void ddlGrupoGrupo_SelectedIndexChanged(object sender, EventArgs e)
        {
            var grupo = (from grup in contexto.TblGrupo
                         where grup.idCarrera == Convert.ToInt32(ddlCarrera.SelectedValue) select grup).ToList();
            ddlGrupoGrupo.Items.Add("Seleccionar");
            ddlGrupoGrupo.DataSource = grupo;
            ddlGrupoGrupo.DataValueField = "id";
            ddlGrupoGrupo.DataTextField = "strNombre";
            ddlGrupoGrupo.DataBind();

        }
    }
}