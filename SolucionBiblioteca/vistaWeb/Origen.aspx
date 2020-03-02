<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Origen.aspx.cs" Inherits="vistaWeb.Origen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align:center">
        <asp:Label ID="lblDato" Text="Dato a pasar: " runat="server"></asp:Label>
        <asp:TextBox ID="txtDato" runat="server" ></asp:TextBox>
        <br />
        <asp:Button ID="btnEnviar" Text="Enviar" runat="server" OnClick="btnEnviar_Click" />

    </div>
</asp:Content>
