<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insertar.aspx.cs" Inherits="Ferreteria.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <asp:UpdatePanel runat="server">
            <ContentTemplate> 
                <div>
                    <table>
                        <tr>
                            <td><asp:Label runat="server" Text="Identificacion"></asp:Label></td>
                            <td><asp:TextBox runat="server" ID="txtidCliente"></asp:TextBox> </td>
                        </tr>
                        <tr>
                            <td><asp:Label runat="server" Text="Nombre"></asp:Label></td>
                            <td><asp:TextBox runat="server" ID="txtnomCliente"></asp:TextBox> </td>                   
                        </tr>
                        <tr>
                            <td><asp:Label runat="server" Text="Primer apellido" /></td>
                            <td><asp:TextBox runat="server" ID="txtape1Cliente"></asp:TextBox></td>                   
                        </tr>
                        <tr>
                            <td><asp:Label runat="server" Text="Segundo apellido" /></td>
                            <td><asp:TextBox runat="server" ID="txtape2Cliente"></asp:TextBox></td>                   
                        </tr>
                        <tr>
                            <td><asp:Label runat="server" Text="Genero" /></td>
                            <td><asp:DropDownList runat="server" ID="cmbcodGenero">
                                    <%--<asp:ListItem Text="Femenino" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Masculino" Value="2"></asp:ListItem>--%>
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td><asp:Button ID="btnRegistrar" Text="Registrar" runat="server" OnClick="btnRegistrar_Click" /></td>
                            
                        </tr>
                        <%--<tr>
                            <td><asp:Label runat="server" Text="Nacionalidades" /></td>
                            <td>
                                <asp:ListBox runat="server" ID="DropDownList1">
                                    <asp:ListItem Text="Costarricense" Value="CR"></asp:ListItem>
                                    <asp:ListItem Text="Mexicano" Value="MX"></asp:ListItem>
                                    <asp:ListItem Text="Panameño" Value="PA"></asp:ListItem>
                                </asp:ListBox>
                            </td>
                        </tr>--%>
                    </table>
            
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
