<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla_Video.Master" AutoEventWireup="true" CodeBehind="Alquiler_Video.aspx.cs" Inherits="P_Taller3.Alquiler_Video" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <span style="font-family: 'Agency FB'; font-weight: bold; font-size: xx-large; color: #CC0000">Alquiler Video</span><table style="width:100%;">
            <tr>
                <td style="width: 145px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="#CC0000" Text="Codigo Cliente"></asp:Label>
                </td>
                <td style="width: 134px">
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Button" />
                <asp:Label ID="lbl_estado" runat="server" Font-Italic="True" Font-Names="Agency FB" Text="..."></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 145px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="#CC0000" Text="Codigo Video"></asp:Label>
                </td>
                <td style="width: 134px">
                <asp:TextBox ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Button" />
                <asp:Label ID="Label9" runat="server" Font-Italic="True" Font-Names="Agency FB" Font-Size="X-Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Codigo_Video" DataSourceID="ObjectDataSource1" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" ForeColor="#CC0000" Height="50px" Width="280px">
                        <Fields>
                            <asp:BoundField DataField="Titulo_Video" HeaderText="Titulo_Video" SortExpression="Titulo_Video" />
                            <asp:BoundField DataField="Sinopsis_Video" HeaderText="Sinopsis_Video" SortExpression="Sinopsis_Video" />
                            <asp:BoundField DataField="Precio_Video" HeaderText="Precio_Video" SortExpression="Precio_Video" />
                            <asp:BoundField DataField="Stock_Video" HeaderText="Stock_Video" SortExpression="Stock_Video" />
                            <asp:ImageField DataImageUrlField="Portada_" DataImageUrlFormatString="../Portadas/{0}" HeaderText="Portada">
                            </asp:ImageField>
                        </Fields>
                        <FooterStyle BackColor="#CC0000" BorderColor="#CC0000" />
                    </asp:DetailsView>
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
                            <asp:ControlParameter ControlID="TextBox2" DefaultValue="V0000" Name="Codigo_Video" PropertyName="Text" Type="String" />
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
                </td>
            </tr>
            <tr>
                <td style="width: 145px">
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="#CC0000" Text="Dias de Alquiler"></asp:Label>
                </td>
                <td style="width: 134px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 145px">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="#CC0000" Text="Costo del Alquiler"></asp:Label>
                </td>
                <td style="width: 134px">
                <asp:Label ID="lbl_Precio" runat="server" Font-Italic="True" Font-Names="Agency FB" Font-Size="X-Large"></asp:Label>
                </td>
                <td>
                <asp:Label ID="Label8" runat="server" Font-Italic="True" Font-Names="Agency FB" Font-Size="X-Large" Text="  Soles"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 145px">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" />
                </td>
                <td style="width: 134px">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Agency FB" Font-Size="XX-Large"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
