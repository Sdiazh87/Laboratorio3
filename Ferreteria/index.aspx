<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Ferreteria.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mantenimiento</title>
</head>
<body>
    <p>Gestión Inventario</p>
    <p>Elija qué desea realizar</p>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnInsertar" Text="Agregar" runat="server" OnClick="btnInsertar_Click"  />
            <asp:Button ID="btnEliminar" Text="Eliminar" runat="server" OnClick="btnEliminar_Click"  />
            <asp:Button ID="btnActualizar" Text="Editar" runat="server" OnClick="btnActualizar_Click" />
        </div>
    </form>
</body>
</html>
