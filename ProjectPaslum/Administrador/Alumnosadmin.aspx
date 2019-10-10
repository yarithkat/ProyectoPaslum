<%@ Page Language="C#" MasterPageFile="~/Administrador/IndexAdministrador.master" AutoEventWireup="true" CodeBehind="Alumnosadmin.aspx.cs" Inherits="ProjectPaslum.Administrador.Alumnosadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    
    <link href="css/modales.css" rel="stylesheet" />
    
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
         <style>
    #mdialTamanio{
      width: 180% !important;
    }
  </style>
    <div class="content">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2>Administrar
                                <b>Alumnos </b>
                        </h2>
                    </div>
                    <div class="button">
                    <div class="col-sm-6">
                        <a class="btn btn-success" data-toggle="modal" href="#addAlumnoModal">
                            <i class="icon-add"> </i>
                              <asp:Label ID="Label1" runat="server" Text="Agregar nuevo Alumno"></asp:Label>
                        </a> 
                    </div>
                   </div>
                </div>
            </div>

    </div>
      <!-- Agregar Modal alumno-->   
    <div class="modal fade" tabindex="-1" role="dialog" id="addAlumnoModal">
       <div class="left">
             <div class="modal-dialog"  id="mdialTamanio">
        <div class="modal-content">
               
                    <div class="modal-header">
                        <h4 class="modal-title">REGISTRAR ALUMNO</h4>
                        <button aria-hidden="true" class="close" data-dismiss="modal" type="button">
                                ×
                            </button>
                   
                         </div>
                
                    <div class="modal-body" style = "position:relative; overflow: scroll;">
                        <div class="form-group">
                                <div class="col-xs-10">
                                       <br />
                          Nombre(s)
                            <asp:TextBox runat="server" id="txtNombreAgregar" class="form-control" required="required" type="text" ></asp:TextBox>
                        </div>
                                 </div>
                       
                        <br/>
                        <div class="form-group">
                              <div class="col-xs-5">
                                     <br />
                                Apellido Paterno
                            <asp:TextBox  id="txtPaternoAgregar" class="form-control" required="required" type="text" runat="server"></asp:TextBox>
                        </div>
                             </div>
                        <div class="form-group">
                               <div class="col-xs-5">
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
                                    <asp:DropDownList ID="cmbSexo" runat="server" required="required" CssClass=" form-control">
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
                         <br/>
                        <div class="form-group">
                            <div class="col-xs-6">
                                 <br />
                                Carrera
                                <asp:DropDownList ID="ddlCarrera" runat="server" AppendDataBoundItems="True"  Height="100%" CssClass=" form-control"></asp:DropDownList>      
                              </div>
                            </div>
                        <div class="form-group">
                            <div class="col-xs-6">
                                 <br />
                                Cuatri
                                <asp:DropDownList ID="ddlCuatri" runat="server" AppendDataBoundItems="True"  Height="100%" CssClass=" form-control"></asp:DropDownList>      
                              </div>
                            </div>
                          <br/> 
                         <br/>
                          <!-- Telefonos -->
                           <div class="form-group">
                               <br/>
                         <div class="col-xs-3">
                              
                                                <label>Celular: </label>
                                                <asp:TextBox ID="txtTelCelular" runat="server" required="required" CssClass="form-control input-sm" TextMode="Phone">
                                                </asp:TextBox>
                                                  <asp:RegularExpressionValidator ID="validarcelular" runat="server" ControlToValidate="txtTelCelular"
                                                    ErrorMessage="Ingrese solo numeros" ForeColor="Red" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                                               </div>
                              </div>
                           <div class="form-group">
                               <br/>
                         <div class="col-xs-3">
                             
                                                <label>Casa: </label>
                                                <asp:TextBox ID="txtTelCasa" runat="server" CssClass="form-control input-sm" TextMode="Phone">
                                                </asp:TextBox>
                                                  <asp:RegularExpressionValidator ID="validarcasa" runat="server" ControlToValidate="txtTelCasa"
                                                    ErrorMessage="Ingrese solo numeros" ForeColor="Red" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                                           
                                             </div>
                          </div>
                           <div class="form-group">
                               <br/>
                         <div class="col-xs-3">
                                        
                                                <label>Otro: </label>
                                                <asp:TextBox ID="txtTelotro" runat="server" CssClass="form-control input-sm" TextMode="Phone">
                                                </asp:TextBox>
                                                  <asp:RegularExpressionValidator ID="validaroficina" runat="server" ControlToValidate="txtTelotro"
                                                    ErrorMessage="Ingrese solo numeros" ForeColor="Red" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                                        
                                             </div>

                    </div>
                      
                          <!-- datos User -->
                         <div class="form-group">
                              <div class="col-xs-10">
                                     <br />
                                Correo
                               
                            <asp:TextBox  id="txtCorreoAgregar" class="form-control" required="required" type="text" placeholder="Ejemplo@gmail.com" runat="server" TextMode="Email"></asp:TextBox>
                               
                        </div>
                        
                          
                    </div>
                         <br/>
                          <!-- Direccion -->
                         <div class="form-group">
                                                 <div class="col-xs-6">
                                                     <br />
                                               Estado:
                                                <asp:TextBox ID="txtDirecEstado" runat="server" required="required" CssClass="form-control input-sm" >
                                                </asp:TextBox>
                                             </div> 
                                              </div>
                         <div class="form-group">
                        <div class="col-xs-6">
                                <br />
                                                Municipio: 
                                                <asp:TextBox ID="txtDirecMunicipio" runat="server" required="required" CssClass="form-control input-sm" >
                                                </asp:TextBox>
                                            </div>
                                                 </div>
                           <br/>
                         <div class="form-group">
                         <div class="col-xs-6">
                               <br />
                                               Colonia: 
                                                <asp:TextBox ID="txtDirecColonia" runat="server" required="required" CssClass="form-control input-sm">
                                                </asp:TextBox>
                                             </div>
                               </div>
                         <div class="form-group">
                                                 <div class="col-xs-6">
                                                     <br />
                                                Calle: 
                                                <asp:TextBox ID="txtDirecCalle" runat="server" required="required" CssClass="form-control input-sm" >
                                                </asp:TextBox>
                                             </div>
                                                   </div>
                         <br/>
                         <br/>
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
                                               <div class="col-xs-6">
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
                    </div>
        
                    <div class="modal-footer">
                            <div class="modalfooter">
                          
                                <asp:Button ID="btncancel" runat="server" Text="Cancelar" class="btn btn-primary" data-dismiss="modal" />
                                <asp:Button ID="btnAceptarAgregar" runat="server" CssClass="btn btn-success" Text="Aceptar" OnClick="btnAceptarAgregar_Click" />
                            </div>
                      
                            </div>
            </div>
                    </div>
        </div>
     
           </div>     
    
    <%-- Editar o eliminar Carrera --%>   
    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="heading">
            <h4 class="panel-title">
                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse" aria-expanded="false" aria-controls="collapse">Consulta de Alumnos Registrados
                </a>
            </h4>
        </div>
        <div id="collapse" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
            <div class="panel-body">
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" DataKeyNames="id">
                     <Columns>
                       
                         <asp:BoundField DataField="id" HeaderText="Matricula" SortExpression="id" />
                         <asp:BoundField DataField="strNombre" HeaderText="Nombre" SortExpression="strNombre" />
                         <asp:BoundField DataField="strApellidoP" HeaderText="Apellido P." SortExpression="strApellidoP" />
                         <asp:BoundField DataField="strApellidoM" HeaderText="Apellido M." SortExpression="strApellidoM" />
                         <asp:BoundField DataField="strusuario" HeaderText="Usuario" SortExpression="strusuario" />
                         <asp:BoundField DataField="strpass" HeaderText="Contraseña" SortExpression="strpass" />
                         <asp:BoundField DataField="strNombre1" HeaderText="Carrera" SortExpression="strNombre1" />
                         <asp:BoundField DataField="strArea" HeaderText="Area" SortExpression="strArea" />
                       
                          
                     </Columns>
                     <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" HorizontalAlign="Center"/>
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                   
                </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pase_listaConnectionString %>" 
                     SelectCommand="select al.id, al.strNombre, al.strApellidoP, al.strApellidoM, 
		us.strusuario, us.strpass,
		car.strNombre, car.strArea		
from TblAlumno as al
inner join TblUser as us
on al.idUser = us.id
inner join TblCarrera as car
on al.idCarrera = car.id
order by al.id desc;"></asp:SqlDataSource>
                 </div>
            </div>
        </div>
</asp:Content>

