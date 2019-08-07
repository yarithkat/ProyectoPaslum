<%@ Page Language="C#" MasterPageFile="~/Administrador/IndexAdministrador.master" AutoEventWireup="true" CodeBehind="CuatriAdmin.aspx.cs" Inherits="ProjectPaslum.Administrador.CuatriAdmin" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
  
    <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link href="css/modales.css" rel="stylesheet" />
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
                            <i class="material-icons"> 
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
        <div class="modal-dialog  ">
            <div class="modal-content">
               
                    <div class="modal-header">
                        <h4 class="modal-title">Agregar Cuatrimestre </h4>
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
                               Periodo
                            <asp:TextBox  id="txtperiodo" class="form-control" required="required" type="text" runat="server"></asp:TextBox>
                                  
                        </div>
                             </div>
                        <br />
                        <br />
                        <br />
                        <div class="form-group">
                   
                               <div class="col-xs-3">
                               Carrera
                           <asp:DropDownList ID="DropDownList1" runat="server" required="required">
                                     <asp:ListItem Selected="True" Value="SELECCIONA"> --SELECCIONA-- </asp:ListItem>
                                     <asp:ListItem Value="">  </asp:ListItem>
                                    <asp:ListItem Value="">  </asp:ListItem>
                                    <asp:ListItem Value="">  </asp:ListItem>
                                </asp:DropDownList>
                            
                        </div>
                     
                               <div class="col-xs-3">
                             Materia
                            
                                <asp:DropDownList ID="DropDownList2" runat="server" required="required">
                                     <asp:ListItem Selected="True" Value="SELECCIONA"> --SELECCIONA-- </asp:ListItem>
                                     <asp:ListItem Value="">  </asp:ListItem>
                                    <asp:ListItem Value="">  </asp:ListItem>
                                    <asp:ListItem Value="">  </asp:ListItem>
                                </asp:DropDownList>
                            </div>

                            </div>
                      
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <div class="modal-footer">
                            <div class="modalfooter">
                           
                                  <asp:Button ID="btncancel" runat="server" CssClass="btn btn-primary"  Text="Cancelar" data-dismiss="modal"  />
                                 <asp:Button ID="btnaceptar" runat="server" class="btn btn-success"  Text="Aceptar"  />
                          
                        </div>
                            </div>
                    </div>
            </div>
        </div>
    </div>
</asp:Content>