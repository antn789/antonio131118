<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla_Video.Master" AutoEventWireup="true" CodeBehind="Nuevo_Video.aspx.cs" Inherits="P_Taller3.Nuevo_Video" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="XX-Large" ForeColor="#CC0000" Text="Registro de Video"></asp:Label>
<br />
<table style="width:100%;">
    <tr>
        <td style="font-family: 'Agency FB'; font-size: x-large; color: #CC0000; width: 134px"><span style="font-weight: bold">Codigo Video</span></td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server" Width="200px">ingrese solo un numero</asp:TextBox>
            <asp:Label ID="Label7" runat="server" Font-Italic="True" Font-Names="Agency FB" Font-Size="Medium" Text="Codigo se Autogenerara"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 134px; font-family: 'Agency FB'; font-size: x-large; color: #CC0000"><span style="font-weight: bold">Titulo Video</span></td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 134px; font-family: 'Agency FB'; font-size: x-large; color: #CC0000"><span style="font-weight: bold">Sinopsis Video</span></td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 134px; font-family: 'Agency FB'; font-size: x-large; color: #CC0000"><span style="font-weight: bold">Precio Video</span></td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 134px; font-family: 'Agency FB'; font-size: x-large; color: #CC0000"><span style="font-weight: bold">Stock Video</span></td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 134px; font-family: 'Agency FB'; font-size: x-large; color: #CC0000"><span style="font-weight: bold">Portada</span></td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" Width="200px">Se autogenera</asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
<asp:Label ID="Label8" runat="server"></asp:Label>
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Guardar" style="height: 26px" />
    <asp:Button ID="Button2" runat="server" Text="Nuevo" OnClick="Button2_Click1" />
<br />
<br />
</asp:Content>
