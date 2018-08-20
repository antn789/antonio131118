<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla_Video.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="P_Taller3.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="XX-Large" ForeColor="#CC0000" Text="Bienvenido al sistema de Alquiler"></asp:Label>
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Codigo_Video" DataSourceID="ObjectDataSource1">
    <Columns>
        <asp:CommandField ShowEditButton="True" />
        <asp:TemplateField HeaderText="Codigo_Video">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Codigo_Video", "Alquilar.aspx?Codigo_Video={0}") %>' Text='<%# Eval("Codigo_Video") %>'></asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="Titulo_Video" HeaderText="Titulo_Video" SortExpression="Titulo_Video" />
        <asp:BoundField DataField="Sinopsis_Video" HeaderText="Sinopsis_Video" SortExpression="Sinopsis_Video" />
        <asp:BoundField DataField="Precio_Video" HeaderText="Precio_Video" SortExpression="Precio_Video" />
        <asp:BoundField DataField="Stock_Video" HeaderText="Stock_Video" SortExpression="Stock_Video" />
        <asp:ImageField DataImageUrlField="Portada_" DataImageUrlFormatString="../Portadas/{0}" HeaderText="Portada">
        </asp:ImageField>
    </Columns>
</asp:GridView>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="P_Taller3.dsVideoTableAdapters.tVideo1TableAdapter" UpdateMethod="Update">
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
<br />
</asp:Content>
