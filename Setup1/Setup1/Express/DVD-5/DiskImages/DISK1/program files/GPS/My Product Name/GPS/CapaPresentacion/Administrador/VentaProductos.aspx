<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrar.Master" AutoEventWireup="true" CodeBehind="VentaProductos.aspx.cs" Inherits="CapaPresentacion.Administrador.VentaProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>Registro de Ventas de Productos</h1>
    </hgroup>
    <asp:Label ID="lblFecha" runat="server" ></asp:Label>
    <center>
        <asp:Table ID="Table1" runat="server" Width="1084px">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label1" runat="server" Text="Nombre del Cliente: " CssClass="label"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtNombreCliente" runat="server" AutoCompleteType="Enabled"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:ImageButton ID="btnBuscar" runat="server" ToolTip="Buscar Cliente" ImageUrl="~/Images/listar.jpg" Height="40px" Width="40px" OnClick="btnBuscar_Click"/>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:ImageButton ID="btnCliente" runat="server" ToolTip="Agregar Cliente" ImageUrl="~/Images/agregar.png" Height="40px" Width="40px" PostBackUrl="~/Administrador/Clientes.aspx"/>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label2" runat="server" Text="Tipo de comprobante: " CssClass="label"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="cmbComprobante" runat="server">
                        <asp:ListItem Value="False" Text="Boleta"></asp:ListItem>
                        <asp:ListItem Value="True" Text="Factura"></asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label4" runat="server" Text="N° de Documento: " CssClass="label"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtDoc" runat="server" MaxLength="11"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>    
                
            </asp:TableRow>
        </asp:Table>
        <asp:Table ID="Table2" runat="server" Height="37px" Width="867px">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label3" runat="server" Text="Nombre del Producto: " CssClass="label"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="cmbProducto" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Nombre" DataValueField="IdProducto" OnSelectedIndexChanged="cmbProducto_SelectedIndexChanged"></asp:DropDownList>
                    <!--<asp:TextBox ID="txtProducto" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="r1" runat="server" ValidationGroup="Product" ErrorMessage="Ingrese el nombre del producto a buscar" Text="*" ControlToValidate="txtProducto"></asp:RequiredFieldValidator>-->
                </asp:TableCell>
                <asp:TableCell>
                    <asp:ImageButton ID="btnListarProductos" PostBackUrl="~/Administrador/ProductosTodos.aspx" runat="server" ToolTip="Listar Productos" ImageUrl="~/Images/mostrar.png" Width="40px" Height="40"/>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label6" runat="server" Text="Cantidad: " CssClass="label"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtCantidad" runat="server" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="r2" runat="server" ValidationGroup="Add"  CssClass="field-validation-error" ErrorMessage="Ingrese una cantidad" Text="*" ControlToValidate="txtCantidad"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ValidationGroup="Add"  CssClass="field-validation-error" ErrorMessage="Ingrese una cantidad entera y mayor a cero." Text="*" ControlToValidate="txtCantidad" MinimumValue="0" MaximumValue="1000000" Type="Integer"></asp:RangeValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:Label ID="Label7" runat="server" Text="Cantida en almacén: " CssClass="label" Enabled="false"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtStock" runat="server" TextMode="Number" Enabled="false"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2" HorizontalAlign="Right" >
                    <asp:Label ID="Label5" runat="server" Text="Precio: " CssClass="label" Enabled="false"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtPrecioProducto" runat="server" TextMode="Number" Enabled="false"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>    
                <asp:TableCell ColumnSpan="7" HorizontalAlign="Center">
                    <asp:ImageButton ID="btnAgregarProducto" ValidationGroup="Add" runat="server" ToolTip="Agregar Producto"  ImageUrl="~/Images/agregar_producto.png" Width="35px" Height="35" OnClick="btnAgregarProducto_Click"/>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:Label ID="lblMensaje" runat="server" CssClass="field-validation-error" Visible="false"></asp:Label>
        <asp:ImageButton ID="btnGuardarVenta" runat="server" ToolTip="Grabar Venta" CssClass="float-right" ImageUrl="~/Images/guardar.png" Width="60" OnClick="btnGuardarVenta_Click"></asp:ImageButton>
        <asp:GridView ID="dataGridViewProductos" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="461px" OnRowDataBound="dataGridViewProductos_RowDataBound" ShowFooter="True" OnRowDeleting="dataGridViewProductos_RowDeleting">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="false" ControlStyle-Width="15" ButtonType="Image" ShowDeleteButton="true" DeleteImageUrl="~/Images/Close-64.jpg" SelectImageUrl="~/Images/selecciona.png" />
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

        <table visible="false">
            <tr>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <td><asp:Label ID="Label10" visible="false" runat="server" Text="Total a pagar: " CssClass="label"></asp:Label></td>
                <td><asp:TextBox ID="txtTotal" runat="server" visible="false" Enabled="false" TextMode="Number"></asp:TextBox></td>
            </tr>
        </table>


        <asp:ValidationSummary  ValidationGroup="Product" ID="ValidationSummary1" runat="server" CssClass="field-validation-error"/>
        <asp:ValidationSummary  ValidationGroup="Add" ID="ValidationSummary2" runat="server" CssClass="field-validation-error"/>
        <asp:ValidationSummary ID="v" runat="server"  CssClass="field-validation-error"/>
        <asp:SqlDataSource ID="SqlDataSource0" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GPSConnectionString %>" InsertCommand="INSERT INTO [Ventas] ([IdCliente], [IdEmpleado], [TipoVenta], [Total], [Fecha]) VALUES (@IdCliente, @IdEmpleado, @TipoVenta, @Total, @Fecha)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Ventas]">
            <InsertParameters>
                <asp:Parameter Name="IdCliente" Type="Int32" />
                <asp:Parameter Name="IdEmpleado" Type="Int32" />
                <asp:Parameter Name="TipoVenta" Type="Boolean" />
                <asp:Parameter Name="Total" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="Fecha" />
            </InsertParameters>
        </asp:SqlDataSource>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GPSConnectionString %>" InsertCommand="INSERT INTO [DetalleVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (@IdVenta, @IdProducto, @Cantidad)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [DetalleVenta] ">
            <InsertParameters>
                <asp:Parameter Name="IdVenta" Type="Int32" />
                <asp:Parameter Name="IdProducto" Type="Int32" />
                <asp:Parameter Name="Cantidad" Type="Int32" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GPSConnectionString %>" SelectCommand="SELECT [IdProducto], [Nombre], [Precio], [Stock] FROM [Productos] WHERE ([Estado] = @Estado)">
            <SelectParameters>
                <asp:Parameter DefaultValue="True" Name="Estado" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource>
    </center>
</asp:Content>
