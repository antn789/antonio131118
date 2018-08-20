<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla_Video.Master" AutoEventWireup="true" CodeBehind="Mantenimiento_Video.aspx.cs" Inherits="P_Taller3.Mantenimiento_Video" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="XX-Large" ForeColor="#CC0000" Text="Mantenimiento Video"></asp:Label>
<table style="width:100%;">
    <tr>
        <td style="font-family: 'Agency FB'; font-size: x-large; color: #CC0000; width: 134px"><span style="font-weight: bold">Codigo Video</span></td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
        </td>
        <td style="width: 10px">&nbsp;</td>
    </tr>
    </table>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Codigo_Video" DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Codigo_Video" HeaderText="Codigo_Video" ReadOnly="True" SortExpression="Codigo_Video" />
            <asp:BoundField DataField="Titulo_Video" HeaderText="Titulo_Video" SortExpression="Titulo_Video" />
            <asp:BoundField DataField="Sinopsis_Video" HeaderText="Sinopsis_Video" SortExpression="Sinopsis_Video" />
            <asp:BoundField DataField="Precio_Video" HeaderText="Precio_Video" SortExpression="Precio_Video" />
            <asp:BoundField DataField="Stock_Video" HeaderText="Stock_Video" SortExpression="Stock_Video" />
            <asp:BoundField DataField="Portada_" HeaderText="Portada_" SortExpression="Portada_" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByXCod" TypeName="P_Taller3.dsVideoTableAdapters.tVideo1TableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_Codigo_Video" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Codigo_Video" Type="String" />
            <asp:Parameter Name="Titulo_Video" Type="String" />
            <asp:Parameter Name="Sinopsis_Video" Type="String" />
            <asp:Parameter Name="Precio_Video" Type="Decimal" />
            <asp:Parameter Name="Stock_Video" Type="Int32" />
            <asp:Parameter Name="Portada_" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox6" DefaultValue="V0000" Name="Codigo_Video" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Titulo_Video" Type="String" />
            <asp:Parameter Name="Sinopsis_Video" Type="String" />
            <asp:Parameter Name="Precio_Video" Type="Decimal" />
            <asp:Parameter Name="Stock_Video" Type="Int32" />
            <asp:Parameter Name="Portada_" Type="String" />
            <asp:Parameter Name="Original_Codigo_Video" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <br />
    <asp:Label ID="Label2" runat="server"></asp:Label>
    <br />
</asp:Content>
