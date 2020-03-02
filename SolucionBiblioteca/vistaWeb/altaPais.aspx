<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="altaPais.aspx.cs" Inherits="vistaWeb.altaPais" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h2>Ingreso de nuevo pais</h2>
        <p>&nbsp;</p>
            <table style="width:50%;" class="table-bordered">
                <tr>
                    <td>
                        <asp:Label ID="lblNombre" runat="server" Text="Nombre de Pais"></asp:Label>
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
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

    </div>

</asp:Content>
