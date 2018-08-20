<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla_Video.Master" AutoEventWireup="true" CodeBehind="Devolver.aspx.cs" Inherits="P_Taller3.Devolver" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <span style="font-family: 'Agency FB'; font-weight: bold; font-size: xx-large; color: #CC0000">Devolver Video</span></p>
    <p>
        <table style="width:100%;">
            <tr>
                <td style="height: 23px; width: 162px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="#CC0000" Text="Codigo Cliente"></asp:Label>
                </td>
                <td style="height: 23px; width: 146px">
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px"></asp:TextBox>
                </td>
                <td style="height: 23px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 162px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="#CC0000" Text="Codigo Video"></asp:Label>
                </td>
                <td style="width: 146px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Buscar" />
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Codigo_Prestamo" DataSourceID="ObjectDataSource2">
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:BoundField DataField="Codigo_Prestamo" HeaderText="Codigo_Prestamo" InsertVisible="False" ReadOnly="True" SortExpression="Codigo_Prestamo" />
                            <asp:BoundField DataField="Codigo_Video" HeaderText="Codigo_Video" SortExpression="Codigo_Video" />
                            <asp:BoundField DataField="Codigo_Cliente" HeaderText="Codigo_Cliente" SortExpression="Codigo_Cliente" />
                            <asp:BoundField DataField="Fecha_Prestamo" HeaderText="Fecha_Prestamo" SortExpression="Fecha_Prestamo" />
                            <asp:CheckBoxField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                        </Columns>
                    </asp:GridView>
                    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByCV" TypeName="P_Taller3.dsVideoTableAdapters.tAlquilerTableAdapter" UpdateMethod="Update">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_Codigo_Prestamo" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Codigo_Video" Type="String" />
                            <asp:Parameter Name="Codigo_Cliente" Type="String" />
                            <asp:Parameter Name="Fecha_Prestamo" Type="DateTime" />
                            <asp:Parameter Name="Fecha_Devolucion" Type="DateTime" />
                            <asp:Parameter Name="Costo" Type="Decimal" />
                            <asp:Parameter Name="Estado" Type="Boolean" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox2" DefaultValue="V0000" Name="Codigo_Video" PropertyName="Text" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Codigo_Video" Type="String" />
                            <asp:Parameter Name="Codigo_Cliente" Type="String" />
                            <asp:Parameter Name="Fecha_Prestamo" Type="DateTime" />
                            <asp:Parameter Name="Fecha_Devolucion" Type="DateTime" />
                            <asp:Parameter Name="Costo" Type="Decimal" />
                            <asp:Parameter Name="Estado" Type="Boolean" />
                            <asp:Parameter Name="Original_Codigo_Prestamo" Type="Int32" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByCC" TypeName="P_Taller3.dsVideoTableAdapters.tAlquilerTableAdapter" UpdateMethod="Update">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_Codigo_Prestamo" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Codigo_Video" Type="String" />
                            <asp:Parameter Name="Codigo_Cliente" Type="String" />
                            <asp:Parameter Name="Fecha_Prestamo" Type="DateTime" />
                            <asp:Parameter Name="Fecha_Devolucion" Type="DateTime" />
                            <asp:Parameter Name="Costo" Type="Decimal" />
                            <asp:Parameter Name="Estado" Type="Boolean" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" DefaultValue="C0000" Name="Codigo_Cliente" PropertyName="Text" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Codigo_Video" Type="String" />
                            <asp:Parameter Name="Codigo_Cliente" Type="String" />
                            <asp:Parameter Name="Fecha_Prestamo" Type="DateTime" />
                            <asp:Parameter Name="Fecha_Devolucion" Type="DateTime" />
                            <asp:Parameter Name="Costo" Type="Decimal" />
                            <asp:Parameter Name="Estado" Type="Boolean" />
                            <asp:Parameter Name="Original_Codigo_Prestamo" Type="Int32" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 162px">
                    <asp:Button ID="Button3" runat="server" Text="Devolver" />
                </td>
                <td style="width: 146px">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 162px">
                    <asp:Button ID="Button4" runat="server" Text="Nuevo Alquiler" />
                </td>
                <td style="width: 146px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
