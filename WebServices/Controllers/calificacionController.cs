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
    public class calificacionController : ApiController
    {
        public struct CalCalificacion
        {
            public int ID { get; set; }
            public decimal valor { get; set; }
            public int idAlumno { get; set; }
            public int intporcent { get; set; }
            public string strnombre { get; set; }
            public string strdescripcion { get; set; }
        }

        public CalCalificacion Get(int id)
        {
            using (var dcTemp = new PaslumBaseDatoDataContext())
            {
                TblCalificacion CalCalificacion =
                    dcTemp.GetTable<TblCalificacion>().Where(c => c.idAlumno == id).FirstOrDefault();
                if (CalCalificacion != null)
                {
                    var objTemp = new CalCalificacion();
                    objTemp.ID = CalCalificacion.id;
                    objTemp.valor = CalCalificacion.valCalificacion.Value;
                    objTemp.idAlumno = CalCalificacion.idAlumno.Value;
                    objTemp.intporcent = CalCalificacion.TblCatalogoParcial.intPorcentaje.Value;
                    objTemp.strnombre = CalCalificacion.TblCatalogoParcial.strNombre;
                    objTemp.strdescripcion = CalCalificacion.TblCatalogoParcial.strDescripcion;
                    return objTemp;
                }
                else
                {
                    return new CalCalificacion();
                }
            }
        }
    }
}
