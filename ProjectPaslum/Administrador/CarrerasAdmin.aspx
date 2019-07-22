<%@ Page Language="C#" MasterPageFile="~/Administrador/IndexAdministrador.master" AutoEventWireup="true" CodeBehind="CarrerasAdmin.aspx.cs" Inherits="ProjectPaslum.Administrador.CarrerasAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
  
    <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />


    <style type="text/css">
        .table-title {
            padding-bottom: 15px;
            background: #435d7d;
            color: #fff;
            padding: 16px 30px;
            margin: -20px -25px 10px;
            border-radius: 3px 3px 0 0;
        }

        .button {
            text-align: left;
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
                            <i class="material-icons"> 
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
        <div class="modal-dialog  modal-lg modal-dialog-centered">
            <div class="modal-content">
               
                    <div class="modal-header">
                        <h4 class="modal-title">Agregar Carrera </h4>
                        <button aria-hidden="true" class="close" data-dismiss="modal" type="button">
                            ×
                        </button>
                    </div>
                
                    <div class="modal-body">
                        <div class="form-group">
                                <div class="col-xs-10">
                          Clave
                            <asp:TextBox runat="server" id="txtClaveAgregar" class="form-control" required="" type="text" ></asp:TextBox>
                        </div>
                                 </div>
                       
                        <br/>
                        <div class="form-group">
                              <div class="col-xs-6">
                                Nombre
                            <asp:TextBox  id="txtNombreAgregar" class="form-control" required="" type="text" runat="server"></asp:TextBox>
                        </div>
                             </div>
                        <div class="form-group">
                               <div class="col-xs-6">
                               Area
                            <asp:TextBox runat="server" id="txtAreaAgregar" class="form-control" required="" type="text" > </asp:TextBox>

                        </div>
                               </div>
                     
                          <br/>
                          <br/>
                       
                        <br /> <br />  
                    <div class="modal-footer">
                         <div class="col-xs-5">
                        <input class="btn btn-default" data-dismiss="modal" type="button" value="Cancel" />
                          <asp:Button id="btnAceptarAgregar" runat="server" class="btn btn-success" type="submit" value="Add" />
                       </div>
                   </div>
            </div>
        </div>
          </div>
            </div>
</asp:Content>
