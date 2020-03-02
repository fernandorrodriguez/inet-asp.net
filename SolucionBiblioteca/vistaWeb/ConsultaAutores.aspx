<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultaAutores.aspx.cs" Inherits="vistaWeb.ConsultaAutores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h2>Consulta de Autores</h2>
    
    <asp:UpdatePanel ID="upGrilla" runat="server">
        <ContentTemplate>
        <asp:GridView ID="gvAutores" runat="server" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" Height="395px" OnPageIndexChanging="gvAutores_PageIndexChanging" Width="758px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:Timer ID="tmrPanel" runat="server" Interval="1000" OnTick="tmrPanel_Tick">
        </asp:Timer> 
         <asp:Label ID="lblTimer" runat="server" CssClass="label-info"></asp:Label>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    
    <br />


</asp:Content>
