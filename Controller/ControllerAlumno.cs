﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;

namespace Controller
{
    public class ControllerAlumno
    {
        PaslumBaseDatoDataContext contexto = new PaslumBaseDatoDataContext();
        public bool InsertarAlum(TblAlumno _TBL_Alum)
        {
            bool respuesta = false;
            try
            {
                contexto.TblAlumno.InsertOnSubmit(_TBL_Alum);
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

        public List<TblCarrera> ConsultaCarrera()
        {
            return contexto.TblCarrera.ToList<TblCarrera>();
        }
    }
}



