<%@ Page Title="" Language="C#" MasterPageFile="~/Vendedor/Vendedor.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="CapaPresentacion.Vendedor.Clientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>Usuarios</h1>
        <h2 id="lblTitulo" runat="server">.</h2>
    </hgroup>
    <asp:Label ID="lblIdCliente" runat="server" CssClass="field-validation-error" Visible="false"></asp:Label>
    <asp:Table ID="Table1" runat="server" Height="75px" Width="248px" CssClass="float-right">
        <asp:TableRow ID="TableRow1" runat="server">
            <asp:TableCell>
                <table style="width: 100%;">
                    <tr>
                        <td></td>
                        <td  colspan="2"  class="label" >Buscar Usuario 
                        </td>
                    </tr>
                    <tr>
                        <td class="label">Nombre</td>
                        <td><asp:TextBox ID="txtBuscarNombre" runat="server" AutoCompleteType="Search"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click"/>
                        </td>
                    </tr>
                    <tr><td>
                        <asp:Label ID="lblMensaje1" runat="server" CssClass="field-validation-error" Visible="false"></asp:Label>
                        </td></tr>
                </table>
            </asp:TableCell> 
            <asp:TableCell>
                <asp:ImageButton ID="btnListar" runat="server" ToolTip="Mostrar todos los Clientes" PostBackUrl="~/Vendedor/ClientesTodos.aspx" ImageUrl="~/Images/listar.jpg" Height="50px" Width="50px" />
            </asp:TableCell>
            <asp:TableCell>
                <asp:ImageButton ID="btnAgregar" runat="server" ImageUrl="~/Images/agregar.png" ToolTip="Agregar nuevo Cliente" Height="50px" Width="50px" OnClick="btnAgregar_Click"/>
            </asp:TableCell>
            <asp:TableCell>
                <asp:ImageButton ID="btnEditar" runat="server" ImageUrl="~/Images/Editar1.png" ToolTip="Editar un Cliente" Height="50px" Width="50px" OnClick="btnEditar_Click" Enabled="false"/>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <br />
    
    <asp:Table ID="Table2" runat="server" Visible="false">
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Right">
                <asp:Label ID="Label1" runat="server" Text="Nombres del Usuario: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:RequiredFieldValidator ValidationGroup="Guardar" ID="RequiredFieldValidator1" ControlToValidate="txtNombreCliente" CssClass="field-validation-error" runat="server" ErrorMessage="No se ingresó el nombre del usuario"></asp:RequiredFieldValidator><br />
                <asp:TextBox ID="txtNombreCliente" runat="server" Enabled="false"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Right">
                <asp:Label ID="Label2" runat="server" Text="Apellidos del Usuario: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:RequiredFieldValidator ErrorMessage="No se ingresó los apellidos del usuario" ControlToValidate="txtApellidoCliente" ValidationGroup="Guardar" ID="RequiredFieldValidator2" CssClass="field-validation-error" runat="server" ></asp:RequiredFieldValidator><br />
                <asp:TextBox ID="txtApellidoCliente" runat="server" Enabled="false"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label8" runat="server" Text="Tipo documento: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:DropDownList ID="cmbTipoDocumento" runat="server" Enabled="false">
                    <asp:ListItem Text="DNI" Value="True"></asp:ListItem>
                    <asp:ListItem Text="RUC" Value="False"></asp:ListItem>
                </asp:DropDownList>           
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Right">        
            <asp:TableCell>
                <asp:Label ID="Label3" runat="server" Text="DNI/RUC: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:RequiredFieldValidator ErrorMessage="No se ingresó el N° de Documento del usuario" ValidationGroup="Guardar" ControlToValidate="txtDNICliente" ID="RequiredFieldValidator3" CssClass="field-validation-error" runat="server" ></asp:RequiredFieldValidator><br />
                <asp:TextBox ID="txtDNICliente" runat="server" Enabled="false" TextMode="Number" MaxLength="11"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Right">
            <asp:TableCell>
                <asp:Label ID="Label4" runat="server" Text="Dirección del usuario: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:RequiredFieldValidator ErrorMessage="No se ingresó la dirección del usuario" ValidationGroup="Guardar" ControlToValidate="txtDireccionCliente" ID="RequiredFieldValidator4" CssClass="field-validation-error" runat="server" ></asp:RequiredFieldValidator><br />
                <asp:TextBox ID="txtDireccionCliente" runat="server" Enabled="false"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Right">
            <asp:TableCell>
                <asp:Label ID="Label5" runat="server" Text="Teléfono: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:TextBox ID="txttelefono" runat="server" TextMode="Number" Enabled="false" MaxLength="9"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Right">
            <asp:TableCell>
                <asp:Label ID="Label6" runat="server" Text="Teléfono: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:RequiredFieldValidator ErrorMessage="se debe ingresr al menos un número telefónico" ValidationGroup="Guardar" ControlToValidate="txtTelefonoCliente" ID="RequiredFieldValidator5" CssClass="field-validation-error" runat="server" ></asp:RequiredFieldValidator><br />
                <asp:TextBox ID="txtTelefonoCliente" runat="server" TextMode="Number" Enabled="false" MaxLength="9"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Right">
                <asp:Label ID="Label7" runat="server" Text="Correo Electrónico: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:RequiredFieldValidator ErrorMessage="Falta ingresar este campo" ValidationGroup="Guardar" ControlToValidate="txtMail" ID="RequiredFieldValidator6" CssClass="field-validation-error" runat="server" ></asp:RequiredFieldValidator><br />
                <asp:TextBox ID="txtMail" runat="server" Enabled="false" TextMode="Email"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Right">
                <asp:Label ID="lbluser" runat="server" Text="Nombre de Usuario: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtUsuario" runat="server" ></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Right">
                <asp:Label ID="Label9" runat="server" Text="Contraseña de Usuario: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtPassowrd" runat="server" TextMode="Password" MaxLength="16" ></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Center">
            <asp:TableCell>
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" Visible="false" ValidationGroup="Guardar" OnClick="btnGuardar_Click"/>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" Visible="false" OnClick="btnActualizar_Click"/>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell><asp:Label ID="lblMensaje" ValidationGroup="Guardar" runat="server" Text=""></asp:Label></asp:TableCell>
        </asp:TableRow>
    </asp:Table>   
</asp:Content>
