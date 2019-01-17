<%@ Page Title="" Language="C#" MasterPageFile="~/Vendedor/Vendedor.Master" AutoEventWireup="true" CodeBehind="ProductosTodos.aspx.cs" Inherits="CapaPresentacion.Vendedor.ProductosTodos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <center>
        <table><tr>
            <td><asp:Label ID="Label9" runat="server" Text="Seleccione el estado del producto" CssClass="label"></asp:Label></td></tr><tr>
            <td><asp:DropDownList ID="cmbEstado" runat="server" AutoPostBack="True"><asp:ListItem Value="False" Text="Inactivo"></asp:ListItem><asp:ListItem Text="Activo" Value="True"></asp:ListItem></asp:DropDownList></td>
            </tr></table>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cód" DataSourceID="SqlDataSourceProductos" ForeColor="#333333" GridLines="None" AllowPaging="True">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="Cód" HeaderText="Cód" InsertVisible="False" ReadOnly="True" SortExpression="Cód" />
        <asp:BoundField DataField="Proveedor" HeaderText="Proveedor" SortExpression="Proveedor" />
        <asp:BoundField DataField="Producto" HeaderText="Producto" SortExpression="Producto" />
        <asp:BoundField DataField="Marca" HeaderText="Marca" SortExpression="Marca" />
        <asp:BoundField DataField="Descripción" HeaderText="Descripción" SortExpression="Descripción" />
        <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
        <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
        <asp:BoundField DataField="Fecha de ingreso" HeaderText="Fecha de ingreso" SortExpression="Fecha de ingreso" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceProductos" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GPSConnectionString %>" InsertCommand="INSERT INTO Productos(IdProveedor, Nombre, Marca, Descripcion, Precio, Stock, FechaIngreso, Imagen) VALUES (@IdProveedor, @Nombre, @Marca, @Descripcion, @Precio, @Stock, @FechaIngreso, @Imagen)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT Productos.IdProducto AS Cód, Proveedores.Nombre AS Proveedor, Productos.Nombre AS Producto, Productos.Marca, Productos.Descripcion AS Descripción, Productos.Precio, Productos.Stock, Productos.FechaIngreso AS [Fecha de ingreso] FROM Productos INNER JOIN Proveedores ON Productos.IdProveedor = Proveedores.IdProveedores WHERE (Productos.Estado = @Estado)">
        <InsertParameters>
            <asp:Parameter Name="IdProveedor" Type="Int32" />
            <asp:Parameter Name="Nombre" Type="String" />
            <asp:Parameter Name="Marca" Type="String" />
            <asp:Parameter Name="Descripcion" Type="String" />
            <asp:Parameter Name="Precio" Type="Decimal" />
            <asp:Parameter Name="Stock" Type="Int32" />
            <asp:Parameter DbType="Date" Name="FechaIngreso" />
            <asp:Parameter Name="Imagen" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="cmbEstado" Name="Estado" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    </center>

</asp:Content>
