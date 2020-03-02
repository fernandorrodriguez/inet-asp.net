<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BuscarAutores.aspx.cs" Inherits="vistaWeb.BuscarAutores" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <h2>Buscar Autor</h2>
    <p>
        <asp:TextBox ID="txtBuscar" runat="server" style="font-size: large" Width="422px"></asp:TextBox>

        <asp:AutoCompleteExtender 
        ID="txtBuscar_AutoCompleteExtender" 
        runat="server" 
        Enabled="true"
        TargetControlID="txtBuscar"
        MinimumPrefixLength="1"
        ServiceMethod="ObtenerAutores"
        ServicePath="Servicio.asmx"
        EnableCaching="true"
        UseContextKey="true"
        CompletionSetCount="10"
        CompletionInterval="0">
    </asp:AutoCompleteExtender>


</asp:Content>
