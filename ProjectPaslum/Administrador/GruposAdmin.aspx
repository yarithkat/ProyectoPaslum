<%@ Page Language="C#" MasterPageFile="~/Administrador/IndexAdministrador.master" AutoEventWireup="true" CodeBehind="GruposAdmin.aspx.cs" Inherits="ProjectPaslum.Administrador.GruposAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
  
    <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />

    <link href="css/modales.css" rel="stylesheet" />
  
    
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
                            <i class="material-icons"> 
                            </i>
                            <asp:Label ID="Label1" runat="server" Text="Agregar nuevo grupo"></asp:Label>
                        </a>
                    </div>
                         </div>
                </div>
            </div>

    </div>
      <!-- Agregar Modal Grupo-->
    <div class="modal fade" id="addgrupoModal">
        <div class="modal-dialog">
            <div class="modal-content">
               
                    <div class="modal-header">
                        <h4 class="modal-title">Agregar Grupo </h4>
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
                            <asp:TextBox  id="txtcapacidad" class="form-control" required="required" type="text" runat="server"></asp:TextBox>
                                  
                        </div>
                             </div>
                        <br />
                        <br />
                        <br />
                        <div class="form-group">
                   
                               <div class="col-xs-6">
                               Carrera
                           <asp:DropDownList ID="DropDownList1" runat="server" required="required">
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
                            <div class="col-xs-3">
                                <asp:Button ID="btncancel" runat="server" Text="Cancelar" class="btn btn-primary" data-dismiss="modal" />
                            </div>
                            <div class="col-xs-3">
                                <asp:Button ID="btnAceptarAgregar" runat="server" CssClass="btn btn-block btn-sm btn-success" Text="Aceptar"/>
                            </div>
                        </div>
                            </div>
                    </div>
            </div>
        </div>
    </div>
</asp:Content>
