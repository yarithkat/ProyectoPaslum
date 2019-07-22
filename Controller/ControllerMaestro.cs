using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;
using System.Linq.Expressions;

namespace Controller
{
    public class ControllerMaestro
    {
        PaslumBaseDatoDataContext contexto = new PaslumBaseDatoDataContext();
        public bool InsertarProfe(TblProfesor _TBL_Profe)
        {
            bool respuesta = false;
            try
            {
                contexto.TblProfesor.InsertOnSubmit(_TBL_Profe);
                contexto.SubmitChanges();
                respuesta = true;

            }
            catch (Exception ex)
            {
                System.Console.WriteLine(ex.ToString());
                respuesta = false;

            }
            return respuesta;

        }
    }
}



