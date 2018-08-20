<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla_Video.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="P_Taller3.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <span style="font-family: 'Agency FB'; font-weight: bold; font-size: xx-large; color: #CC0000">Login<br />
    <table style="width: 100%;">
        <tr>
            <td style="width: 136px">ID_Usuario</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 136px; height: 43px">Contraseña</td>
            <td style="height: 43px">
                <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td style="height: 43px"></td>
        </tr>
        <tr>
            <td style="width: 136px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" OnDataBinding="Page_Load" Text="ingresar" />
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 136px">&nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="ID =Admi  PASS =123456789"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    </span>
</asp:Content>
