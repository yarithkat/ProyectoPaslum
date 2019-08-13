<%@ Page Title="" Language="C#" MasterPageFile="~/Alumno/Alumno.Master" AutoEventWireup="true" CodeBehind="DatosEscolares.aspx.cs" Inherits="ProjectPaslum.Alumno.DatosEscolares" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
 <link href="scss/Menu.css" rel="stylesheet" />




<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'London')">Consultar Calificaciones</button>
  <button class="tablinks" onclick="openCity(event, 'Paris')">Historial Academico</button>
</div>

<div id="Consultar Calificaciones" class="tabcontent">
  <h3>Consultar Calificaciones</h3>
  <p>London is the capital city of England.</p>
</div>

<div id="Historial Academico" class="tabcontent">
  <h3>Historial Academico</h3>
  <p>Paris is the capital of France.</p> 
</div>

<script>
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}
</script>
   

</asp:Content>
