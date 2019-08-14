<%@ Page Language="C#" MasterPageFile="~/Administrador/IndexAdministrador.master" AutoEventWireup="true" CodeBehind="Materiadmin.aspx.cs" Inherits="ProjectPaslum.Administrador.Materiadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
  

    <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
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
                                <b>Materia
                                </b>
                        </h2>
                    </div>
                    <div class="button">
                    <div class="col-sm-6">
                        <a class="btn btn-success" data-toggle="modal" href="#addMateriaModal">
                            <i class="material-icons"> 
                            </i>
                              <asp:Label ID="Label1" runat="server" Text="Agregar nueva Materia"></asp:Label>
                        </a> 
                    </div>
                   </div>
                </div>
            </div>

    </div>
    <!-- Agregar Modal Materia-->
    <div class="modal fade" id="addMateriaModal">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header">
                    <h4 class="modal-title">Agregar Materia</h4>
                    <button aria-hidden="true" class="close" data-dismiss="modal" type="button">
                                ×
                            </button>

                </div>

                <div class="modal-body">
                    <div class="form-group">
                        <div class="col-xs-10">
                            Nombre
                            <asp:TextBox runat="server" ID="txtNombre" class="form-control" required="" type="text"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-10">
                            Descripción
                            <asp:TextBox runat="server" ID="txtDescrip" class="form-control" required="" type="text"></asp:TextBox>
                        </div>
                    </div>

                    <br />
                    <br />
                    <br />

                        <!-- Notas -->
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label>Describir nota: </label>

                                <asp:TextBox ID="txtDescribirNota" Rows="5" TextMode="multiline" runat="server"> </asp:TextBox>
                            </div>


                        </div>
                        <br />
                         
               
                      
                          <br />
                       
                          <!-- Seleccion de parcial  -->
                           <div class="form-group">
                            <div class="col-xs-5">
                                Tipo de parcial
                            <div class="dropdown">
                                <button runat="server" id="cmbParcial" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
                                   --- Seleccione-- <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu">
                                  
                                </ul>
                            </div>
                            </div>
                               
                        </div>

                         <!-- Seleccion de Carrera  -->
                        <div class="form-grouo">
                            <div class="col-xs-3">
                                 <br />
                                Carrera
                                <asp:DropDownList ID="ddlCarrera" runat="server" AppendDataBoundItems="True"  Height="100%" ></asp:DropDownList>      
                              </div>
                         </div>

                         <!-- Seleccion de Carrera  -->
                        <div class="form-grouo">
                            <div class="col-xs-3">
                                 <br />
                                Cuatrimestre
                                <asp:DropDownList ID="ddlCuatri" runat="server" AppendDataBoundItems="True"  Height="100%" ></asp:DropDownList>      
                              </div>
                         </div>
                 
                  <br /> <br />  <br /> <br />
                   <div class="modal-footer">
                            <div class="modalfooter">
                             
                                  <asp:Button ID="btncancel" runat="server" CssClass="btn btn-primary"  Text="Cancelar" data-dismiss="modal"  />
                                 <asp:Button ID="btnaceptar" runat="server" class="btn btn-success"  Text="Aceptar" OnClick="btnaceptar_Click" />
                              </div>
                           </div>
                            </div> </div>
            </div>
        </div>
    
       <%-- Editar o eliminar Grupo --%>
    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="heading">
            <h4 class="panel-title">
                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse" aria-expanded="false" aria-controls="collapse">Consulta de Materias
                </a>
            </h4>
        </div>
        <div id="collapse" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
            <div class="panel-body">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" AllowPaging="True" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                    <Columns>
                        
                        <asp:BoundField DataField="strNombre" HeaderText="Nombre" SortExpression="strNombre" />
                        <asp:BoundField DataField="strDescripcion" HeaderText="Descripcion" SortExpression="strDescripcion" />
                        <asp:BoundField DataField="strnombre1" HeaderText="Carrera" SortExpression="strnombre1" />

                        <asp:BoundField DataField="strnombre2" HeaderText="Cuatrimestre" SortExpression="strnombre2" />

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

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pase_listaConnectionString %>" SelectCommand="select m.strNombre, m.strDescripcion, c.strnombre,cu.strnombre 
from TblMateria m
inner join TblCarrera c 
on m.idCarrera = c.id
inner join TblCuatri cu
on m.idCuatri = cu.id;"></asp:SqlDataSource>

            </div>
        </div>
    </div>
          
</asp:Content>
