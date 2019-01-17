<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrar.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="CapaPresentacion.Administrador.Clientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>Usuarios</h1>
        </hgroup>
    <asp:Label ID="lblIdCliente" runat="server" Visible="false"></asp:Label>
    <asp:Table ID="Table1" runat="server" CssClass="float-right">
        <asp:TableRow>
            <asp:TableCell>
                <table>
                    <tr>
                        <td></td>
                        <td colspan="2" class="label">Buscar usuario</td>
                    </tr>
                    <tr>
                        <td class="label">Nombre</td>
                        <td><asp:TextBox ID="txtBuscarNombre" runat="server" AutoCompleteType="Search"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click"/></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblMensaje1" runat="server" CssClass="field-validation-error" Visible="false"></asp:Label></td>
                    </tr>
                </table>
            </asp:TableCell>
            <asp:TableCell>
                <asp:ImageButton ID="btnListar" runat="server" ToolTip="Mostrar todos los Clientes" PostBackUrl="~/Administrador/ClientesTodos.aspx" ImageUrl="~/Images/listar.jpg" Height="50px" Width="50px" />
            </asp:TableCell>
            <asp:TableCell>
                <asp:ImageButton ID="ImageButton1" runat="server" ToolTip="Mostrar todos los Empleados" PostBackUrl="~/Administrador/EmpleadosTodos.aspx" ImageUrl="~/Images/empleado.png" Height="50px" Width="50px"/>
            </asp:TableCell>
            <asp:TableCell>
                <asp:ImageButton ID="btnAgregar" runat="server" ImageUrl="~/Images/agregar.png" ToolTip="Agregar nuevo Cliente" Height="50px" Width="50px" OnClick="btnAgregar_Click"/>
            </asp:TableCell>
            <asp:TableCell>
                <asp:ImageButton ID="btnEditar" runat="server" ImageUrl="~/Images/Editar1.png" ToolTip="Agregar nuevo Cliente" Height="50px" Width="50px" OnClick="btnEditar_Click"/>
            </asp:TableCell>
            <asp:TableCell>
                <asp:ImageButton ID="btnEliminar" runat="server" ImageUrl="~/Images/eliminar.png" ToolTip="Agregar nuevo Cliente" Height="50px" Width="50px" OnClick="btnEliminar_Click"/>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <asp:Table ID="Table2" runat="server" Visible="false" Width="545px" >
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label1" runat="server" Visible="false" Text="Agregar Cliente o Usuario?" CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList ID="cmbTipoAgregar" runat="server" Visible="false" AutoPostBack="true" OnSelectedIndexChanged="cmbTipoAgregar_SelectedIndexChanged"><asp:ListItem Text="Cliente" Value="False"></asp:ListItem><asp:ListItem Text="Usuario" Value="True"></asp:ListItem></asp:DropDownList>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Right">
                <asp:Label ID="Label2" runat="server" Text="Nombres del Usuario: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtNombreCliente" runat="server" Enabled="false"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Guardar" runat="server" ControlToValidate="txtNombreCliente" CssClass="field-validation-error" ErrorMessage="No se ingresó el nombre del usuario"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label3" runat="server" Text="Apellidos del Usuario: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtApellidoCliente" runat="server" Enabled="false"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="No se ingresó los apellidos del usuario" ControlToValidate="txtApellidoCliente" ValidationGroup="Guardar" CssClass="field-validation-error"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label4" runat="server" Text="Tipo documento: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:DropDownList ID="cmbTipoDocumento" Enabled="false" runat="server">
                    <asp:ListItem Text="DNI" Value="True"></asp:ListItem>
                    <asp:ListItem Text="RUC" Value="False"></asp:ListItem>
                </asp:DropDownList>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Right">
            <asp:TableCell>
                <asp:Label ID="Label5" runat="server" Text="DNI/RUC: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:TextBox ID="txtDNICliente" runat="server" Enabled="false" TextMode="Number" MaxLength="11"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="No se ingresó el N° de Documento del usuario" ValidationGroup="Guardar" ControlToValidate="txtDNICliente" CssClass="field-validation-error" ></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Right">
            <asp:TableCell>
                <asp:Label ID="Label6" runat="server" Text="Dirección del usuario: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:TextBox ID="txtDireccionCliente" runat="server" Enabled="false"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="No se ingresó la dirección del usuario" ValidationGroup="Guardar" ControlToValidate="txtDireccionCliente" CssClass="field-validation-error" ></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Right">
            <asp:TableCell>
                <asp:Label ID="Label7" runat="server" Text="Teléfono: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:TextBox ID="txtTelefono" runat="server" TextMode="Number" Enabled="false" MaxLength="9"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="se debe ingresr al menos un número telefónico" ValidationGroup="Guardar" ControlToValidate="txtTelefono" CssClass="field-validation-error"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Right">
            <asp:TableCell>
                <asp:Label ID="Label8" runat="server" Text="Teléfono: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:TextBox ID="txtTelefonoCliente" runat="server" TextMode="Number" Enabled="false" MaxLength="9"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Right">
            <asp:TableCell>
                <asp:Label ID="Label9" runat="server" Text="Correo Electrónico: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:TextBox ID="txtMail" runat="server" TextMode="Email" Enabled="false" MaxLength="9"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Falta ingresar este campo" ValidationGroup="Guardar" ControlToValidate="txtMail" CssClass="field-validation-error"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Right">
            <asp:TableCell>
                <asp:Label ID="Label10" runat="server" Text="Tipo Usuario: " CssClass="label" Visible="false"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:DropDownList ID="cmbTipoUsuario" Visible="false" Enabled="false" runat="server">
                    <asp:ListItem Text="Administrador" Value="True"></asp:ListItem>
                    <asp:ListItem Text="Vendedor" Value="False"></asp:ListItem>
                </asp:DropDownList>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Right">
            <asp:TableCell>
                <asp:Label ID="lbluser" runat="server" Text="Nombre de Usuario: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Right">
            <asp:TableCell>
                <asp:Label ID="Label12" runat="server" Text="Contraseña de Usuario: " CssClass="label" Visible="false"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" MaxLength="16" Visible="false"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Right">
            <asp:TableCell>
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" Visible="false" ValidationGroup="Guardar" OnClick="btnGuardar_Click"/>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" Visible="false" OnClick="btnActualizar_Click"/>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblMensaje" runat="server" ValidationGroup="Guardar" ></asp:Label></asp:TableCell>
        </asp:TableRow>
    </asp:Table>

</asp:Content>
