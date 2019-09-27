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
                             <asp:DropDownList ID="ddlProfesor" runat="server" AppendDataBoundItems="True"  Height="100%" ></asp:DropDownList>   
                        </div>
                               <br/>
                               </div>
                           <br/>
                         <div class="form-group">
                             
                         <div class="col-xs-4"> 
                            Materias:
                                  <asp:DropDownList ID="ddlMateria" runat="server"></asp:DropDownList>
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
                                <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" Text="Aceptar"  />
                   
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
                              Asignaciones:
                             <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True"  Height="100%" ></asp:DropDownList>   
                        </div>
                               <br/>
                               </div>
                           <br/>
                         <div class="form-group">
                             
                         <div class="col-xs-4"> 
                            Grupo:
                                  <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
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
                                <asp:Button ID="Button4" runat="server" CssClass="btn btn-success" Text="Aceptar"  />
                   
                            </div>
            </div>
        </div>
          </div>
               </div>

       <%-- ASIGNACIONES --%>
       <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="heading">
            <h4 class="panel-title">
                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse" aria-expanded="false" aria-controls="collapse">Consulta de profesores registrados
                </a>
            </h4>
        </div>
        <div id="collapse" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
            <div class="panel-body">
              
            </div>
        </div>
    </div>


</asp:Content>


