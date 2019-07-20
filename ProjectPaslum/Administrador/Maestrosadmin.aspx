<%@ Page Language="C#" MasterPageFile="~/Administrador/IndexAdministrador.master" AutoEventWireup="true" CodeBehind="Maestrosadmin.aspx.cs" Inherits="ProjectPaslum.Administrador.Maestrosadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
         .table-title {
            padding-bottom: 15px;
            background: #435d7d;
            color: #fff;
            padding: 16px 30px;
            margin: -20px -25px 10px;
            border-radius: 3px 3px 0 0;
        }
          </style>
    
    <div class="content">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2>Administrar
                                <b>Maestros
                                </b>
                        </h2>
                    </div>
                    <div class="col-sm-6">
                        <a class="btn btn-success" data-toggle="modal" href="#addMaestroModal">
                            <i class="material-icons">
                            </i>
                            <span>Agregar nuevo Maestro
                            </span>
                        </a>
                    </div>
                </div>
            </div>

    </div>
      <!-- Edit Modal HTML -->
    <div class="modal fade" id="addMaestroModal">
        <div class="modal-dialog  modal-lg modal-dialog-centered">
            <div class="modal-content">
               
                    <div class="modal-header">
                        <h4 class="modal-title">Agregar Maestro </h4>
                        <button aria-hidden="true" class="close" data-dismiss="modal" type="button">
                            ×
                        </button>
                    </div>
                
                    <div class="modal-body">
                        <div class="form-group">
                                <div class="col-xs-10">
                          Nombre(s)
                            <asp:TextBox runat="server" id="txtNombreAgregar" class="form-control" required="" type="text" ></asp:TextBox>
                        </div>
                                 </div>
                       
                        <br/>
                        <div class="form-group">
                              <div class="col-xs-6">
                                Apellido Paterno
                            <asp:TextBox  id="txtPaternoAgregar" class="form-control" required="" type="text" runat="server"></asp:TextBox>
                        </div>
                             </div>
                        <div class="form-group">
                               <div class="col-xs-6">
                               Apellido Materno
                            <asp:TextBox runat="server" id="txtMaternoAgregar" class="form-control" required="" type="text" > </asp:TextBox>

                        </div>
                               </div>
                     
                          <br/>
                          <br/>
                        <div class="form-group">
                            <div class="col-xs-3">
                             Edad
                            <asp:TextBox runat="server" id="txtEdadAgregar" class="form-control" required="" type="text" ></asp:TextBox>
                        </div>
                            </div>
                        <div class="form-group">
                            <div class="col-xs-3">
                                Sexo
                            <div class="dropdown">
                                <button runat="server" id="cmbMaestro" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
                                    Seleccione Maestro <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu">
                                  
                                </ul>
                            </div>
                            </div>
                               
                        </div>
                        <div class="form-group">
                             <div class="col-xs-3">
                            <label>Foto: </label>
                            <asp:FileUpload ID="FotoMaestro" runat="server" CssClass="form-control input-sm" />  
                           </div>
                    </div>
                       
                          <!-- Telefonos -->
                        <div class="form-group">
                         <div class="col-xs-3">
                                                <label>Celular: </label>
                                                <asp:TextBox ID="txtTelCelular" runat="server" CssClass="form-control input-sm" >
                                                </asp:TextBox>
                                                  <asp:RegularExpressionValidator ID="validarcelular" runat="server" ControlToValidate="txtTelCelular"
                                                    ErrorMessage="Ingrese solo numeros" ForeColor="Red" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                                               </div>
                         <div class="col-xs-3">
                                                <label>Casa: </label>
                                                <asp:TextBox ID="txtTelCasa" runat="server" CssClass="form-control input-sm" >
                                                </asp:TextBox>
                                                  <asp:RegularExpressionValidator ID="validarcasa" runat="server" ControlToValidate="txtTelCasa"
                                                    ErrorMessage="Ingrese solo numeros" ForeColor="Red" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                                           
                                             </div>
                         <div class="col-xs-3">
                                             <div class="form-group">
                                                <label>Otro: </label>
                                                <asp:TextBox ID="txtTelotro" runat="server" CssClass="form-control input-sm" >
                                                </asp:TextBox>
                                                  <asp:RegularExpressionValidator ID="validaroficina" runat="server" ControlToValidate="txtTelotro"
                                                    ErrorMessage="Ingrese solo numeros" ForeColor="Red" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                                             </div>
                                             </div>

                    </div>
                    <br />
                         
                        <div class="form-group">
                             <div class="col-xs-5">
                                Especialidad
                            <asp:TextBox  id="txtEspecialidadAgregar" class="form-control" required="" type="text" runat="server"></asp:TextBox>
                        </div>
                             </div>
                        <div class="form-group">
                             <div class="col-xs-5">
                                Cedula Profesional
                            <asp:TextBox  id="txtCedulaAgregar" class="form-control" required="" type="text" runat="server"></asp:TextBox>
                        </div>
                  </div>
                          <br />
                          <!-- datos User -->
                         <div class="form-group">
                              <div class="col-xs-6">
                                Correo
                            <asp:TextBox  id="txtCorreoAgregar" class="form-control" required="" type="text" runat="server" ></asp:TextBox>
                               
                        </div>
                        
                            <div class="col-xs-6">
                                Contraseña
                            <asp:TextBox  id="txtContraseña" class="form-control" required="" type="text" runat="server" ></asp:TextBox>
                                </div>
                    </div>
                          <!-- Direccion -->
                              
                                             <div class="form-group">
                                                 <div class="col-xs-6">
                                               Estado:
                                                <asp:TextBox ID="txtDirecEstado" runat="server" CssClass="form-control input-sm" >
                                                </asp:TextBox>
                                             </div> 
                                              </div>
                                             <div class="form-group">
                                                  <div class="col-xs-6">
                                                Municipio: 
                                                <asp:TextBox ID="txtDirecMunicipio" runat="server" CssClass="form-control input-sm" >
                                                </asp:TextBox>
                                            </div>
                                                 </div>
                                          
                                            <div class="form-group">
                                                 <div class="col-xs-5">
                                                Calle: 
                                                <asp:TextBox ID="txtDirecCalle" runat="server" CssClass="form-control input-sm" >
                                                </asp:TextBox>
                                             </div>
                                                   </div>
                                             <div class="form-group">
                                                  <div class="col-xs-5">
                                               Colonia: 
                                                <asp:TextBox ID="txtDirecColonia" runat="server" CssClass="form-control input-sm">
                                                </asp:TextBox>
                                             </div>
                                            </div>


                                            <div class="form-group">
                                                <div class="col-xs-3">
                                                Numero Int:
                                                <asp:TextBox ID="txtDirecInter" runat="server" CssClass="form-control input-sm" >
                                                </asp:TextBox>
                                             </div>
                                              </div>
                                            <div class="form-group">
                                                  <div class="col-xs-3">
                                               Numero Ext: 
                                                <asp:TextBox ID="txtDirecExt" runat="server" CssClass="form-control input-sm">
                                                </asp:TextBox>
                                                </div>   
                                              </div>  
                                            <div class="form-group">
                                                  <div class="col-xs-3">
                                               Codigo Postal: 
                                                <asp:TextBox ID="txtpostal" runat="server" CssClass="form-control input-sm">
                                                </asp:TextBox>
                                                </div>  
                                                   </div>  
                                            <div class="form-group">
                                               <div class="col-xs-5">
                                              Referencias: 
                                                <asp:TextBox ID="TxtReferencia" runat="server" CssClass="form-control input-sm">
                                                </asp:TextBox>
                                                </div>  
                                                 </div>    
                
                  <br /> <br />  <br /> <br />
                         <br /> <br />  <br /> <br />
                         <br /> <br />  <br /> <br />
                         <br /> <br />  <br /> <br />
                        <br /> <br />  
                    <div class="modal-footer">
                         <div class="col-xs-5">
                        <input class="btn btn-default" data-dismiss="modal" type="button" value="Cancel" />
                            <asp:Button id="btnAceptarAgregar" runat="server" class="btn btn-success" type="submit" value="Aceptar" />
                       </div>
                   </div>
            </div>
        </div>
          </div>
</asp:Content>

