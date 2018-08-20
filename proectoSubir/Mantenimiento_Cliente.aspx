<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla_Video.Master" AutoEventWireup="true" CodeBehind="Mantenimiento_Cliente.aspx.cs" Inherits="P_Taller3.Mantenimiento_Cliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="XX-Large" ForeColor="#CC0000" Text="Mantenimiento de Cliente"></asp:Label>
    <br />
<table style="width:100%;">
    <tr>
        <td style="font-family: 'Agency FB'; font-size: x-large; color: #CC0000; width: 134px"><span style="font-weight: bold">Codigo Cliente</span></td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
        </td>
        <td style="width: 10px">&nbsp;</td>
    </tr>
    </table>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Codigo_Cliente" DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Codigo_Cliente" HeaderText="Codigo_Cliente" ReadOnly="True" SortExpression="Codigo_Cliente" />
            <asp:BoundField DataField="Nombre_Cliente" HeaderText="Nombre_Cliente" SortExpression="Nombre_Cliente" />
            <asp:BoundField DataField="Apellidos_Cliente" HeaderText="Apellidos_Cliente" SortExpression="Apellidos_Cliente" />
            <asp:BoundField DataField="Direccion_Cliente" HeaderText="Direccion_Cliente" SortExpression="Direccion_Cliente" />
            <asp:BoundField DataField="Telfono_Cliente" HeaderText="Telfono_Cliente" SortExpression="Telfono_Cliente" />
            <asp:BoundField DataField="Email_Cliente" HeaderText="Email_Cliente" SortExpression="Email_Cliente" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByXCod" TypeName="P_Taller3.dsVideoTableAdapters.tClienteTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_Codigo_Cliente" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Codigo_Cliente" Type="String" />
            <asp:Parameter Name="Nombre_Cliente" Type="String" />
            <asp:Parameter Name="Apellidos_Cliente" Type="String" />
            <asp:Parameter Name="Direccion_Cliente" Type="String" />
            <asp:Parameter Name="Telfono_Cliente" Type="String" />
            <asp:Parameter Name="Email_Cliente" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox6" DefaultValue="C0000" Name="Codigo_Cliente" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nombre_Cliente" Type="String" />
            <asp:Parameter Name="Apellidos_Cliente" Type="String" />
            <asp:Parameter Name="Direccion_Cliente" Type="String" />
            <asp:Parameter Name="Telfono_Cliente" Type="String" />
            <asp:Parameter Name="Email_Cliente" Type="String" />
            <asp:Parameter Name="Original_Codigo_Cliente" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>
