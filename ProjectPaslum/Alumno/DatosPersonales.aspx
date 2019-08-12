﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Alumno/Alumno.Master" AutoEventWireup="true" CodeBehind="DatosPersonales.aspx.cs" Inherits="ProjectPaslum.Alumno.DatosPersonales" %>
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
              <asp:TextBox ID="TxtNombre" runat="server" Enabled="false"></asp:TextBox>
              <label for="fname">Apellido Paterno: </label>
              <asp:TextBox ID="txtApellidoP" runat="server" Enabled="false"></asp:TextBox>
              <label for="fname">Apellido Materno: </label>
              <asp:TextBox ID="txtApellidoM" runat="server" Enabled="false"></asp:TextBox>
              <label for="lname">Carrera: </label>
              <asp:TextBox ID="TxtCarrera" runat="server" Enabled="false"></asp:TextBox>
              <label for="subject">Area: </label>
              <asp:TextBox ID="TxtArea" runat="server" Enabled="false"></asp:TextBox>
              <label for="lname">Cuatrimestre: </label>
              <asp:TextBox ID="TxtCuatrimestre" runat="server" Enabled="false"></asp:TextBox>
              <label for="country">Correo: </label>
              <asp:TextBox ID="TxtCorreo" runat="server"></asp:TextBox>
              <label for="subject">Matricula: </label>
              <asp:TextBox ID="TxtMatricula" runat="server" Enabled="false"></asp:TextBox>                    
              <label for="subject">Telefono: </label>
              <asp:TextBox ID="TxtTelefono" runat="server"></asp:TextBox>
              <label for="subject">Celular: </label>
              <asp:TextBox ID="txtCelular" runat="server"></asp:TextBox>
              <label for="subject">Otro: </label>
              <asp:TextBox ID="txtOtro" runat="server"></asp:TextBox>
              <asp:Button ID="BtnEditar" class="btn btn-info" runat="server" Text="Guardar" OnClick="BtnEditar_Click"></asp:Button>
          </form>
      </div>
  </div>
</div>
</asp:Content>