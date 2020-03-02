<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CacheSinTiempo.aspx.cs" Inherits="vistaWeb.CacheSinTiempo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="text-center">
    <br />
    <br />
    <br />
    <br />
        <h2>VISTA DE LIBROS ( CACHE SIN TIEMPO ) </h2>
        <p>&nbsp;</p>
        <div class="text-left">
        <asp:GridView ID="gvLibros" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Height="161px" HorizontalAlign="Center" Width="874px" AllowPaging="True" OnPageIndexChanging="gvLibros_PageIndexChanging" PageSize="8">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        </div>
        <br />
    </div>

</asp:Content>
