<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Accordion.aspx.cs" Inherits="vistaWeb.Accordion" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %> <%--regista controles de ajax--%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <style type="text/css">  
        .accordion 
        {
        }  
          
        .accordionHeader {  
            border: 1px solid #2F4F4F;  
            color: white;  
            background-color: #2E4d7B;  
            font-family: Arial, Sans-Serif;  
            font-size: 12px;  
            font-weight: bold;  
            padding: 5px;  
            margin-top: 5px;  
            cursor: pointer;  
        }  
          
        .accordionHeaderSelected {  
            border: 1px solid #2F4F4F;  
            color: white;  
            background-color: #5078B3;  
            font-family: Arial, Sans-Serif;  
            font-size: 12px;  
            font-weight: bold;  
            padding: 5px;  
            margin-top: 5px;  
            cursor: pointer;  
        }  
          
        .accordionContent {  
            background-color: #D3DEEF;  
            border: 1px dashed #2F4F4F;  
            border-top: none;  
            padding: 5px;  
            padding-top: 10px;  
        }  
    </style> 
    <div>
       
        <br />
        <br />
        <br />
       
       <h2>Ejemplo de Control Accordion</h2>
       
    </div>
   <br />
   <asp:Accordion   
    ID="Accordion1"   
    runat="server"
     CssClass="accordion"  
    HeaderCssClass="accordionHeader"  
    HeaderSelectedCssClass="accordionHeaderSelected"  
    ContentCssClass="accordionContent" Height="391px" Width="637px">  
<Panes>  
    <asp:AccordionPane 
    ID="AccordionPane1" runat="server">  
    <Header>Albert Einstein</Header>  
        <Content>  
        físico alemán de origen judío, nacionalizado después suizo y estadounidense. 
        Es considerado como el científico más importante del siglo XX.
        En 1905, cuando era un joven físico desconocido, empleado en la Oficina de Patentes de Berna, 
        publicó su teoría de la relatividad especial. 
        En ella incorporó, en un marco teórico simple fundamentado en postulados físicos sencillos, 
        conceptos y fenómenos estudiados antes por Henri Poincaré y por Hendrik Lorentz.
        </Content>  
    </asp:AccordionPane>  
    <asp:AccordionPane ID="AccordionPane2" runat="server">  
        <Header>Mas Datos</Header>  
        <Content>  
       Ante el ascenso del nazismo, el científico abandonó Alemania hacia diciembre de 1932 
       con destino a Estados Unidos, donde impartió docencia en el Instituto de Estudios 
       Avanzados de Princeton. Se nacionalizó estadounidense en 1940. 
       Durante sus últimos años trabajó por integrar en una misma teoría la fuerza gravitatoria
       y la electromagnética.
        </Content>  
    </asp:AccordionPane>  
    <asp:AccordionPane ID="AccordionPane3" runat="server">  
        <Header>Frases</Header>  
        <Content>  
       Todos somos muy ignorantes. Lo que ocurre es que no todos ignoramos las mismas cosas.
       <br />
       Nunca consideres el estudio como una obligación, sino como una oportunidad para penetrar 
       en el bello y maravilloso mundo del saber.
       <br />
       Si buscas resultados distintos, no hagas siempre lo mismo
       <br />
       Hay dos cosas infinitas: el Universo y la estupidez humana. 
       Y del Universo no estoy seguro.
        </Content>  
    </asp:AccordionPane>  
</Panes>  
</asp:Accordion> 
    
</asp:Content>
