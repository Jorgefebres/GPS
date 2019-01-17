<%@ Page Title="" Language="C#" MasterPageFile="~/Vendedor/Vendedor.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="CapaPresentacion.Vendedor.Productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>Productos</h1>
        <h2 id="lblTitulo" runat="server">.</h2>
    </hgroup>
    <asp:Label ID="lblMensaje1" runat="server" Visible="false" CssClass="field-validation-error"></asp:Label>
    <asp:Table ID="Table1" runat="server" Height="75px" Width="248px" CssClass="float-right">
        <asp:TableRow ID="TableRow1" runat="server">
            <asp:TableCell>
                <table style="width: 100%;">
                    <tr>
                        <td></td>
                        <td colspan="2" class="label">Buscar Producto</td>
                    </tr>
                    <tr>
                        <td class="label">Nombre</td>
                        <td><asp:TextBox ID="txtBuscarNombre" runat="server" AutoCompleteType="Search"></asp:TextBox>

                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click"/></td>
                    </tr>
                </table>
            </asp:TableCell>
            <asp:TableCell>
                <asp:ImageButton ID="btnListar" runat="server" ToolTip="Mostrar todos los Productos" PostBackUrl="~/Vendedor/ProductosTodos.aspx" ImageUrl="~/Images/listar.jpg" Height="50px" Width="50px" />
            </asp:TableCell>
            <asp:TableCell>
                <asp:ImageButton ID="btnAgregar" runat="server" ImageUrl="~/Images/agregar.png" ToolTip="Agregar nuevo Producto" Height="50px" Width="50px" OnClick="btnAgregar_Click"/>
            </asp:TableCell>
            <asp:TableCell>
                <asp:ImageButton ID="btnEditar" runat="server" ImageUrl="~/Images/Editar1.png" ToolTip="Editar un Producto" Height="50px" Width="50px" OnClick="btnEditar_Click" Visible="false"/>
            </asp:TableCell>
            <asp:TableCell>
                <asp:ImageButton ID="btnEliminar" runat="server" ImageUrl="~/Images/eliminar.jpg" ToolTip="Eliminar Producto" Height="50px" Width="50px" OnClick="btnEliminar_Click" Visible="false"/>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <br />
    
    <asp:Table ID="Table2" runat="server" Visible="false">
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Right">
                <asp:Label ID="Label1" runat="server" Text="Proveedor: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:DropDownList ID="cmbProveedores" Enabled="false" runat="server"  DataSourceID="SqlDataSource1" DataTextField="Nombre" DataValueField="IdProveedores"></asp:DropDownList>
                <asp:ImageButton ID="btnAddProveedor" runat="server" ImageUrl="~/Images/agregar.png" ToolTip="Agregar nuevo Proveedor" Height="30px" Width="30px" Visible="false" PostBackUrl="~/Vendedor/Proveedores.aspx" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Right">
                <asp:Label ID="Label2" runat="server" Text="Nombre del Producto: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="Guardar" ErrorMessage="No se ingresó el nombre del producto" ControlToValidate="txtNombreProducto" CssClass="field-validation-error"></asp:RequiredFieldValidator><br />
                <asp:TextBox ID="txtNombreProducto" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Right">        
            <asp:TableCell>
                <asp:Label ID="Label3" runat="server" Text="Marca del Producto: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="Guardar" ErrorMessage="No se ingresó la marca del producto" ControlToValidate="txtMarcaProducto" CssClass="field-validation-error"></asp:RequiredFieldValidator><br />
                <asp:TextBox ID="txtMarcaProducto" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Right">
            <asp:TableCell>
                <asp:Label ID="Label4" runat="server" Text="Descripción del Producto: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="Guardar" runat="server" ErrorMessage="No se ingresó la marca del producto" ControlToValidate="txtDescripcionProducto" CssClass="field-validation-error"></asp:RequiredFieldValidator><br />
                <asp:TextBox ID="txtDescripcionProducto" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Right">
            <asp:TableCell>
                <asp:Label ID="Label5" runat="server" Text="Precio del Producto: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:RequiredFieldValidator ValidationGroup="Guardar" ID="RequiredFieldValidator4" runat="server" ErrorMessage="No se ingresó el precio del producto" ControlToValidate="txtPrecioProducto" CssClass="field-validation-error"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" ValidationGroup="Guardar" runat="server" ErrorMessage="El precio no se encuentra en el rango establecido (mayor a 0)" MinimumValue="0" MaximumValue="1000" ControlToValidate="txtPrecioProducto" CssClass="field-validation-error" Type="Double"></asp:RangeValidator>
                <asp:TextBox ID="txtPrecioProducto" runat="server" TextMode="Number"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Right">
            <asp:TableCell>
                <asp:Label ID="Label6" runat="server" Text="Cantidad del Producto: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:RequiredFieldValidator ValidationGroup="Guardar" ID="RequiredFieldValidator5" runat="server" ErrorMessage="No se ingresó la cantidad del producto" ControlToValidate="txtCantidadProducto" CssClass="field-validation-error"></asp:RequiredFieldValidator>
                <asp:RangeValidator ValidationGroup="Guardar" ID="RangeValidator2" runat="server" ErrorMessage="La cantidad no se encuentra en el rango establecido (mayor a 0)" MinimumValue="0" MaximumValue="1000"  ControlToValidate="txtCantidadProducto" CssClass="field-validation-error" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                <asp:TextBox ID="txtCantidadProducto" runat="server" TextMode="Number"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Right" Visible="true">
            <asp:TableCell>
                <asp:Label ID="Label8" runat="server" Text="Esatado del Producto: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:CheckBox ID="ckbEstado" runat="server" />        
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:ImageButton ID="imgGuardar" ValidationGroup="Guardar" Width="35" runat="server"  ImageUrl="~/Images/guardar.png" OnClick="imgGuardar_Click" />
            </asp:TableCell>
            <asp:TableCell>
                <asp:ImageButton ID="imgActualizar" runat="server" Height="40" ImageUrl="~/Images/cambios.jpg" OnClick="imgActualizar_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="imgAgregarProductos" ToolTip="Agregar" Width="43" ImageUrl="~/Images/tipo_productos.png" runat="server" PostBackUrl="~/Administrador/AgregarStockProducto.aspx" />
            </asp:TableCell>
        </asp:TableRow> 
        <asp:TableRow>
            <asp:TableCell><asp:Label ID="lblMensaje" runat="server" CssClass="field-validation-error" ></asp:Label>

            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <asp:Label ID="lblIdProducto" runat="server" CssClass="field-validation-error" Visible="false"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GPSConnectionString %>" SelectCommand="SELECT [IdProveedores], [Nombre] FROM [Proveedores]"></asp:SqlDataSource>

</asp:Content>
