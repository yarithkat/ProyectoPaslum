<%@ Page Language="C#" MasterPageFile="~/Profesor/Profesor.Master" AutoEventWireup="true" CodeBehind="Parciales.aspx.cs" Inherits="ProjectPaslum.Profesor.Parciales" %>
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
    <li><a href="#tab-2"></a></li>
  </ul>
  <div id="tab-1">
        <asp:Label ID="LabCuatri" runat="server" Text="Materias: "></asp:Label>
    <asp:DropDownList ID="DropCuatrimestre" runat="server" TabIndex="0">
          <asp:ListItem Value="0">&lt;Seleccione un Item&gt;</asp:ListItem>
      </asp:DropDownList>
            <asp:Label ID="Label1" runat="server" Text="Evaluciones: "></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" TabIndex="0">
          <asp:ListItem Value="0">&lt;Seleccione un Item&gt;</asp:ListItem>
      </asp:DropDownList>

        <div class="form-group">
                    <div class="col-xs-6">
                        No.Parcial
                        <asp:TextBox runat="server" ID="txtNumParcial" class="form-control" required="required" type="text" ForeColor="Black"></asp:TextBox>
                        
                    </div>
                </div>
          <div class="form-group">
                    <div class="col-xs-3">
                       Tipo de evalución:
                        <asp:TextBox runat="server" ID="TextBox1" class="form-control" required="required" type="text" ForeColor="Black"></asp:TextBox>
                        
                    </div>
                </div>
        <div class="form-group">
                    <div class="col-xs-3">
                        Porcentaje %:
                        <asp:TextBox runat="server" ID="TxtPorcentaje" class="form-control" required="required" type="text" ForeColor="Black"></asp:TextBox>
                        
                    </div>
                </div>
          <asp:Button ID="BtnAceptar" class="btn btn-info" runat="server" Text="Aceptar" ></asp:Button>

  </div>
  <div id="tab-2">
    <p>Visualizar todo el historial </p>
  </div>
</div>
</asp:Content>