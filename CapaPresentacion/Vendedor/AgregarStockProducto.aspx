<%@ Page Title="" Language="C#" MasterPageFile="~/Vendedor/Vendedor.Master" AutoEventWireup="true" CodeBehind="AgregarStockProducto.aspx.cs" Inherits="CapaPresentacion.Vendedor.AgregarStockProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>Página de Administración de Productos</h1>
    </hgroup>
    <center>

     
    <table>
        <tr>
            <td colspan="2"><asp:Label ID="Label0" runat="server" Text="Seleccione el producto y agrege una cantidad" CssClass="label"></asp:Label></td>
            <td rowspan="4"> <asp:ImageButton ID="btnAdd" runat="server" ValidationGroup="add" ImageUrl="~/Images/cambios.jpg" Width="90" ToolTip="Actualizar datos" AutoPostBack="True" OnClick="btnAdd_Click"></asp:ImageButton></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label1" runat="server" Text="Producto:" CssClass="label"></asp:Label></td>
            <td><asp:DropDownList ID="cmbProductos" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Nombre" DataValueField="IdProducto"></asp:DropDownList></td>                        
        </tr>
        <tr>
            <td><asp:Label ID="Label3" runat="server" Text="Cantidad actual:" CssClass="label"></asp:Label></td>
            <td><asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource3" DataTextField="Stock" DataValueField="Stock" Height="25px" Enable="false"></asp:ListBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label2" runat="server" Text="Cantidad a agregar:" CssClass="label"></asp:Label></td>
            <td><asp:TextBox ID="txtCantidad" runat="server" TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="r" runat="server" ErrorMessage="Necesita colocar una cantidad" CssClass="field-validation-error" Text="*" ControlToValidate="txtCantidad" ValidationGroup="add"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Ingrese un valor entero y mayor a cero" CssClass="field-validation-error" Text="*" ControlToValidate="txtCantidad" ValidationGroup="add" MaximumValue="1000" MinimumValue="1" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
            </td>            
        </tr>
    </table>
        <br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" DataKeyNames="Cód">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Cód" HeaderText="Cód" InsertVisible="False" ReadOnly="True" SortExpression="Cód" />
                <asp:BoundField DataField="Proveedor" HeaderText="Proveedor" SortExpression="Proveedor" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Marca" HeaderText="Marca" SortExpression="Marca" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                <asp:BoundField DataField="FechaIngreso" HeaderText="FechaIngreso" SortExpression="FechaIngreso" />
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
        <asp:Label ID="Label10" runat="server" Text="Label" CssClass="field-validation-error" Visible="false"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GPSConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Productos] WHERE ([Estado] = @Estado)" UpdateCommand="UPDATE Productos SET Stock = @Stock WHERE (IdProducto = @IdProducto)">
            <SelectParameters>
                <asp:Parameter DefaultValue="True" Name="Estado" Type="Boolean" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Stock" Type="Int32" />
                <asp:Parameter Name="IdProducto" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GPSConnectionString %>" SelectCommand="SELECT [Stock] FROM [Productos] WHERE ([IdProducto] = @IdProducto)">
            <SelectParameters>
                <asp:ControlParameter ControlID="cmbProductos" Name="IdProducto" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:GPSConnectionString %>" SelectCommand="SELECT Productos.IdProducto AS Cód, Proveedores.Nombre AS Proveedor, Productos.Nombre, Productos.Marca, Productos.Descripcion, Productos.Precio, Productos.Stock, Productos.FechaIngreso FROM Proveedores INNER JOIN Productos ON Proveedores.IdProveedores = Productos.IdProveedor WHERE (Productos.IdProducto = @IdProducto)">
            <SelectParameters>
                <asp:ControlParameter ControlID="cmbProductos" Name="IdProducto" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="add" runat="server" CssClass="field-validation-error" />
        <br />
        </center>
</asp:Content>
