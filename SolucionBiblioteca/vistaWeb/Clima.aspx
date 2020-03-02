<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clima.aspx.cs" Inherits="vistaWeb.Clima" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <div>
      <a href="http://www.accuweather.com/es/ar/buenos-aires/7894/current-weather/7894" 
         class="aw-widget-legal">
      </a>
    <div id="awtd1498830637571" 
        class="aw-widget-36hour"  
        data-locationkey="" 
        data-unit="c" 
        data-language="es" 
        data-useip="true" 
        data-uid="awtd1498830637571" 
        data-editlocation="true">
    </div>
        <script type="text/javascript" src="https://oap.accuweather.com/launch.js"></script>
    </div>

</asp:Content>
