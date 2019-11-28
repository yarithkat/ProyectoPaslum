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
    public class alumnoController : ApiController
    {
        public struct Alumno
        {
            public int ID { get; set; }
            public string nombre { get; set; }
            public string apellidoP { get; set; }
            public string apellidoM { get; set; }
            public int edad { get; set; }
            public string sexo { get; set; }
            public string correo { get; set; }
            public string strCarrera { get; set; }
            public int intIdTelefono { get; set; }
            public string strTelefonoCelular { get; set; }
            public string strTelefonoCasa { get; set; }
            public string strOtro { get; set; }
            public int intIdDireccion { get; set; }
            public string strDireccionCalle { get; set; }
            public string strDireccionColonia { get; set; }
            public int intDireccionCP { get; set; }
            public string strDireccionMun { get; set; }
            public string strDireccionEst { get; set; }
            public string strDireccionNoEx { get; set; }
            public string strDireccionNoInt { get; set; }
            public string strCuatri { get; set; }
            public string strGrupo { get; set; }

        }

        public Alumno Get(int _iduser)
        {
            using (var dcTemp = new PaslumBaseDatoDataContext())
            {
                TblAlumno AluAlumno =
                    dcTemp.GetTable<TblAlumno>().Where(c => c.idUser == _iduser).FirstOrDefault();
                if (AluAlumno != null)
                {
                    var objTemp = new Alumno();
                    objTemp.ID = AluAlumno.id;
                    objTemp.nombre = AluAlumno.strNombre;
                    objTemp.apellidoP = AluAlumno.strApellidoP;
                    objTemp.apellidoM = AluAlumno.strApellidoM;
                    objTemp.edad = AluAlumno.intEdad.Value;
                    objTemp.sexo = AluAlumno.strSexo;
                    objTemp.correo = AluAlumno.strCorreo;
                    objTemp.intIdDireccion = AluAlumno.idDireccion.Value;
                    objTemp.strDireccionCalle = AluAlumno.TblDireccion.strcalle;
                    objTemp.strDireccionColonia = AluAlumno.TblDireccion.strcolonia;
                    objTemp.intDireccionCP = AluAlumno.TblDireccion.intcodpost.Value;
                    objTemp.strDireccionMun = AluAlumno.TblDireccion.strmunicipio;
                    objTemp.strDireccionEst = AluAlumno.TblDireccion.strestado;
                    objTemp.strDireccionNoEx = AluAlumno.TblDireccion.strnumExt;
                    objTemp.strDireccionNoInt = AluAlumno.TblDireccion.strnumInt;
                    objTemp.strCarrera = AluAlumno.TblCarrera.strNombre;
                    objTemp.strCuatri = AluAlumno.TblCuatri.strNombre;
                    objTemp.strGrupo = AluAlumno.TblGrupo.strNombre;
                    objTemp.intIdTelefono = AluAlumno.idTelefono.Value;
                    objTemp.strTelefonoCasa = AluAlumno.TblTelefono.strtelCasa;
                    objTemp.strTelefonoCelular = AluAlumno.TblTelefono.strcelular;
                    objTemp.strOtro = AluAlumno.TblTelefono.strotro;
                    return objTemp;
                }
                else
                {
                    return new Alumno();
                }
            }
        }

        public bool Put(int id, [FromBody]Alumno _Alumno)
        {
            try
            {
                using (var dcTemp = new PaslumBaseDatoDataContext())
                {
                    var result = dcTemp.GetTable<TblAlumno>().Where(c => c.id == id).FirstOrDefault();
                    if (result != null)
                    {
                        result.strCorreo = _Alumno.correo;
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
    