<%@ Page Language="C#" MasterPageFile="~/Administrador/IndexAdministrador.master" AutoEventWireup="true" CodeBehind="Maestrosadmin.aspx.cs" Inherits="ProjectPaslum.Administrador.Maestrosadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
  
    <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link href="css/modales.css" rel="stylesheet" />
    
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-1.10.2.min.js"></script>

    
    <div class="content">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2>Administrar
                                <b>Maestros
                                </b>
                        </h2>
                    </div>
                     <div class="button">
                    <div class="col-sm-6">
                        <a class="btn btn-success" data-toggle="modal" href="#addMaestroModal">
                            <i class="material-icons"> 
                            </i>
                            <asp:Label ID="Label1" runat="server" Text="Agregar nuevo Maestro"></asp:Label>
                        </a>
                    </div>
                         </div>
                </div>
            </div>

    </div>
      <!-- Agregar Modal Maestros-->
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
                            <asp:TextBox runat="server" ID="txtNombreAgregar" class="form-control" required="required" type="text"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="validarNombre" runat="server" ControlToValidate="txtNombreAgregar"
                                    ErrorMessage="Ingrese solo letras" ForeColor="Red" ValidationExpression="[A-Za-z]*$">
                                </asp:RegularExpressionValidator>
                            </div>
                        </div>
                       
                        <br/>
                        <div class="form-group">
                              <div class="col-xs-6">
                                Apellido Paterno
                            <asp:TextBox  id="txtPaternoAgregar" class="form-control" required="required" type="text" runat="server"></asp:TextBox>
                                  <asp:RegularExpressionValidator ID="ValidarApaterno" runat="server" ControlToValidate="txtPaternoAgregar"
                                    ErrorMessage="Ingrese solo letras" ForeColor="Red" ValidationExpression="[A-Za-z]*$">
                                </asp:RegularExpressionValidator>
                        </div>
                             </div>
                        <div class="form-group">
                               <div class="col-xs-6">
                               Apellido Materno
                            <asp:TextBox runat="server" id="txtMaternoAgregar" class="form-control" required="required" type="text" > </asp:TextBox>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMaternoAgregar"
                               ErrorMessage="Ingrese solo letras" ForeColor="Red" ValidationExpression="[A-Za-z]*$">
                             </asp:RegularExpressionValidator>
                        </div>
                               </div>
                     
                        
                        <div class="form-group">
                            <div class="col-xs-3">
                             Edad
                            <asp:TextBox runat="server" id="txtEdadAgregar" class="form-control" required="required" type="text" TextMode="Number"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="validaredad" runat="server" ControlToValidate="txtEdadAgregar"
                         ErrorMessage="Ingrese solo numeros" ForeColor="Red" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                            </div>

                            </div>
                        <div class="form-group">
                            <div class="col-xs-3">
                                Sexo
                            <div class="dropdown" >
                                <asp:DropDownList ID="cmbSexo" runat="server">
                                    <asp:ListItem Selected="True" Value="SELECCIONA"> --SELECCIONA-- </asp:ListItem>
                                     <asp:ListItem Value="HOMBRE"> Hombre </asp:ListItem>
                                    <asp:ListItem Value="MUJER"> Mujer </asp:ListItem>
                                    <asp:ListItem Value="DISTINTO"> Distinto </asp:ListItem>
                                </asp:DropDownList>
                                <ul class="dropdown-menu">
                                </ul>
                            </div>
                        </div>
                        <div class="form-group">
                             <div class="col-xs-4">
                            <label>Foto: </label>
                            <asp:FileUpload ID="FotoMaestro" runat="server" CssClass="form-control input-sm" required="required"/>  
                           </div>
                    </div>


                        <div class="form-group">
                             <div class="col-xs-4">
                                    <br />
                                Especialidad
                            <asp:TextBox  id="txtEspecialidadAgregar" class="form-control" required="required" type="text" runat="server"></asp:TextBox>
                        </div>
                             </div>
                        <div class="form-group">
                             <div class="col-xs-4">
                                    <br />
                                Cedula Profesional
                            <asp:TextBox  id="txtCedulaAgregar" class="form-control" required="required" type="text" runat="server"></asp:TextBox>
                        </div>
                  </div>
                        
                         <!-- Telefonos -->
                        <div class="form-group">
                         <div class="col-xs-3">
                                <br />
                                                <label>Celular: </label>
                                                <asp:TextBox ID="txtTelCelular" runat="server" required="required" CssClass="form-control input-sm">
                                                </asp:TextBox>
                                                  <asp:RegularExpressionValidator ID="validarcelular" runat="server" ControlToValidate="txtTelCelular"
                                                    ErrorMessage="Ingrese solo numeros" ForeColor="Red" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                                               </div>
                              </div>
                        <div class="form-group">
                         <div class="col-xs-3">
                                <br />
                                                <label>Tel. Casa: </label>
                                                <asp:TextBox ID="txtTelCasa" runat="server" CssClass="form-control input-sm" >
                                                </asp:TextBox>
                                                  <asp:RegularExpressionValidator ID="validarcasa" runat="server" ControlToValidate="txtTelCasa"
                                                    ErrorMessage="Ingrese solo numeros" ForeColor="Red" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                                           
                                             </div>
                          </div>
                        <div class="form-group">
                         <div class="col-xs-3">
                                <br />
                                             <div class="form-group">
                                                <label>Otro: </label>
                                                <asp:TextBox ID="txtTelotro" runat="server" CssClass="form-control input-sm" >
                                                </asp:TextBox>
                                                  <asp:RegularExpressionValidator ID="validaroficina" runat="server" ControlToValidate="txtTelotro"
                                                    ErrorMessage="Ingrese solo numeros" ForeColor="Red" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                                             </div>
                                             </div>

                        </div>
                        <div class="col-xs-3">
                            <div class="form-group">
                                <label>Otro: </label>
                                <asp:TextBox ID="txtTelotro" runat="server" CssClass="form-control input-sm">
                                </asp:TextBox>
                                <asp:RegularExpressionValidator ID="validaroficina" runat="server" ControlToValidate="txtTelotro"
                                    ErrorMessage="Ingrese solo numeros" ForeColor="Red" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                    </div>
                         <br />
                          <!-- datos User -->
                         <div class="form-group">
                              <div class="col-xs-6">
                                Correo
                            <asp:TextBox  id="txtCorreoAgregar" class="form-control"  type="text" runat="server" placeholder="Ejemplo@gmail.com" required="required"  TextMode="Email"></asp:TextBox>
                           
                        </div>
                        
                            <div class="col-xs-6">
                                Contraseña
                            <asp:TextBox  id="txtContraseña" class="form-control" placeholder="Contraseña " required="required" type="text" runat="server" TextMode="Password"></asp:TextBox>
                                 
                                </div>
                    </div>
                            <br />
                         
                        <!-- Direccion -->
                          <div class="form-group">
                                   
                        <div class="form-group">
                            
                            <div class="col-xs-6">
                                  <br />
                                Estado:
                                 <asp:TextBox ID="txtDirecEstado" runat="server" CssClass="form-control input-sm" required="required">
                                 </asp:TextBox>
                            </div>
                        </div>
                                   
                        <div class="form-group">
                             
                            <div class="col-xs-6">
                                   <br />
                                Municipio: 
                                <asp:TextBox ID="txtDirecMunicipio" runat="server" CssClass="form-control input-sm" required="required">
                                </asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-5">
                                   <br />
                                Colonia: 
                              <asp:TextBox ID="txtDirecColonia" runat="server" CssClass="form-control input-sm" required="required">
                          </asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-5">
                                   <br />
                                Calle: 
                         <asp:TextBox ID="txtDirecCalle" runat="server" CssClass="form-control input-sm" required="required">
                           </asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-3">
                                   <br />
                                Numero Int:
                            <asp:TextBox ID="txtDirecInter" runat="server" CssClass="form-control input-sm" required="required">
                            </asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-3">
                                   <br />
                                Numero Ext: 
                            <asp:TextBox ID="txtDirecExt" runat="server" CssClass="form-control input-sm" required="required">
                            </asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-3">
                                   <br />
                                Codigo Postal: 
                            <asp:TextBox ID="txtpostal" runat="server" CssClass="form-control input-sm" required="required">
                            </asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-5">
                                   <br />
                                Referencias: 
                            <asp:TextBox ID="TxtReferencia" runat="server" CssClass="form-control input-sm">
                            </asp:TextBox>
                            </div>
                        </div>
                            </div>
                        <br />
                        <br />
                           <br />
                        <br />
                        <br />
                        <br />
                         <br />
                        <br />
                         <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <div class="modal-footer">
                            <div class="modalfooter">
                           
                                <asp:Button ID="btncancel" runat="server" Text="Cancelar" class="btn btn-success" data-dismiss="modal" />
                        
                                <asp:Button ID="btnAceptarAgregar" runat="server" CssClass="btn btn-primary" Text="Aceptar" OnClick="btnAceptarAgregar_Click" />
                            
                        </div>
                            </div>
                    </div>
            </div>
      </div>
          </div>
         
        <%-- Editar o eliminar Grupo --%>   
    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="heading">
            <h4 class="panel-title">
                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse" aria-expanded="false" aria-controls="collapse">Consulta de profesores registrados
                </a>
            </h4>
        </div>
        <div id="collapse" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
            <div class="panel-body">
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" DataSourceID="SqlDataSource1" AllowPaging="True" DataKeyNames="id">
                     <Columns>
                          
                         <asp:CommandField CancelImageUrl="~/images/Iconos/IconCancelar.png" DeleteImageUrl="~/images/Iconos/IconEliminar.png" EditImageUrl="~/images/Iconos/IconEditar.png" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="~/images/Iconos/IconGuardar.png" />
                          
                         <asp:BoundField DataField="strNombre" HeaderText="Nombre" SortExpression="strNombre" />
                         <asp:BoundField DataField="strApellidoP" HeaderText="ApellidoP" SortExpression="strApellidoP" />
                         <asp:BoundField DataField="strApellidoM" HeaderText="ApellidoM" SortExpression="strApellidoM" />
                         <asp:BoundField DataField="strCorreo" HeaderText="Correo" SortExpression="strCorreo" />
                         <asp:BoundField DataField="strCedula" HeaderText="Cedula" SortExpression="strCedula" />
                          
                         <asp:BoundField DataField="strEspecialidad" HeaderText="Especialidad" SortExpression="strEspecialidad" />
                         <asp:BoundField DataField="strcelular" HeaderText="celular" SortExpression="strcelular" />
                         <asp:BoundField DataField="strtelCasa" HeaderText="Casa" SortExpression="strtelCasa" />
                          
                     </Columns>
                   <HeaderStyle BackColor="#ffcc00" ForeColor="White" Font-Size="18px" />
                </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pase_listaConnectionString %>" 
                     SelectCommand="SELECT pro.id ,pro.strNombre, pro.strApellidoP, 
	   pro.strApellidoM, pro.strCorreo, pro.strCedula,
	   pro.strEspecialidad, tel.strcelular, tel.strtelCasa 
FROM TblProfesor as pro
inner join TblTelefono  as tel 
on pro.idTelefono = tel.id;" 
                     UpdateCommand="UPDATE TblProfesor SET strCorreo = @correo, strCedula = @cedula, strEspecialidad = @especialidad WHERE (id = @id)">
                     <UpdateParameters>
                         <asp:Parameter Name="correo" />
                         <asp:Parameter Name="cedula" />
                         <asp:Parameter Name="especialidad" />
                         <asp:Parameter Name="id" />
                     </UpdateParameters>
                 </asp:SqlDataSource>
            </div>
        </div>
      </div>
</asp:Content>

