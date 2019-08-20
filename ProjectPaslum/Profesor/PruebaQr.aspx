<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PruebaQr.aspx.cs" Inherits="ProjectPaslum.Profesor.PruebaQr" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="form-grouo">
      <div class="col-xs-3">
         <br />
            Carrera
          <asp:DropDownList ID="ddlCarrera" runat="server" AppendDataBoundItems="True"  Height="100%" ></asp:DropDownList>      
        </div>
     </div>

    <div class="form-grouo">
      <div class="col-xs-3">
         <br />
            Grupo
          <asp:DropDownList ID="ddlGrupo" runat="server" AppendDataBoundItems="True"  Height="100%" ></asp:DropDownList>      
        </div>
     </div>

    <div class="form-grouo">
      <div class="col-xs-3">
         <br />
            Materia
          <asp:DropDownList ID="ddlMateria" runat="server" AppendDataBoundItems="True"  Height="100%" ></asp:DropDownList>      
        </div>
     </div>
        <asp:Button ID="btnGenerar" runat="server" Text="Generar" OnClick="btnGenerar_Click" />
        <hr />
        <div>
        <img ID="imgCtrl" runat="server" />
        </div>
    </div>
    </form>
</body>
</html>