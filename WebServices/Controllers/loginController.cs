using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Modelo;

namespace WebServices.Controllers
{
    public class loginController : ApiController
    {
        public struct Usuario
        {
            public int ID { get; set; }
            public string usuarios { get; set; }
            public string Pass { get; set; }
            public string tipoUsuario { get; set; }
        }

        public Usuario Get(string _usuario, string _pass)
        {
            using (var dcTemp = new PaslumBaseDatoDataContext())
            {
                TblUser UsuUsuario =
                    dcTemp.GetTable<TblUser>().Where(c => 
                    (c.strusuario == _usuario)&&
                    (c.strpass==_pass)
                    ).FirstOrDefault();
                if (UsuUsuario != null)
                {
                    var objTemp = new Usuario();
                    objTemp.ID = UsuUsuario.id;
                    objTemp.usuarios = UsuUsuario.strusuario;
                    objTemp.Pass = UsuUsuario.strpass;
                  
                    return objTemp;
                }
                else
                {
                    return new Usuario();
                }
            }
        }
    }
}
