<%@ Page Language="C#" MasterPageFile="~/Administrador/IndexAdministrador.master" AutoEventWireup="true" CodeBehind="CuatriAdmin.aspx.cs" Inherits="ProjectPaslum.Administrador.CuatriAdmin" %>


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
                                <b>Cuatrimestres
                                </b>
                        </h2>
                    </div>
                     <div class="button">
                    <div class="col-sm-6">
                        <a class="btn btn-success" data-toggle="modal" href="#addCuatriModal">
                            <i class="icon-add">
                            </i>
                            <asp:Label ID="Label1" runat="server" Text="Agregar nuevo Cuatrimestre"></asp:Label>
                        </a>
                    </div>
                         
                         </div>
                </div>
            </div>

    </div>
      <!-- Agregar Modal Cuatrimestre-->
    <div class="modal fade" id="addCuatriModal">
           <div class="left">
        <div class="modal-dialog">
             
            <div class="modal-content">
               
                    <div class="modal-header">
                        <h4 class="modal-title">AGREGAR CUATRIMESTRE </h4>
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
                        </div>
                        <br />
                        <br />
                        <br />
                        <div class="form-group">
                        <div class="form-group">
                               <div class="col-xs-6">
                               Fecha Inicio:
                           <asp:TextBox id="Inicio" runat="server" TextMode="Date" required="required"></asp:TextBox>
                           <asp:Calendar ID="calInicio" runat="server" required="required"></asp:Calendar>
                            
                        </div>
                        </div>
                        
                        <div class="form-group">
                               <div class="col-xs-6">
                                Fecha Fin:
                            <asp:TextBox id="Fin" runat="server" TextMode="Date" required="required"></asp:TextBox>
                            <asp:Calendar ID="calFin" runat="server" required="required"></asp:Calendar>
                                
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
                        <div class="modal-footer">
                            <div class="modalfooter">
                           
                                  <asp:Button ID="btncancel" runat="server" CssClass="btn btn-primary"  Text="Cancelar" data-dismiss="modal"  />
                                 <asp:Button ID="btnaceptar" runat="server" class="btn btn-success"  Text="Aceptar" OnClick="btnaceptar_Click" />
                          
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
                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse" aria-expanded="false" aria-controls="collapse">Consulta de Cuatrimestre
                </a>
            </h4>
        </div>
        <div id="collapse" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
            <div class="panel-body">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" AllowPaging="True" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                    <Columns>
                        
                        <asp:BoundField DataField="strNombre" HeaderText="Nombre" SortExpression="strNombre" />
                        <asp:BoundField DataField="strFechaInicio" HeaderText="Fecha Inicio" SortExpression="strFechaInicio" />
                        <asp:BoundField DataField="strFechaFin" HeaderText="Fecha Fin" SortExpression="strFechaFin" />

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

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pase_listaConnectionString %>" SelectCommand="SELECT strNombre, strFechaInicio, strFechaFin FROM TblCuatri"></asp:SqlDataSource>

            </div>
        </div>
    </div>

</asp:Content>