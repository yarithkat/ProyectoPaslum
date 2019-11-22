using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;
using Modelo;

namespace WebServices.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class direccionController : ApiController
    {
        public struct DirDireccion
        {
            public int ID { get; set; }
            public string strCalle { get; set; }
            public string strColonia { get; set; }
            public int intCp { get; set; }
            public string strMun { get; set; }
            public string strEst { get; set; }
            public string strNoExt { get; set; }
            public string strNoInt { get; set; }
            public string strRef { get; set; }
        }
      
        // GET: api/Sala/5
        public DirDireccion Get(int id)
        {
            using (var dcTemp = new PaslumBaseDatoDataContext())
            {
                TblDireccion DirDireccion =
                    dcTemp.GetTable<TblDireccion>().Where(c => c.id == id).FirstOrDefault();
                if (DirDireccion != null)
                {
                    var objTemp = new DirDireccion();
                    objTemp.ID = DirDireccion.id;
                    objTemp.strCalle = DirDireccion.strcalle;
                    objTemp.strColonia = DirDireccion.strcolonia;
                    objTemp.intCp = DirDireccion.intcodpost.Value;
                    objTemp.strMun = DirDireccion.strmunicipio;
                    objTemp.strEst = DirDireccion.strestado;
                    objTemp.strNoExt = DirDireccion.strnumExt;
                    objTemp.strNoInt = DirDireccion.strnumInt;
                    objTemp.strRef = DirDireccion.strreferencias;
                    return objTemp;
                }
                else
                {
                    return new DirDireccion();
                }
            }
        }

        // POST: api/Sala
        public bool Post([FromBody]DirDireccion _DirDireccion)
        {
            try
            {
                using (var dcTemp = new PaslumBaseDatoDataContext())
                {
                    var objTemp = new TblDireccion();
                    objTemp.strcalle = _DirDireccion.strCalle;
                    objTemp.strcolonia = _DirDireccion.strColonia;
                    objTemp.strestado = _DirDireccion.strEst;
                    objTemp.strmunicipio = _DirDireccion.strMun;
                    objTemp.intcodpost = _DirDireccion.intCp;
                    objTemp.strnumExt = _DirDireccion.strNoExt;
                    objTemp.strnumInt = _DirDireccion.strNoInt;
                    objTemp.strreferencias = _DirDireccion.strRef;
                    dcTemp.GetTable<TblDireccion>().InsertOnSubmit(objTemp);
                    dcTemp.SubmitChanges();
                    return true;
                }
            }
            catch (Exception _e)
            {
                return false;
            }
        }

        // PUT: api/Sala/5
        public bool Put(int id, [FromBody]DirDireccion _DirDireccion)
        {
            try
            {
                using (var dcTemp = new PaslumBaseDatoDataContext())
                {
                    var result = dcTemp.GetTable<TblDireccion>().Where(c => c.id == id).FirstOrDefault();
                    if (result != null)
                    {
                        result.strcalle = _DirDireccion.strCalle;
                        result.strcolonia = _DirDireccion.strColonia;
                        result.intcodpost = _DirDireccion.intCp;
                        result.strestado = _DirDireccion.strEst;
                        result.strmunicipio = _DirDireccion.strMun;
                        result.strnumExt = _DirDireccion.strNoExt;
                        result.strnumInt = _DirDireccion.strNoInt;
                        result.strreferencias = _DirDireccion.strRef;
                        dcTemp.SubmitChanges();
                    }
                    else
                    {
                        return false;
                    }
                }
                return true;
            }
            catch (Exception _e)
            {
                //Informar error por correo.
                return false;
            }
        }
    }
}
