<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="altaEditorial.aspx.cs" Inherits="vistaWeb.altaEditorial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h2>Ingreso de nueva editorial</h2>
        <p>&nbsp;</p>
            <table style="width:50%;" class="table-bordered">
                <tr>
                    <td>
                        <asp:Label ID="lblNombre" runat="server" Text="Nombre de editorial"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    </td>
                    <td>

                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="El nombre es obligatorio" CssClass="text-danger"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnAgregar" runat="server" Text="Agregar" CssClass="btn-primary" Width="176px" OnClick="btnAgregar_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>



    </div>

    <br />
    <asp:GridView ID="gvEditorial" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="264px">
        <AlternatingRowStyle BackColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>

</asp:Content>
