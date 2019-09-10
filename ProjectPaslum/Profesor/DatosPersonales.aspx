﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Profesor/Profesor.Master" AutoEventWireup="true" CodeBehind="DatosPersonales.aspx.cs" Inherits="ProjectPaslum.Profesor.DatosPersonales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<link href="../Alumno/scss/PersoDatos.css" rel="stylesheet" />
<div class="container">
  <div style="text-align:center">
    <h2>Datos Personales</h2>
  </div>
  <div class="row">
    <div class="column">
      <img src="../Alumno/images/Profile.jpg" style="width:50%">
    </div>
       <div class="column">
 
              <label for="fname">Nombre: </label>
              <asp:TextBox ID="TxtNombre" runat="server" Enabled="false"></asp:TextBox>
              <label for="fname">Apellido Paterno: </label>
              <asp:TextBox ID="TxtApellidoP" runat="server" Enabled="false"></asp:TextBox>
              <label for="fname">Apellido Materno: </label>
              <asp:TextBox ID="TxtApellidoM" runat="server" Enabled="false"></asp:TextBox>
              
              <label for="country">Correo: 
              <label for="subject">
              <asp:Label ID="lbcorreo" runat="server"></asp:Label>
              </label>
              </label>
              <asp:TextBox ID="TxtCorreo" runat="server"></asp:TextBox>
              
              <label for="country">Calle:
              <label for="subject">
              <asp:Label ID="lbCalle" runat="server"></asp:Label>
              </label>
              </label>
              <asp:TextBox ID="TxtCalle" runat="server"></asp:TextBox>

              <label for="country">Colonia: 
              <label for="subject">
              <asp:Label ID="lbColonia" runat="server"></asp:Label>
              </label>
              </label>
              <asp:TextBox ID="TxtColonia" runat="server"></asp:TextBox>

              <label for="country">Municipio: 
              <label for="subject">
              <asp:Label ID="lbMunicipio" runat="server"></asp:Label>
              </label>
              </label>
              <asp:TextBox ID="TxtMunicipio" runat="server"></asp:TextBox>

              <label for="country">Telefono:
              <label for="subject">
              <asp:Label ID="lbTelefono" runat="server"></asp:Label>
              </label>
              </label>
              <asp:TextBox ID="TxtTelefono" runat="server"></asp:TextBox>

               <label for="country">Celular: 
              <label for="subject">
              <asp:Label ID="lbCelular" runat="server"></asp:Label>
              </label>
              </label>
              <asp:TextBox ID="TxtCelular" runat="server"></asp:TextBox>

               <label for="country">Otro Telefono:
              <label for="subject">
              <asp:Label ID="lbOtro" runat="server"></asp:Label>
              </label>
              </label>
              <asp:TextBox ID="TxtOtro" runat="server"></asp:TextBox>
              <asp:Button ID="BtnEditar" class="btn btn-info" runat="server" Text="Editar Datos" OnClick="BtnEditar_Click"></asp:Button>
          
      </div>
  </div>
</div>
</asp:Content>
