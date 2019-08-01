<%@ Page Language="C#" MasterPageFile="~/Administrador/IndexAdministrador.master" AutoEventWireup="true" CodeBehind="Alumnosadmin.aspx.cs" Inherits="ProjectPaslum.Administrador.Alumnosadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
  

    <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link href="css/modales.css" rel="stylesheet" />
    
    <div class="content">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2>Administrar
                                <b>Alumnos
                                </b>
                        </h2>
                    </div>
                    <div class="button">
                    <div class="col-sm-6">
                        <a class="btn btn-success" data-toggle="modal" href="#addAlumnoModal">
                            <i class="material-icons"> 
                            </i>
                              <asp:Label ID="Label1" runat="server" Text="Agregar nuevo Alumno"></asp:Label>
                        </a> 
                    </div>
                   </div>
                </div>
            </div>

    </div>
      <!-- Agregar Modal alumno-->
    <div class="modal fade" id="addAlumnoModal">
        <div class="modal-dialog  modal-lg modal-dialog-centered">
            <div class="modal-content">
               
                    <div class="modal-header">
                        <h4 class="modal-title">Agregar Alumno</h4>
                        <button aria-hidden="true" class="close" data-dismiss="modal" type="button">
                                ×
                            </button>
                   
                         </div>
                
                    <div class="modal-body">
                        <div class="form-group">
                                <div class="col-xs-10">
                                       <br />
                          Nombre(s)
                            <asp:TextBox runat="server" id="txtNombreAgregar" class="form-control" required="required" type="text" ></asp:TextBox>
                        </div>
                                 </div>
                       
                        <br/>
                        <div class="form-group">
                              <div class="col-xs-6">
                                     <br />
                                Apellido Paterno
                            <asp:TextBox  id="txtPaternoAgregar" class="form-control" required="required" type="text" runat="server"></asp:TextBox>
                        </div>
                             </div>
                        <div class="form-group">
                               <div class="col-xs-6">
                                      <br />
                               Apellido Materno
                            <asp:TextBox runat="server" id="txtMaternoAgregar" class="form-control" required="required" type="text" > </asp:TextBox>

                        </div>
                               </div>
                     
                          <br/>
                          <br/>
                        <div class="form-group">
                            <div class="col-xs-3">
                                   <br />
                             Edad
                            <asp:TextBox runat="server" id="txtEdadAgregar" class="form-control" required="required" type="text" TextMode="Number"></asp:TextBox>
                        </div>
                            </div>
                        <div class="form-group">
                            <div class="col-xs-3">
                                   <br />
                                Sexo
                            <div class="dropdown">
                                       <asp:DropDownList ID="cmbSexo" runat="server" required="required">
                                    <asp:ListItem Selected="True" Value="SELECCIONA"> --SELECCIONA-- </asp:ListItem>
                                     <asp:ListItem Value="HOMBRE"> Hombre </asp:ListItem>
                                    <asp:ListItem Value="MUJER"> Mujer </asp:ListItem>
                                    <asp:ListItem Value="DISTINTO"> Distinto </asp:ListItem>
                                </asp:DropDownList>
                                <ul class="dropdown-menu">
                                  
                                </ul>
                            </div>
                            </div>
                               
                        </div>
                        <div class="form-group">
                             <div class="col-xs-3">
                                    <br />
                            <label>Foto: </label>
                            <asp:FileUpload ID="FotoAlumno" runat="server" required="required" CssClass="form-control input-sm" />  
                           </div>
                    </div>
                        <div class="form-group">
                             <div class="col-xs-3">
                                 <br />
                                Matricula
                            <asp:TextBox  id="txtMatriculaAgregar" class="form-control" required="required" type="text" runat="server"></asp:TextBox>
                        </div>
                             </div>
                          <!-- Telefonos -->
                        <div class="form-group">
                         <div class="col-xs-3">
                                <br />
                                                <label>Celular: </label>
                                                <asp:TextBox ID="txtTelCelular" runat="server" required="required" CssClass="form-control input-sm" TextMode="Phone">
                                                </asp:TextBox>
                                                  <asp:RegularExpressionValidator ID="validarcelular" runat="server" ControlToValidate="txtTelCelular"
                                                    ErrorMessage="Ingrese solo numeros" ForeColor="Red" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                                               </div>
                         <div class="col-xs-3">
                             <br />
                                                <label>Casa: </label>
                                                <asp:TextBox ID="txtTelCasa" runat="server" CssClass="form-control input-sm" TextMode="Phone">
                                                </asp:TextBox>
                                                  <asp:RegularExpressionValidator ID="validarcasa" runat="server" ControlToValidate="txtTelCasa"
                                                    ErrorMessage="Ingrese solo numeros" ForeColor="Red" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                                           
                                             </div>
                         <div class="col-xs-3">
                                           <br /> 
                                                <label>Otro: </label>
                                                <asp:TextBox ID="txtTelotro" runat="server" CssClass="form-control input-sm" TextMode="Phone">
                                                </asp:TextBox>
                                                  <asp:RegularExpressionValidator ID="validaroficina" runat="server" ControlToValidate="txtTelotro"
                                                    ErrorMessage="Ingrese solo numeros" ForeColor="Red" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                                        
                                             </div>

                    </div>
                  
                          <!-- datos User -->
                         <div class="form-group">
                              <div class="col-xs-6">
                                     <br />
                                Correo
                               
                            <asp:TextBox  id="txtCorreoAgregar" class="form-control" required="required" type="text" placeholder="Ejemplo@gmail.com" runat="server" TextMode="Email"></asp:TextBox>
                               
                        </div>
                        
                            <div class="col-xs-6">
                                <br />
                                Contraseña
                            <asp:TextBox  id="txtContraseña" class="form-control" required="required" type="text" placeholder="Contraseña" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                    </div>
                          <!-- Direccion -->
                         <div class="form-group">
                                                 <div class="col-xs-3">
                                                     <br />
                                               Estado:
                                                <asp:TextBox ID="txtDirecEstado" runat="server" required="required" CssClass="form-control input-sm" >
                                                </asp:TextBox>
                                             </div> 
                                              </div>
                         <div class="form-group">
                        <div class="col-xs-3">
                                <br />
                                                Municipio: 
                                                <asp:TextBox ID="txtDirecMunicipio" runat="server" required="required" CssClass="form-control input-sm" >
                                                </asp:TextBox>
                                            </div>
                                                 </div>
                         <div class="col-xs-3">
                               <br />
                                               Colonia: 
                                                <asp:TextBox ID="txtDirecColonia" runat="server" required="required" CssClass="form-control input-sm">
                                                </asp:TextBox>
                                             </div>
                         <div class="form-group">
                                                 <div class="col-xs-3">
                                                     <br />
                                                Calle: 
                                                <asp:TextBox ID="txtDirecCalle" runat="server" required="required" CssClass="form-control input-sm" >
                                                </asp:TextBox>
                                             </div>
                                                   </div>
                         <div class="form-group">
                                                <div class="col-xs-2">
                                                    <br />
                                                Numero Int:
                                                <asp:TextBox ID="txtDirecInter" runat="server" required="required" CssClass="form-control input-sm" >
                                                </asp:TextBox>
                                             </div>
                                              </div>
                         <div class="form-group">
                                                  <div class="col-xs-2">
                                                      <br />
                                               Numero Ext: 
                                                <asp:TextBox ID="txtDirecExt" runat="server" required="required" CssClass="form-control input-sm">
                                                </asp:TextBox>
                                                </div>   
                                              </div>  
                         <div class="form-group">
                                                  <div class="col-xs-3">
                                                      <br />
                                               Codigo Postal: 
                                                <asp:TextBox ID="txtpostal" runat="server" required="required" CssClass="form-control input-sm">
                                                </asp:TextBox>
                                                </div>  
                                                   </div>  
                         <div class="form-group">
                                               <div class="col-xs-3">
                                                   <br />
                                              Referencias: 
                                                <asp:TextBox ID="TxtReferencia" runat="server" CssClass="form-control input-sm">
                                                </asp:TextBox>
                                                </div>  
                                                 </div>    
                 
                  <br /> <br />  <br /> <br />
                         <br /> <br />  <br /> <br />
                          <br /> <br />  <br /> <br/>
                         <br /> <br />  <br /> <br />
                         <br /> <br />  <br /> <br />
                        <br /> <br />  
                    <div class="modal-footer">
                            <div class="modalfooter">
                            <div class="col-xs-3">
                                <asp:Button ID="btncancel" runat="server" Text="Cancelar" class="btn btn-primary" data-dismiss="modal" />
                            </div>
                            <div class="col-xs-3">
                                <asp:Button ID="btnAceptarAgregar" runat="server" CssClass="btn btn-block btn-sm btn-success" Text="Aceptar" />
                            </div>
                        </div>
                            </div>
            </div>
        </div>
          </div>
                  </div>
</asp:Content>

