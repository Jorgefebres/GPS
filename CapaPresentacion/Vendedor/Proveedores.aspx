<%@ Page Title="" Language="C#" MasterPageFile="~/Vendedor/Vendedor.Master" AutoEventWireup="true" CodeBehind="Proveedores.aspx.cs" Inherits="CapaPresentacion.Vendedor.Proveedores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>Proveedores</h1>
        <h2 id="lblTitulo" runat="server">.</h2>
    </hgroup>
    
    <asp:Table ID="Table1" runat="server" Height="75px" Width="248px" CssClass="float-right">
        <asp:TableRow ID="TableRow1" runat="server">
            <asp:TableCell>
                <table style="width: 100%;">
                    <tr>
                        <td></td>
                        <td  colspan="2"  class="label" >Buscar Proveedor
                        </td>
                    </tr>
                    <tr>
                        <td class="label">Nombre</td>
                        <td><asp:TextBox ID="txtBuscarNombre" runat="server" AutoCompleteType="Search"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click"/></td>
                    </tr>
                    <tr><td>
                        <asp:Label ID="lblMensaje1" runat="server" CssClass="field-validation-error" Visible="false"></asp:Label>
                        </td></tr> 
                </table>
            </asp:TableCell>
            <asp:TableCell>
                <asp:ImageButton ID="btnListar" runat="server" ToolTip="Mostrar todos los Clientes" PostBackUrl="~/Vendedor/ProveedoresTodos.aspx" ImageUrl="~/Images/listar.jpg" Height="50px" Width="50px" />
            </asp:TableCell>
            <asp:TableCell>
                <asp:ImageButton ID="btnAgregar" runat="server" ImageUrl="~/Images/agregar.png" ToolTip="Agregar nuevo Proveedor" Height="50px" Width="50px" OnClick="btnAgregar_Click"/>
            </asp:TableCell>
            <asp:TableCell>
                <asp:ImageButton ID="btnEditar" runat="server" Visible="false" ImageUrl="~/Images/Editar1.png" ToolTip="Editar un Cliente" Height="50px" Width="50px" OnClick="btnEditar_Click" Enabled="false"/>
            </asp:TableCell>
            <asp:TableCell>
                <asp:ImageButton ID="btnEliminar" runat="server" Visible="false" ImageUrl="~/Images/eliminar.jpg" ToolTip="Eliminar Proveedor" Height="50px" Width="50px" OnClick="btnEliminar_Click" Enabled="false"/>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GPSConnectionString %>" InsertCommand="INSERT INTO [Proveedores] ([Nombre], [RUC], [Direccion], [Ciudad], [telefono], [Telefono1], [Mail]) VALUES (@Nombre, @RUC, @Direccion, @Ciudad, @telefono, @Telefono1, @Mail)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Proveedores]" DeleteCommand="DELETE FROM [Proveedores] WHERE [IdProveedores] = @original_IdProveedores" UpdateCommand="UPDATE [Proveedores] SET [Nombre] = @Nombre, [RUC] = @RUC, [Direccion] = @Direccion, [Ciudad] = @Ciudad, [telefono] = @telefono, [Telefono1] = @Telefono1, [Mail] = @Mail WHERE [IdProveedores] = @original_IdProveedores">
        <DeleteParameters>
            <asp:Parameter Name="original_IdProveedores" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Nombre" Type="String" />
            <asp:Parameter Name="RUC" Type="String" />
            <asp:Parameter Name="Direccion" Type="String" />
            <asp:Parameter Name="Ciudad" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
            <asp:Parameter Name="Telefono1" Type="String" />
            <asp:Parameter Name="Mail" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nombre" Type="String" />
            <asp:Parameter Name="RUC" Type="String" />
            <asp:Parameter Name="Direccion" Type="String" />
            <asp:Parameter Name="Ciudad" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
            <asp:Parameter Name="Telefono1" Type="String" />
            <asp:Parameter Name="Mail" Type="String" />
            <asp:Parameter Name="original_IdProveedores" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="lblIdProveedor" runat="server" Visible="False" CssClass="field-validation-error"></asp:Label>
    <asp:Table ID="Table2" runat="server" Visible="false" Width="571px">
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Right">
                <asp:Label ID="Label1" runat="server" Text="Nombre del Proveedor: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtNombreProveedor" runat="server" Enabled="false"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="INSERT"  ControlToValidate="txtNombreProveedor" CssClass="field-validation-error" runat="server" ErrorMessage="Ingrese el nombre del proveedor"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Right">
                <asp:Label ID="Label10" runat="server" Text="RUC: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtRUC" runat="server" Enabled="false" TextMode="Number"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="INSERT"  ControlToValidate="txtRUC" CssClass="field-validation-error" runat="server" ErrorMessage="Ingrese el RUC del proveedor"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>    
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Right">
                <asp:Label ID="Label2" runat="server" Text="Dirección: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtDireccionProveedor" runat="server" Enabled="false"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3"  ValidationGroup="INSERT" ControlToValidate="txtDireccionProveedor" CssClass="field-validation-error" runat="server" ErrorMessage="Ingrese la dirección del proveedor"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Right">
            <asp:TableCell>
                <asp:Label ID="Label5" runat="server" Text="Ciudad: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:TextBox ID="txtCiudad" runat="server" TextMode="Number" Enabled="false"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="INSERT"  ControlToValidate="txtCiudad" CssClass="field-validation-error" runat="server" ErrorMessage="Ingrese la ciudad del proveedor"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Right">
                <asp:Label ID="Label7" runat="server" Text="Correo Electrónico: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtMail" runat="server" Enabled="false" TextMode="Email"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="INSERT"  ControlToValidate="txtMail" CssClass="field-validation-error" runat="server" ErrorMessage="Ingrese el correo o dirección e-mail del proveedor"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Right">
            <asp:TableCell>
                <asp:Label ID="Label6" runat="server" Text="Teléfono: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:TextBox ID="txtTelefonoProveedor" runat="server" TextMode="Phone" Enabled="false" MaxLength="9"></asp:TextBox><br />
                <asp:RequiredFieldValidator ValidationGroup="INSERT"  ID="RequiredFieldValidator6" ControlToValidate="txtTelefonoProveedor" CssClass="field-validation-error" runat="server" ErrorMessage="Ingrese por lo menos un número telefónico"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Right">
            <asp:TableCell>
                <asp:Label ID="Label3" runat="server" Text="Teléfono: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:TextBox ID="txtTelefono2" runat="server" TextMode="Phone" Enabled="false" MaxLength="9"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>            
        <asp:TableRow HorizontalAlign="Center">
            <asp:TableCell>
                <asp:Button ID="btnGuardar" ValidationGroup="INSERT" runat="server" Text="Guardar" Visible="false" OnClick="btnGuardar_Click"/>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" Visible="false" OnClick="btnActualizar_Click"/>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell><asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label></asp:TableCell>
        </asp:TableRow>
    </asp:Table>   
<asp:ValidationSummary ValidationGroup="INSERT" ID="ValidationSummary1" runat="server"/>
<asp:ValidationSummary ID="ValidationSummary2" runat="server"/>
</asp:Content>
