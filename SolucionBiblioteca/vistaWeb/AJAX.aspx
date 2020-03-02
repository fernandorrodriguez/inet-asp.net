<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AJAX.aspx.cs" Inherits="vistaWeb.AJAX" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align:center">
        <asp:UpdatePanel ID="upPanelAjax" runat="server" style="background-color:chocolate">
        <%---los controles de este panel tiene su propia actualizacion
            -ContentTemplate es el contenedor de los elementos ajax--%>
        <ContentTemplate>
            <br />
            <asp:Label ID="lblDentroDelPanel" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnPanel" runat="server" Text="Actualiza Panel" CssClass="btn-primary" OnClick="btnPanel_Click" />
            <br />
            <br />
            <asp:Timer ID="tmrPanel" runat="server" Interval="5000" OnTick="tmrPanel_Tick"></asp:Timer> 
        </ContentTemplate>
         <Triggers> <%--permite controles externos--%>
             <asp:AsyncPostBackTrigger ControlID="btnExterno" /> <%--el boton se comporta como si estuviera adentro del panel--%>
         </Triggers>
    </asp:UpdatePanel>
        <div>
            <asp:UpdateProgress ID="upgPanelDeEspera" runat="server" AssociatedUpdatePanelID="upPanelAjax">
                <ProgressTemplate>
                    Procesando información, espere un momento...
                    <br />
                    <img src="images/103.gif" />
                </ProgressTemplate>
            </asp:UpdateProgress>
        </div>
    </div>
    <div style="text-align:center">
        <asp:Label ID="lblFueraDelPanel" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnActualizarPagina" runat="server" CssClass="btn-danger" Text="Actualizar pagina" OnClick="btnActualizarPagina_Click" />
        <br />
        <br />
        <asp:Label ID="lblPagina" runat="server" text=""></asp:Label>
        <br />
        <br />   
        <asp:Button ID="btnExterno" runat="server" Text="Boton externo" CssClass="alert-success" OnClick="btnExterno_Click" />
    </div>
</asp:Content>