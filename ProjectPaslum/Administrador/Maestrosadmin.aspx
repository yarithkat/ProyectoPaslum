<%@ Page Language="C#" MasterPageFile="~/Administrador/IndexAdministrador.master" AutoEventWireup="true" CodeBehind="Maestrosadmin.aspx.cs" Inherits="ProjectPaslum.Administrador.Maestrosadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link href="css/modales.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
       <style>
    #mdialTamanio{
      width: 200% !important;
    }
  </style>
    <script type="text/javascript">
        function Aviso() {
            confirm("¿Decea Agregar el Nuevo Registro?");
        }
    </script>
    <div class="content">
        <div class="table-title">
            <div class="row">
                <div class="col-sm-6">
                    <h2>Administrar
        <b>Maestros</b>
                    </h2>
                </div>
                <div class="button">
                    <div class="col-sm-6">
                        <a class="btn btn-success" data-toggle="modal" href="#addMaestroModal">
                            <i class="icon-add"> </i>
                            <asp:Label ID="Label1" runat="server" Text="Agregar nuevo Maestro"></asp:Label>
                        </a>
                    </div>
                </div>&nbsp;&nbsp;
                  </div> 
           </div>          
   </div>
    
       <!-- Agregar Modal Maestros-->
       <div class="modal fade" tabindex="-1" role="dialog" id="addMaestroModal">
       <div class="left">
             <div class="modal-dialog"  id="mdialTamanio">
        <div class="modal-content">

            <div class="modal-header">
                <h4 class="modal-title">REGISTRAR MAESTRO</h4>
                <button aria-hidden="true" class="close" data-dismiss="modal" type="button">
                    ×
                </button>
            </div>

            <div class="modal-body" style = "position:relative; overflow: scroll; height: 550px;">
                <div class="form-group">
                    <div class="col-xs-10">
                        Nombre(s)
                        <asp:TextBox runat="server" ID="txtNombreAgregar" class="form-control" required="required" type="text" ForeColor="Black"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="validarNombre" runat="server" ControlToValidate="txtNombreAgregar"
                            ErrorMessage="Ingrese solo letras" ForeColor="Red" ValidationExpression="[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]*$">
                        </asp:RegularExpressionValidator>
                    </div>
                </div>

                <br />
                <div class="form-group">
                    <div class="col-xs-6">
                        Apellido Paterno
                        <asp:TextBox ID="txtPaternoAgregar" class="form-control" required="required" type="text" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="ValidarApaterno" runat="server" ControlToValidate="txtPaternoAgregar"
                            ErrorMessage="Ingrese solo letras" ForeColor="Red" ValidationExpression="[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]*$">
                        </asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-6">
                        Apellido Materno
                        <asp:TextBox runat="server" ID="txtMaternoAgregar" class="form-control" required="required" type="text"> </asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMaternoAgregar"
                            ErrorMessage="Ingrese solo letras" ForeColor="Red" ValidationExpression="[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]*$">
                        </asp:RegularExpressionValidator>
                    </div>
                </div>


                <div class="form-group">
                    <div class="col-xs-3">
                        Edad
                        <asp:TextBox runat="server" ID="txtEdadAgregar" class="form-control" required="required" type="text" TextMode="Number"></asp:TextBox>
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

                </div>
                <div class="form-group">
                    <div class="col-xs-4">
                        <label>Foto: </label>
                        <asp:FileUpload ID="FotoMaestro" runat="server" CssClass="form-control input-sm" required="required" />
                    </div>
                </div>


                <div class="form-group">
                    <div class="col-xs-4">
                        <br />
                        Especialidad
                        <asp:TextBox ID="txtEspecialidadAgregar" class="form-control" required="required" type="text" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-4">
                        <br />
                        Cedula Profesional
                        <asp:TextBox ID="txtCedulaAgregar" class="form-control" required="required" type="text" runat="server"></asp:TextBox>
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
                        <asp:TextBox ID="txtTelCasa" runat="server" CssClass="form-control input-sm">
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
                        <asp:TextBox ID="txtCorreoAgregar" class="form-control" type="text" runat="server" placeholder="Ejemplo@gmail.com" required="required" TextMode="Email"></asp:TextBox>

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
                        <asp:Button ID="btncancel" runat="server" Text="Cancelar" CssClass="btn btn-primary" data-dismiss="modal" />
                        <asp:Button ID="btnAceptarAgregar" runat="server" Text="Aceptar" OnClick="btnAceptarAgregar_Click" class="btn btn-success" OnClientClick="return Aviso();" />

                    </div>
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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" AllowPaging="True" DataKeyNames="id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                    <Columns>
                            <asp:TemplateField HeaderText="Editar">
                                <ItemTemplate>
                                    <asp:ImageButton runat="server" ID="imgEditar" CommandName="Editar" ImageUrl="Imagenes/editar.png" />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Eliminar" Visible="True">
                                <ItemTemplate>
                                    <asp:ImageButton runat="server" ID="imgEliminar" CommandName="Eliminar" ImageUrl="Imagenes/borrar.png"
                   OnClientClick="javascript:return confirm('¿Está seguro de querer eliminar el registro seleccionado?', 'Mensaje de sistema')" />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                            </asp:TemplateField>

                        <asp:BoundField DataField="id" HeaderText="Clave" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="strNombre" HeaderText="Nombre" SortExpression="strNombre" />
                        <asp:BoundField DataField="strApellidoP" HeaderText="Apellido P." SortExpression="strApellidoP" />
                        <asp:BoundField DataField="strApellidoM" HeaderText="Apellido M." SortExpression="strApellidoM" />
                        <asp:BoundField DataField="strCorreo" HeaderText="Correo" SortExpression="strCorreo" />
                        <asp:BoundField DataField="strCedula" HeaderText="Cedula" SortExpression="strCedula" />
                        <asp:BoundField DataField="strEspecialidad" HeaderText="Especialidad" SortExpression="strEspecialidad" />
                        <asp:BoundField DataField="strcelular" HeaderText="Celular" SortExpression="strcelular" />
                        <asp:BoundField DataField="strtelCasa" HeaderText="Tel.Casa" SortExpression="strtelCasa" />

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

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-7R6DCPD;Initial Catalog=pase_lista;User ID=sa;Password=1234" SelectCommand="SELECT pro.id ,pro.strNombre, pro.strApellidoP, 
	   pro.strApellidoM, pro.strCorreo, pro.strCedula,
	   pro.strEspecialidad, tel.strcelular, tel.strtelCasa 
FROM TblProfesor as pro
inner join TblTelefono  as tel 
on pro.idTelefono = tel.id;"></asp:SqlDataSource>

            </div>
        </div>
    </div>


</asp:Content>

