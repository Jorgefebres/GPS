<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CapaPresentacion.Cliente.Index" %>
<%@ Register assembly="GMaps" namespace="Subgurim.Controles" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
            <h1><%: Title %>Página de administración de productos</h1>
        </hgroup>
    <center>
        <table>
            <tr><td><asp:Label ID="Label1" runat="server" Text="Elija el servicio" CssClass="label"></asp:Label></td></tr>
            <tr><td><asp:DropDownList ID="cmbServicios" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="cmbServicios_SelectedIndexChanged" DataTextField="Nombre" DataValueField="IdVentaServicio"></asp:DropDownList></td></tr>
        </table>
    <div id="map">
        <cc1:GMap ID="GMap1" runat="server" />
        </div>
    <script type="text/javascript">
        var map;
        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: latitud.ToString(), lng: longitud.ToString() },
                zoom: 14
            });
        }
    </script>
    <script async defer
      src="https://maps.googleapis.com/maps/api/js? key=YOUR_API_KEY&callback=initMap">
    </script>
        </center>
    <asp:Label ID="Label2" runat="server" Visible="false"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GPSConnectionString %>" SelectCommand="SELECT VentaServicio.IdVentaServicio, Servicios.Nombre FROM VentaServicio INNER JOIN Servicios ON VentaServicio.IdServicio = Servicios.IdServicio WHERE (VentaServicio.Idcliente = @Idcliente)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label2" Name="Idcliente" PropertyName="Text" Type="Int32" />
            
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

