<%@ Page Title="" Language="C#" MasterPageFile="~/Vendedor/Vendedor.Master" AutoEventWireup="true" CodeBehind="Ventas.aspx.cs" Inherits="CapaPresentacion.Vendedor.Ventas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2 id="lblTitulo" runat="server">Venta de Productos y/o Servicios.</h2>
    </hgroup>
    <center>
        <table >
            <tr>
                <td><asp:Label ID="Label1" runat="server" Text="Vender Productos" CssClass="label"></asp:Label></td>
                <td></td>
                <td><asp:Label ID="Label2" runat="server" Text="Vender Servicios" CssClass="label"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:ImageButton ID="btnVProducto" runat="server" ImageUrl="~/Images/producto.png" Width="80" ToolTip="Desea vender Productos?" PostBackUrl="~/Vendedor/VentaProductos.aspx"></asp:ImageButton></td>
                <td></td>
                <td><asp:ImageButton ID="btnVServicio" runat="server" ImageUrl="~/Images/transporte.png" Width="80" ToolTip="Desea vender Servicios?" PostBackUrl="~/Vendedor/VentaServicios.aspx"></asp:ImageButton></td>
            </tr>
        </table>
    </center>
</asp:Content>
