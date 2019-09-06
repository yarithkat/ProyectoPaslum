<%@ Page Title="" Language="C#" MasterPageFile="~/Profesor/Profesor.Master" AutoEventWireup="true" CodeBehind="Notificacion.aspx.cs" Inherits="ProjectPaslum.Profesor.Notificacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../Alumno/scss/PersoDatos.css" rel="stylesheet" />
<div class="container">
  <div style="text-align:center">
    <h2>Notificaciones de la clase</h2>
  </div>

<div id="navcontainer">
<ul id="navlist">

            Carrera
          <asp:DropDownList ID="ddlCarrera" runat="server" AppendDataBoundItems="True"  Height="100%" ></asp:DropDownList>      
       
            Grupo
          <asp:DropDownList ID="ddlGrupo" runat="server" AppendDataBoundItems="True"  Height="100%" ></asp:DropDownList>      
       

            Materia <asp:Label ID="lbId" runat="server" Text="Label" Visible="false"></asp:Label>
&nbsp;<asp:DropDownList ID="ddlMateria" runat="server" AppendDataBoundItems="True"  Height="100%" ></asp:DropDownList>      
    
       
</ul>
</div>
  <div class="row">
    <asp:Button ID="btnGenerar" runat="server" Text="Generar" />
   <div >
          

      </div>
  </div>
</div>
</asp:Content>
