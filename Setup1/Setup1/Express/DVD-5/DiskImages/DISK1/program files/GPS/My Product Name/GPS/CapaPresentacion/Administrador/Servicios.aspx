<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrar.Master" AutoEventWireup="true" CodeBehind="Servicios.aspx.cs" Inherits="CapaPresentacion.Administrador.Servicios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>Servicios</h1>
        <h2 id="lblTitulo" runat="server">.</h2>
    </hgroup>
    <asp:Table ID="Table1" runat="server" Height="75px" Width="248px" CssClass="float-right">
        <asp:TableRow ID="TableRow1" runat="server">
            <asp:TableCell>
                <table style="width: 100%;">
                    <tr>
                        <td></td>
                        <td  colspan="2"  class="label" >Buscar Servicio
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
                <asp:ImageButton ID="btnListar" runat="server" ImageUrl="~/Images/listar.jpg" ToolTip="Ver todos los Servicios" Height="50px" Width="50px" PostBackUrl="~/Administrador/ServiciosTodos.aspx" />
            </asp:TableCell>
            <asp:TableCell>
                <asp:ImageButton ID="btnAgregar" runat="server" ImageUrl="~/Images/agregar.png" ToolTip="Agregar nuevo Servicio" Height="50px" Width="50px" OnClick="btnAgregar_Click"/>
            </asp:TableCell>
            <asp:TableCell>
                <asp:ImageButton ID="btnEditar" Visible="false" runat="server" ImageUrl="~/Images/editar1.png" ToolTip="Editar el Servicio seleccionado" Height="50px" Width="50px" OnClick="btnEditar_Click"/>
            </asp:TableCell>
            <asp:TableCell>
                <asp:ImageButton ID="btnEliminar" Visible="false" runat="server" ImageUrl="~/Images/eliminar.jpg" ToolTip="Eliminar Servicio" Height="50px" Width="50px" OnClick="btnEliminar_Click" Enabled="false"/>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <br />
    <asp:Label ID="lblIdServicio" runat="server" Visible="False" CssClass="field-validation-error"></asp:Label>
    <asp:Table ID="Table2" runat="server" Visible="false" Width="539px">
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Right">
                <asp:Label ID="Label1" runat="server" Text="Nombre del Servicio: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtNombreServicio" runat="server" Enabled="false"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ValidationGroup="Add" CssClass="field-validation-error" ErrorMessage="Ingrese el nombre del servicio" ControlToValidate="txtNombreServicio"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Right">
                <asp:Label ID="Label3" runat="server" Text="Descripción del Servicio: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtDescripcion" runat="server" Enabled="false"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Right">
            <asp:TableCell>
                <asp:Label ID="Label5" runat="server" Text="Precio: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:TextBox ID="txtPrecio" runat="server" TextMode="Number" Enabled="false"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="field-validation-error" ErrorMessage="Ingrese el precio del servicio" ControlToValidate="txtPrecio" ValidationGroup="Add"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Ingrese un valor mayor a cero." Text="*" ControlToValidate="txtPrecio" ValidationGroup="Add" Type="Double" MinimumValue="1" MaximumValue="10000.55"></asp:RangeValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Right" >
            <asp:TableCell>
                <asp:Label ID="Label6" runat="server" Text="Estado: " CssClass="label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:DropDownList ID="cmbEstado" runat="server" Enabled="false">
                    <asp:ListItem Text="1. Activo" Value="True"></asp:ListItem>
                    <asp:ListItem Text="2. Inactivo" Value="False"></asp:ListItem>
                </asp:DropDownList>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Center">
            <asp:TableCell>
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar"  ValidationGroup="Add" Visible="false" OnClick="btnGuardar_Click"/>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" Visible="false" OnClick="btnActualizar_Click"/>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell><asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label></asp:TableCell>
        </asp:TableRow>
    </asp:Table>  
    <asp:ValidationSummary ID="ValidationSummary1"  ValidationGroup="Add" runat="server" CssClass="field-validation-error" />
</asp:Content>
