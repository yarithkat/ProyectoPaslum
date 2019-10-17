<%@ Page Title="" Language="C#" MasterPageFile="~/Profesor/Profesor.Master" AutoEventWireup="true" CodeBehind="Calificaciones.aspx.cs" Inherits="ProjectPaslum.Profesor.Calificaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <h2>CONSULTAR CALIFICACIONES</h2>
    <div class="container">
        <div class="well">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="CARRERA: "></asp:Label>
            <asp:DropDownList ID="DropCarrera" runat="server" TabIndex="0">
                <asp:ListItem Value="0">&lt;Seleccione&gt;</asp:ListItem>
            </asp:DropDownList>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="GRUPO: "></asp:Label>
            <asp:DropDownList ID="DropGrupo" runat="server" TabIndex="0">
                <asp:ListItem Value="0">&lt;Seleccione&gt;</asp:ListItem>
            </asp:DropDownList>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="PARCIAL: "></asp:Label>
            <asp:DropDownList ID="DropParcial" runat="server" TabIndex="0">
                <asp:ListItem Value="0">&lt;Seleccione&gt;</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
</asp:Content>
