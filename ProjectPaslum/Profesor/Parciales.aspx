<%@ Page Title="" Language="C#" MasterPageFile="~/Profesor/Profesor.Master" AutoEventWireup="true" CodeBehind="Parciales.aspx.cs" Inherits="ProjectPaslum.Profesor.Notificacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../Alumno/scss/PersoDatos.css" rel="stylesheet" />
<div class="container">
  <div style="text-align:center">
    <h2>PARCIALES</h2>
  </div>

<div id="navcontainer">
      <div class="row">
        
         <div class="form-group">
          <div class="col-xs-3">
            No.unidad
         <asp:TextBox ID="TxtUnidad" runat="server" Height="50%"></asp:TextBox>
               </div >   
                
               </div> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <div class="form-group">
         <div class="col-xs-3">
           Porcentaje
         <asp:TextBox ID="TxtPorcentaje" runat="server" Height="50%"></asp:TextBox>
    </div > 
                    </div>
               </div>
               <br />
        <div class="form-group">
        <div class="col-xs-3">
            Descripción
             <br />
          <asp:TextBox ID="TxtDescripcion" runat="server" Height="50%" Width="50%" ></asp:TextBox>
           </div > 
                  </div >
                
   </div >
</div>
  <div class="row">
    <asp:Button ID="btnAceptar" runat="server" CssClass="btn btn-primary" Text="Aceptar" />  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

 <asp:Button ID="btnCancelar" runat="server" class="btn btn-success"  Text="Cancelar" /> 
   <div >
   

      </div>
  </div>

</asp:Content>
