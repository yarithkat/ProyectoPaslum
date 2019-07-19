<%@ Page Language="C#" MasterPageFile="~/Administrador/IndexAdministrador.master" AutoEventWireup="true" CodeBehind="Maestrosadmin.aspx.cs" Inherits="ProjectPaslum.Administrador.Maestrosadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
         .table-title {
            padding-bottom: 15px;
            background: #435d7d;
            color: #fff;
            padding: 16px 30px;
            margin: -20px -25px 10px;
            border-radius: 3px 3px 0 0;
        }
          </style>

    <div class="content">
        
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2>Administrar
                                <b>Maestros
                                </b>
                        </h2>
                    </div>
                    <div class="col-sm-6">
                        <a class="btn btn-success" >
                            <i class="material-icons">
                            </i>
                            <span>Agregar nuevo Maestro
                            </span>
                        </a>
                    </div>
                </div>
            </div>
    </div>
</asp:Content>

