<%@ Page Title="" Language="C#" MasterPageFile="~/Alumno/Alumno.Master" AutoEventWireup="true" CodeBehind="ListaAsistencia.aspx.cs" Inherits="ProjectPaslum.Alumno.ListaAsistencia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../../Content/font-awesome.min.css" rel="stylesheet" />
    <script src="../../Scripts/bootstrap.min.js"></script>

      <div class="container">
            <div class="card">
                <h5 class="card-header"><i class="fa fa-file-text"></i>&nbsp;&nbsp;Consultar Lista Asistencia</h5>
                <div class="card-body">
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Semana"></asp:Label>
                        <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Mes"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                    </div>
                </div>
            </div>
            <br />
        </div>  
</asp:Content>
