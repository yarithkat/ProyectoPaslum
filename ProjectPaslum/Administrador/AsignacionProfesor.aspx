<%@ Page Language="C#" MasterPageFile="~/Administrador/IndexAdministrador.master" AutoEventWireup="true" CodeBehind="AsignacionProfesor.aspx.cs" Inherits="ProjectPaslum.Administrador.AsignacionProfesor" %>

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
    <div class="content">
        <div class="table-title">
            <div class="row">
                <div class="col-sm-6">
                    <h2>Asignación de
        <b>Maestros</b>
                    </h2>
                </div>
             
                    <!-- Asignación -->
                           <div class="form-group">
                            <div class="col-xs-5">
                            <div class="dropdown" >
                                <button runat="server" id="cmbAsignacion" class="btn btn-success dropdown-toggle" type="button" data-toggle="dropdown">
                                  ASIGNACIONES <span class="caret"></span>
                                </button>
                                       <div class="dropdown-menu" >
                                 <a class="dropdown-item" data-toggle="modal"  href="#addAsignacionMateria">Materias</a> 
                                <div class="dropdown-divider"></div>
                                     <a class="dropdown-item" data-toggle="modal"  href="#addAsignacionGrupo">Grupos</a>
                        </div>
            
      
        </div>
                            </div>
                            </div>
                         </div>
                  </div> 
                        </div>          

       <!-- Agregar Modal Asignacion Materia-->
       <div class="modal fade" id="addAsignacionMateria">
        <div class="left">
        <div class="modal-dialog">

            <div class="modal-content">
               
                    <div class="modal-header">
                        <h4 class="modal-title">ASIGNAR MATERIAS </h4>
                         <button aria-hidden="true" class="close" data-dismiss="modal" type="button">
                                ×
                            </button>
                    </div>
                
                    <div class="modal-body">
                         <div class="form-group">
                         <div class="col-xs-6">
                              Profesor:
                             <asp:DropDownList ID="ddlProfesor" runat="server" AppendDataBoundItems="True"  Height="100%" CssClass=" form-control"></asp:DropDownList>   
                        </div>
                               <br/>
                               </div>
                           <br/>
                         <div class="form-group">
                             
                         <div class="col-xs-4"> 
                            Materias:
                                  <asp:DropDownList ID="ddlMateria" runat="server" AppendDataBoundItems="True"  Height="100%" CssClass=" form-control"></asp:DropDownList>
                        </div>
                         </div>
                          </div>
                          <br/>
                          <br/>                       
                          <br/>
                          <br/>
                          <br/>
                      
                      <div class="modal-footer">
                                <asp:Button ID="Button1" runat="server" Text="Cancelar" class="btn btn-primary" data-dismiss="modal" />
                                <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" Text="Aceptar" OnClick="Button2_Click"  />
                   
                            </div>
            </div>
        </div>
          </div>
               </div>
     <!-- Agregar Modal Asignacion Materia-->
       <div class="modal fade" id="addAsignacionGrupo">
        <div class="left">
        <div class="modal-dialog">

            <div class="modal-content">
               
                    <div class="modal-header">
                        <h4 class="modal-title">ASIGNAR GRUPO </h4>
                         <button aria-hidden="true" class="close" data-dismiss="modal" type="button">
                                ×
                            </button>
                    </div>
                
                    <div class="modal-body">
                         <div class="form-group">
                         <div class="col-xs-6">
                              Materia:
                             <asp:DropDownList ID="ddlMateriaGrupo" runat="server" AppendDataBoundItems="True"  Height="100%" CssClass=" form-control"></asp:DropDownList>   
                        </div>
                               <br/>
                               </div>
                           <br/>
                         <div class="form-group">
                             
                         <div class="col-xs-4"> 
                            Grupo:
                                  <asp:DropDownList ID="ddlGrupoGrupo" runat="server" AppendDataBoundItems="True"  Height="100%" CssClass=" form-control"></asp:DropDownList>
                        </div>
                         </div>
                          </div>
                          <br/>
                          <br/>                       
                          <br/>
                          <br/>
                          <br/>
                      
                      <div class="modal-footer">
                                <asp:Button ID="Button3" runat="server" Text="Cancelar" class="btn btn-primary" data-dismiss="modal" />
                                <asp:Button ID="Button4" runat="server" CssClass="btn btn-success" Text="Aceptar" OnClick="Button4_Click"  />
                   
                            </div>
            </div>
        </div>
          </div>
               </div>

       <%-- ASIGNACIONES MATERIA--%>
             <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="heading">
            <h4 class="panel-title">
                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse" aria-expanded="false" aria-controls="collapse">Consulta de profesores asignados a Materias
                </a>
            </h4>
        </div>
        <div id="collapse" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
            <div class="panel-body">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" AllowPaging="True" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                    <Columns>

                        <asp:BoundField DataField="PROFESOR" HeaderText="PROFESOR" SortExpression="PROFESOR" />
                        <asp:BoundField DataField="Apellido Paterno" HeaderText="Apellido Paterno" SortExpression="Apellido Paterno" />
                        <asp:BoundField DataField="Apellido Materno" HeaderText="Apellido Materno" SortExpression="Apellido Materno" />
                        <asp:BoundField DataField="MATERIA" HeaderText="MATERIA" SortExpression="MATERIA" />

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

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pase_listaConnectionString %>" SelectCommand="select p.strNombre as PROFESOR, p.strApellidoP as 'Apellido Paterno', p.strApellidoM as 'Apellido Materno' , m.strNombre as MATERIA
from TblAsignacionMateria a
inner join TblProfesor p
on a.idProfesor = p.id
inner join TblMateria m
on a.idMateria = m.id"></asp:SqlDataSource>

            </div>
        </div>
    </div>

           <%-- ASIGNACIONES GRUPO--%>
             <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="heading2">
            <h4 class="panel-title">
                <a role="button" data-toggle="collapse2" data-parent="#accordion" href="#collapse2" aria-expanded="false" aria-controls="collapse">Consulta de Grupos asignados a Profesores
                </a>
            </h4>
        </div>
        <div id="collapse2" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
            <div class="panel-body">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Width="100%" AllowPaging="True" DataSourceID="SqlDataSource3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                    <Columns>

                        <asp:BoundField DataField="Nombre Grupo" HeaderText="Nombre Grupo" SortExpression="Nombre Grupo" />
                        <asp:BoundField DataField="Profesor" HeaderText="Profesor" SortExpression="Profesor" />
                        <asp:BoundField DataField="Apellido Paterno" HeaderText="Apellido Paterno" SortExpression="Apellido Paterno" />
                        <asp:BoundField DataField="Apellido Materno" HeaderText="Apellido Materno" SortExpression="Apellido Materno" />
                        <asp:BoundField DataField="Materia" HeaderText="Materia" SortExpression="Materia" />
                        <asp:BoundField DataField="Carrera" HeaderText="Carrera" SortExpression="Carrera" />

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

                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:pase_listaConnectionString %>" SelectCommand="select g.strNombre as 'Nombre Grupo', 
p.strNombre as 'Profesor', p.strApellidoP as 'Apellido Paterno', p.strApellidoM as 'Apellido Materno',
m.strNombre as 'Materia', c.strNombre 'Carrera'
from TblAsignacionGrupo ag
inner join TblGrupo g
on ag.idGrupo = g.id
inner join TblAsignacionMateria am
on ag.idAsignacionMateria = am.id
inner join TblProfesor p
on am.idProfesor = p.id
inner join TblMateria m
on am.idMateria = m.id
inner join TblCarrera c
on g.idCarrera= c.id"></asp:SqlDataSource>

            </div>
        </div>
    </div>


</asp:Content>


