<%@ Page Title="" Language="C#" MasterPageFile="~/Alumno/Alumno.Master" AutoEventWireup="true" CodeBehind="DatosPersonales1.aspx.cs" Inherits="ProjectPaslum.Alumno.DatosPersonales1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<link href="scss/PersoDatos.css" rel="stylesheet" />
<div class="container">
  <div style="text-align:center">
    <h2>Datos Personales</h2>
  </div>
  <div class="row">
    <div class="column">
      <img src="images/Profile.jpg" style="width:50%">
    </div>
       <div class="column">
          <form action="/action_page.php">
              <label for="fname">Nombre: </label>
              <asp:Label ID="lbNombre" runat="server"></asp:Label>
              <label for="fname">Apellido Paterno: </label>
              <asp:Label ID="lbApellidoP" runat="server"></asp:Label>
              <label for="fname">Apellido Materno: </label>
              <asp:Label ID="lbApellidoM" runat="server"></asp:Label>
              <label for="lname">Carrera: </label>
              <asp:Label ID="lbCarrera" runat="server"></asp:Label>
              <label for="subject">Area: </label>
              <asp:Label ID="lbArea" runat="server"></asp:Label>
              <label for="lname">Cuatrimestre: </label>
              <asp:Label ID="lbCuatrimestre" runat="server"></asp:Label>
              <label for="country">Correo: </label>
              <asp:Label ID="lbCorreo" runat="server"></asp:Label>
              <label for="subject">Matricula: </label>
              <asp:Label ID="lbMatricula" runat="server"></asp:Label>                   
              <label for="subject">Telefono: </label>
              <asp:Label ID="lbTelefono" runat="server"></asp:Label>
              <label for="subject">Celular: </label>
              <asp:Label ID="lbCelular" runat="server"></asp:Label>
              <label for="subject">Otro: </label>
              <asp:Label ID="lbOtro" runat="server"></asp:Label>
              <asp:Button ID="Button1" class="btn btn-info" runat="server" Text="Editar Datos" href="./DatosPersonales.aspx"></asp:Button>
          </form>
      </div>
  </div>
</div>
</asp:Content>