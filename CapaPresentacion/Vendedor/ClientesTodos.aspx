<%@ Page Title="" Language="C#" MasterPageFile="~/Vendedor/Vendedor.Master" AutoEventWireup="true" CodeBehind="ClientesTodos.aspx.cs" Inherits="CapaPresentacion.Vendedor.ClientesTodos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>Clientes</h1>
        <h2 id="lblTitulo" runat="server">.</h2>
    </hgroup>
    <center>
<asp:DataGrid ID="DataGrid1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
    
    <AlternatingItemStyle BackColor="White" />
    <EditItemStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <ItemStyle BackColor="#EFF3FB" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        </asp:DataGrid>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GPSConnectionString %>" SelectCommand="SELECT IdCliente AS Cód, Nombres +' '+ Apellidos AS Cliente, TipoDocumento AS [DNI/RUC], NDocumento AS [N° Documento], Direccion AS Dirección, Telefono AS Teléfono, Telefono1 AS [Teléfono 2], Mail AS [Correo Electrónico], Usuario, Password FROM Clientes">
        </asp:SqlDataSource>
    </center>
</asp:Content>
