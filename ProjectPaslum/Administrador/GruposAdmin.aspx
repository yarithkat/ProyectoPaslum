<%@ Page Language="C#" MasterPageFile="~/Administrador/IndexAdministrador.master" AutoEventWireup="true" CodeBehind="GruposAdmin.aspx.cs" Inherits="ProjectPaslum.Administrador.GruposAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <link href="css/modales.css" rel="stylesheet" />
       <link href="../Content/bootstrap.min.css" rel="stylesheet" />
     <style>
    #mdialTamanio{
      width: 150% !important;
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
                                <b>Grupos
                                </b>
                    </h2>
                </div>
                <div class="button">
                    <div class="col-sm-6">
                        <a class="btn btn-success" data-toggle="modal" href="#addgrupoModal">
                            <i class="icon-add"></i>
                            <asp:Label ID="Label1" runat="server" Text="Agregar nuevo grupo"></asp:Label>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
      <!-- Agregar Modal Grupo-->
    <div class="modal fade" id="addgrupoModal">
                <div class="left">
        <div class="modal-dialog">
            <div class="modal-content">
                 <div class="alert alert-success text-center" runat="server" id="alertError">
                              <p class="h2"><i class="fa fa-save"></i>&nbsp;No se puede guardar, la clase esta llena</p>
                        </div>
                        <div class="alert alert-success text-center" runat="server" id="alertBien">
                              <p class="h2"><i class="fa fa-save"></i>&nbsp;Se guardo con exito</p>
                        </div>
                    <div class="modal-header">
                        <h4 class="modal-title">AGREGAR GRUPO </h4>
                        <button aria-hidden="true" class="close" data-dismiss="modal" type="button">
                            ×
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <div class="col-xs-6">
                                Nombre
                            <asp:TextBox runat="server" ID="txtNombre" class="form-control" required="required" type="text"></asp:TextBox>
                            </div>

                            <div class="col-xs-6">
                                Capacidad
                            <asp:TextBox ID="txtcapacidad" class="form-control" required="required" type="text" runat="server"></asp:TextBox>

                            </div>
                        </div>
                        <br />
                        <br />
                        <br />
                        <div class="form-grouo">
                            <div class="col-xs-7">
                                <br />
                                Carrera
                                <asp:DropDownList ID="ddlCarrera" runat="server" AppendDataBoundItems="True"  Height="100%" CssClass=" form-control"></asp:DropDownList>      
                              </div>
                         </div>
                      
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <div class="modal-footer">
                            <div class="modalfooter">
                                <asp:Button ID="btncancel" runat="server" CssClass="btn btn-primary" Text="Cancelar" data-dismiss="modal" />
                                <asp:Button ID="btnaceptar" data-toggle="modal" runat="server" class="btn btn-success" Text="Aceptar" OnClick="btnaceptar_Click" OnClientClick="return Aviso();" />
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
                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse" aria-expanded="false" aria-controls="collapse">Consulta de Grupos
                </a>
            </h4>
        </div>
        <div id="collapse" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
            <div class="panel-body">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" AllowPaging="True" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                    <Columns>
                        <asp:BoundField DataField="strNombre" HeaderText="Nombre" SortExpression="strNombre" />
                        <asp:BoundField DataField="strCapacidad" HeaderText="Capacidad" SortExpression="strCapacidad" />
                        <asp:BoundField DataField="strnombre1" HeaderText="Carrera" SortExpression="strnombre1" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-7R6DCPD;Initial Catalog=pase_lista;User ID=sa;Password=1234" SelectCommand="select g.strNombre, g.strCapacidad, c.strnombre
                        from TblGrupo g
                        inner join TblCarrera c
                        on g.idCarrera = c.id;"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
