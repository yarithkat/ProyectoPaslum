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
    public class telefonoController : ApiController
    {
        public struct TelTelefono
        {
            public int ID { get; set; }
            public string strCelular { get; set; }
            public string strTelCasa { get; set; }
            public string strOtro { get; set; }
        }

        public TelTelefono Get(int id)
        {
            using (var dcTemp = new PaslumBaseDatoDataContext())
            {
                TblTelefono TelTelefono =
                    dcTemp.GetTable<TblTelefono>().Where(c => c.id == id).FirstOrDefault();
                if (TelTelefono != null)
                {
                    var objTemp = new TelTelefono();
                    objTemp.ID = TelTelefono.id;
                    objTemp.strCelular = TelTelefono.strcelular;
                    objTemp.strTelCasa = TelTelefono.strtelCasa;
                    objTemp.strOtro = TelTelefono.strotro;
                    return objTemp;
                }
                else
                {
                    return new TelTelefono();
                }
            }
        }

        // POST: api/Sala
        public bool Post([FromBody]TelTelefono _TelTelefono)
        {
            try
            {
                using (var dcTemp = new PaslumBaseDatoDataContext())
                {
                    var objTemp = new TblTelefono();
                    objTemp.strcelular = _TelTelefono.strCelular;
                    objTemp.strtelCasa = _TelTelefono.strTelCasa;
                    objTemp.strotro = _TelTelefono.strOtro;
                    dcTemp.GetTable<TblTelefono>().InsertOnSubmit(objTemp);
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
        public bool Put(int id, [FromBody]TelTelefono _TelTelefono)
        {
            try
            {
                using (var dcTemp = new PaslumBaseDatoDataContext())
                {
                    var result = dcTemp.GetTable<TblTelefono>().Where(c => c.id == id).FirstOrDefault();
                    if (result != null)
                    {
                        result.strcelular = _TelTelefono.strCelular;
                        result.strtelCasa = _TelTelefono.strTelCasa;
                        result.strotro = _TelTelefono.strOtro;
                        dcTemp.SubmitChanges();
                        //ediater
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
