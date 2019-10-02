<%@ Page Language="C#" MasterPageFile="~/Profesor/Profesor.Master" AutoEventWireup="true" CodeBehind="Evaluaciones.aspx.cs" Inherits="ProjectPaslum.Profesor.Evaluaciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
  $( function() {
    $( "#grupoTablas" ).tabs();
  } );
</script>
    <script>
  $( function() {
    $( "#grupoMat" ).tab();
  } );
</script>

 
<div id="grupoTablas" title=".">
  <ul>
    <li><a href="#tab-1">PARCIALES</a></li>
    <li><a href="#tab-2">EVALUACIONES</a></li>
  </ul>
  <div id="tab-1">
       <div class="form-group">
                    <div class="col-xs-3">
                        Nombre:
                        <asp:TextBox runat="server" ID="TxtNombre" class="form-control"  type="text" ForeColor="Black"></asp:TextBox>
                        
                    </div>
           </div>
           <div class="form-group">
                    <div class="col-xs-3">
                        Descripcion:
                        <asp:TextBox runat="server" ID="TxtDescripcion" class="form-control" type="text" ForeColor="Black"></asp:TextBox>
                        
                    </div>
                </div>
       <div class="form-group">
                    <div class="col-xs-3">
                        Porcentaje %:
                        <asp:TextBox runat="server" ID="TxtPorcentaje" class="form-control"  type="number" ForeColor="Black"></asp:TextBox>
                        
                    </div>
                </div>
    
              <asp:Button ID="BtnAceptar" class="btn btn-info" runat="server" Text="Aceptar" OnClick="BtnAceptar_Click" ></asp:Button>

  </div>
  <div id="tab-2">
      
     <div class="form-group">
            <div class="col-xs-6">
                Parcial:
                <asp:DropDownList ID="ddlParcial" runat="server" AppendDataBoundItems="True"  Height="100%" ></asp:DropDownList>   
            </div>
                <br/>
     </div>
     <div class="form-group">
                    <div class="col-xs-3">
                        Descripcion de la actividad:
                        <asp:TextBox runat="server" ID="TxtDescripcionActividad" class="form-control" type="text" ForeColor="Black"></asp:TextBox>
                        
                    </div>
           </div>
    
              <asp:Button ID="Button1" class="btn btn-info" runat="server" Text="Aceptar" OnClick="Button1_Click" ></asp:Button>
  </div>
</div>
</asp:Content>
