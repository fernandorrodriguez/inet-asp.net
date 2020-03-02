<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Operaciones.aspx.cs" Inherits="vistaWeb.Operaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2 aria-autocomplete="c">Suma de 2 enteros</h2>
        <p>&nbsp;</p>
        <p>
            <table style="width:100%;">
                <tr>
                    <td><asp:Label ID="lblOperacion" runat="server" Text="Operación"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="ddlOperacion" runat="server" CssClass="dropdown-toggle">
                            <asp:ListItem>Suma</asp:ListItem>
                            <asp:ListItem>Resta</asp:ListItem>
                            <asp:ListItem>Multiplicacion</asp:ListItem>
                        </asp:DropDownList></td>
                    <td>
                        <%--el operador dice que checkear y el type el tipo--%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblNumeroUno" runat="server" Text="Ingrese numero 1"></asp:Label>
                    </td>
                    <td><asp:TextBox ID="txtNumeroUno" runat="server" MaxLength="6"></asp:TextBox></td>
                    <td>
                        <asp:CompareValidator ID="cvNumeroUno" runat="server" ErrorMessage="Formato incompatible" ControlToValidate="txtNumeroUno" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator> </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Ingrese numero 2"></asp:Label></td>
                    <td><asp:TextBox ID="txtNumeroDos" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:CompareValidator ID="cvNumeroUno0" runat="server" ErrorMessage="Formato incompatible" ControlToValidate="txtNumeroDos" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator> </td>
                </tr>
                <tr>
                    <td><asp:Button ID="btnCalcular" runat="server" CssClass="btn-primary" Text="Calcular" OnClick="btnSuma_Click"/></td>
                    <td><asp:Label ID="lblResultado" runat="server"></asp:Label></td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
        
    </div>
</asp:Content>
