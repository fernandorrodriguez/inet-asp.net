<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Outputcache.aspx.cs" Inherits="vistaWeb.Outputcache" %>
<%@ OutputCache Duration="10" VaryByParam="none" %> 
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="text-center">
        <!-- <%@ OutputCache Duration="10" VaryByParam="none" %>  indica que la pagina se guarda en cache, que dure 10 segundos y que ignora parametros-->
        <br />
            <asp:Label ID="lblfecha" runat="server" Text="" />
        <br />
        <br />    
        <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" CssClass="btn-primary" OnClick="btnActualizar_Click" />
   </div>

</asp:Content>
