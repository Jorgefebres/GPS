<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CapaPresentacion._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
   <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>Nombre de la Empresa</h1>
            </hgroup>
    <section class="featured">
        <div class="content-wrapper">
            <p>
                Descripción de la empresa.</p>
            <p>
                Ofertas/promociones nuevas</p>
        </div>
    </section>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Introducción:</h3>
    <ol class="round">
        <li class="one">
            <h5>Información de la empresa</h5>
            algo de información.
            <a href="About.aspx">Más información…</a>            
        </li> 
        <li class="two">
            <h5>Principales productos</h5>
            Descripción de los productos que se ofertan.
            <a href="Products.aspx">Más información…</a>
        </li>
        <li class="three">
            <h5>Servicio GPS de clientes</h5>
            Descripción del servicio de de vista de clientes GPS.
            <a href="Services.aspx">Más información…</a>
        </li>
    </ol>
</asp:Content>
