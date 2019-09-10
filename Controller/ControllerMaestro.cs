﻿using System;
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
        public void Editar(TblProfesor profe, TblTelefono tel)
        {
            TblProfesor profeBd = contexto.TblProfesor
                .Where(t => t.id == profe.id).FirstOrDefault();
            if (profeBd != null)
            {
                profeBd.strCorreo = profe.strCorreo;
                contexto.SubmitChanges();
            }

            TblTelefono telBd = contexto.TblTelefono
                .Where(t => t.id == tel.id).FirstOrDefault();
            if (telBd != null)
            {
                telBd.strcelular = tel.strcelular;
                telBd.strtelCasa = tel.strtelCasa;
                telBd.strotro = tel.strotro;
                contexto.SubmitChanges();
            }
        }
    }
}



