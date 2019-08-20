using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Drawing;
using MessagingToolkit.QRCode.Codec;
using Controller;
using Modelo;

namespace ProjectPaslum.Profesor
{
    public partial class PruebaQr : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.LlenarCarrera();
                this.LlenarGrupo();
                this.LlenarMateria();
            }

        }

        private void LlenarCarrera()
        {
            ControllerQr CtrlAsignarC = new ControllerQr();
            List<TblCarrera> carrera = CtrlAsignarC.ConsultaCarrera();
            ddlCarrera.Items.Add("Seleccionar");
            ddlCarrera.DataSource = carrera;
            ddlCarrera.DataValueField = "id";
            ddlCarrera.DataTextField = "strNombre";
            ddlCarrera.DataBind();

        }

        private void LlenarGrupo()
        {
            ControllerQr CtrlAsignarG = new ControllerQr();
            List<TblGrupo> grupo = CtrlAsignarG.ConsultaGrupo();
            ddlGrupo.Items.Add("Seleccionar");
            ddlGrupo.DataSource = grupo;
            ddlGrupo.DataValueField = "id";
            ddlGrupo.DataTextField = "strNombre";
            ddlGrupo.DataBind();

        }

        private void LlenarMateria()
        {
            ControllerQr CtrlAsignarM = new ControllerQr();
            List<TblMateria> materia = CtrlAsignarM.ConsultaMateria();
            ddlMateria.Items.Add("Seleccionar");
            ddlMateria.DataSource = materia;
            ddlMateria.DataValueField = "id";
            ddlMateria.DataTextField = "strNombre";
            ddlMateria.DataBind();

        }

        protected void btnGenerar_Click(object sender, EventArgs e)
        {
            var random = new Random();
            var value = random.Next(0, 999999);
            var carrera = ddlCarrera.SelectedValue;
            var grupo = ddlGrupo.SelectedValue;
            var materia = ddlMateria.SelectedValue;
            DateTime fechact = DateTime.Now;

            QRCodeEncoder encoder = new QRCodeEncoder();
            Bitmap img = encoder.Encode(value.ToString());
            System.Drawing.Image QR = (System.Drawing.Image)img;

            using (MemoryStream ms = new MemoryStream())
            {
                QR.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
                byte[] imageBytes = ms.ToArray();
                imgCtrl.Src = "data:image/gif;base64," + Convert.ToBase64String(imageBytes);
                imgCtrl.Height = 300;
                imgCtrl.Width = 300;
            }

            TblQR qr = new TblQR();
            qr.qr = value.ToString();
            qr.fecha = fechact;
            qr.idCarrera = int.Parse(carrera);
            qr.idGrupo = int.Parse(grupo);
            qr.idMateria = int.Parse(materia);

            ControllerQr ctrlQr = new ControllerQr();
            ctrlQr.InsertarQr(qr);

            
        }
    }
}