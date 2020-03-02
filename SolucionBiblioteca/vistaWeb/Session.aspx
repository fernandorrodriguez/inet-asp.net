<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Session.aspx.cs" Inherits="vistaWeb.Session" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <div class="text-center">
        <asp:Label ID="lblUsuario" runat="server" Text="Nombre:"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnGurdar" runat="server" Text="GUARDAR" OnClick="btnGuardar_Click" CssClass="btn-success" />
         </div>

</asp:Content>
