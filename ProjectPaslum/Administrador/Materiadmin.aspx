﻿<%@ Page Language="C#" MasterPageFile="~/Administrador/IndexAdministrador.master" AutoEventWireup="true" CodeBehind="Materiadmin.aspx.cs" Inherits="ProjectPaslum.Administrador.Materiadmin" %>

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
                 
                  <br /> <br />  <br /> <br />
                   <div class="modal-footer">
                            <div class="modalfooter">
                             
                                  <asp:Button ID="btncancel" runat="server"  Text="Cancelar" data-dismiss="modal"  />
                                 <asp:Button ID="btnaceptar" runat="server"   Text="Aceptar"  />
                              </div>
                           </div>
                            </div> </div>
            </div>
        </div>
          
</asp:Content>
