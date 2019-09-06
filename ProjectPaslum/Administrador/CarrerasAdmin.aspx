<%@ Page Language="C#" MasterPageFile="~/Administrador/IndexAdministrador.master" AutoEventWireup="true" CodeBehind="CarrerasAdmin.aspx.cs" Inherits="ProjectPaslum.Administrador.CarrerasAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <link href="css/modales.css" rel="stylesheet" />

     <link href="../Content/bootstrap.min.css" rel="stylesheet" />
   
   <style>
    #mdialTamanio{
      width: 150% !important;
    }
  </style>   
    
    <div class="content">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2>Administrar
                                <b>Carreras
                                </b>
                        </h2>
                    </div>
                     <div class="button">
                    <div class="col-sm-6">
                        <a class="btn btn-success" data-toggle="modal"  href="#addCarrreraModal">
                            <i  class="icon-add">
                            </i>
                            <asp:Label ID="Label1" runat="server" Text="Agregar nueva Carrera"></asp:Label>
                        </a>
                    </div>
                         </div>
                </div>
            </div>

    </div>
      <!-- Agregar Modal Carrera-->
    <div class="modal fade" id="addCarrreraModal">
        <div class="left">
        <div class="modal-dialog">

            <div class="modal-content">
               
                    <div class="modal-header">
                        <h4 class="modal-title">AGREGAR CARRERA </h4>
                         <button aria-hidden="true" class="close" data-dismiss="modal" type="button">
                                ×
                            </button>
                    </div>
                
                    <div class="modal-body">
                        <div class="form-group">
                                <div class="col-xs-10">
  
                        <br/>
                          Clave
                            <asp:TextBox runat="server" id="txtClaveAgregar" class="form-control" required="" type="text" ></asp:TextBox>
                        </div>
                                 </div>
                     
                        <div class="form-group">
                              <div class="col-xs-6">
                                    
                        <br/>
                                Nombre
                            <asp:TextBox  id="txtNombreAgregar" class="form-control" required="" type="text" runat="server"></asp:TextBox>
                        </div>
                             </div>
                        <div class="form-group">
                               <div class="col-xs-6">
                                     
                        <br/>
                               Area
                            <asp:DropDownList ID="cmbArea" runat="server" CssClass=" form-control" >
                                    <asp:ListItem Selected="True" Value="INDUSTRIAL"> Industrial </asp:ListItem>
                                    <asp:ListItem Value="MAQUINARIA PESADA"> Maquinaria Pesada </asp:ListItem>    
                                    <asp:ListItem Value="EVALUACION DE PROYECTOS"> Formulacion y Evaluación de Proyectos </asp:ListItem> 
                                    <asp:ListItem Value="CADENA DE SUMINISTROS"> Cadena de Suministro </asp:ListItem>   
                                    <asp:ListItem Value="TRANSPORTE TERRESTRE"> Transporte Terrestre </asp:ListItem> 
                                    <asp:ListItem Value="MERCADOTECNIA"> Mercadotecnia </asp:ListItem> 
                                    <asp:ListItem Value="VENTAS"> Ventas </asp:ListItem> 
                                    <asp:ListItem Value="DESARROLLO DE SOFTWARE"> Desarrollo de software </asp:ListItem>
                                    <asp:ListItem Value="HIDROCARBUROS"> Hidrocarburos </asp:ListItem> 
                                    <asp:ListItem Value="MANUFACTURA"> Manufactura </asp:ListItem> 
                                    <asp:ListItem Value="TECNOLOGIA AMBIENTAL"> Tecnologia Ambiental </asp:ListItem> 
                                    <asp:ListItem Value="ENERGIA SOLAR"> Energia Solar </asp:ListItem> 
                             </asp:DropDownList> 
                        </div>
                               </div>
                          <br/>
                          <br/>                          <br/>
                          <br/>
                          <br/>
                          <br/>
                      
                      <div class="modal-footer">
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
                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse" aria-expanded="false" aria-controls="collapse">Consulta de Carreras Registradas
                </a>
            </h4>
        </div>
        <div id="collapse" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
            <div class="panel-body">
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" DataKeyNames="id">
                     <Columns>
                       
                         <asp:CommandField ButtonType="Image" 
                             CancelImageUrl="~/images/Iconos/IconCancelar.png" 
                             DeleteImageUrl="~/images/Iconos/IconEliminar.png" ShowDeleteButton="True"
                             EditImageUrl="~/images/Iconos/IconEditar.png" ShowEditButton="True"
                             UpdateImageUrl="~/images/Iconos/IconGuardar.png" />
                       
                         <asp:BoundField DataField="strNombre" HeaderText="Nombre" SortExpression="strNombre" />
                         <asp:BoundField DataField="strArea" HeaderText="Area" SortExpression="strArea" />
                         <asp:BoundField DataField="strClave" HeaderText="Clave" SortExpression="strClave" />
                       
                          
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
                     SelectCommand="SELECT id, strNombre, strArea, strClave FROM TblCarrera WHERE (bStatus = 1)" 
                     DeleteCommand="UPDATE TblCarrera SET bStatus = '0' WHERE (id = @id)" 
                     UpdateCommand="UPDATE TblCarrera SET strNombre = @strNombre, strArea = @strArea WHERE (id = @id)">
                     <DeleteParameters>
                         <asp:Parameter Name="id" />
                     </DeleteParameters>
                     <UpdateParameters>
                         <asp:Parameter Name="strNombre" />
                         <asp:Parameter Name="strArea" />
                         <asp:Parameter Name="id" />
                     </UpdateParameters>
                 </asp:SqlDataSource>
                 </div>
            </div>
        </div>
</asp:Content>
