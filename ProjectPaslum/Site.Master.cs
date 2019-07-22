using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Modelo;
using Controller;

namespace ProjectPaslum
{
    public partial class SiteMaster : MasterPage
    {
        private PaslumBaseDatoDataContext contexto = new PaslumBaseDatoDataContext();

        private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        private string _antiXsrfTokenValue;

        protected void Page_Init(object sender, EventArgs e)
        {
            // El código siguiente ayuda a proteger frente a ataques XSRF
            var requestCookie = Request.Cookies[AntiXsrfTokenKey];
            Guid requestCookieGuidValue;
            if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
            {
                // Utilizar el token Anti-XSRF de la cookie
                _antiXsrfTokenValue = requestCookie.Value;
                Page.ViewStateUserKey = _antiXsrfTokenValue;
            }
            else
            {
                // Generar un nuevo token Anti-XSRF y guardarlo en la cookie
                _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
                Page.ViewStateUserKey = _antiXsrfTokenValue;

                var responseCookie = new HttpCookie(AntiXsrfTokenKey)
                {
                    HttpOnly = true,
                    Value = _antiXsrfTokenValue
                };
                if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
                {
                    responseCookie.Secure = true;
                }
                Response.Cookies.Set(responseCookie);
            }

            Page.PreLoad += master_Page_PreLoad;
        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Establecer token Anti-XSRF
                ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
                ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
            }
            else
            {
                // Validar el token Anti-XSRF
                if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                    || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
                {
                    throw new InvalidOperationException("Error de validación del token Anti-XSRF.");
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            ValidarLogin(GetDatosVista());
        }

        protected TblUser GetDatosVista()
        {
            String user = txtUsuario.Text;
            String pass = txtContra.Text;

            TblUser usuario = new TblUser();
            usuario.strusuario = user;
            usuario.strpass = pass;
            return usuario;

        }

        protected void ValidarLogin(TblUser usuario)
        {
            if (this.txtUsuario.Text.Equals("administrador") && this.txtContra.Text.Equals("1234"))
            {
                Session["user"] = txtUsuario.Text;
                this.Response.Redirect("./Administrador/PrincipalAdministrador.aspx", true);
            }
            ControllerAutenticacion ctrlAutenticacion = new ControllerAutenticacion();
            TblUser UsuarioLoggeado = ctrlAutenticacion.ValidarLogin(usuario);
            //var padre = (from pa in contexto.TblProfesor where pa.idUser == UsuarioLoggeado.id select pa).FirstOrDefault();
            if (UsuarioLoggeado != null)
            {
                //Session["id"] = padre.id;
                if (UsuarioLoggeado.strtipoUsuario == "PROFESOR")
                {
                    Response.Redirect("./About.aspx", true);
                }
                else if (UsuarioLoggeado.strtipoUsuario == "ALUMNO")
                {
                    Response.Redirect("./Contact.aspx", true);
                }
            }
            else
            {
                //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Usuario o contraseña incorrecta');</script>");
                Response.Redirect("IndexPaslum.aspx", true);
                this.Response.Write("<script lenguage='JavaScript'>windows.alert('Fallo')</script>");
            }
        }
    }

}