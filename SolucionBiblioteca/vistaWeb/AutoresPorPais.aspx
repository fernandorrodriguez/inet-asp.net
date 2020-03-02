<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AutoresPorPais.aspx.cs" Inherits="vistaWeb.AutoresPorPais" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h2>Consulta de autores por pais</h2>
        <p>&nbsp;</p>
        <p>
            <table style="width:100%;" class="table-bordered">
                <tr>
                    <td style="text-align: right">
                        <asp:Label ID="lblPais" runat="server" Text="Pais"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlPais" runat="server" OnSelectedIndexChanged="ddlPais_SelectedIndexChanged" AutoPostBack="true" > <%--selectedIndexChange y autpostback traen los datos sin usar el boton, ya que los datos se deben cargar antes, no esperan a un boton--%>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        <asp:Button ID="btnPais" runat="server" Text="Consultar" OnClick="btnPais_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblCantidad" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>


    </div>

</asp:Content>
