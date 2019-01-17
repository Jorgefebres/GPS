<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrar.Master" AutoEventWireup="true" CodeBehind="EmpleadosTodos.aspx.cs" Inherits="CapaPresentacion.Administrador.EmpleadosTodos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>Empleados</h1>
        </hgroup>
    <center>
        <table>
            <tr>
                <td><asp:Label ID="Label1" runat="server" Text="Escoja el tipo de emppleado:" CssClass="label"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:DropDownList ID="cmbEstado" AutoPostBack="True" runat="server"><asp:ListItem Value="False" Text="Empleado"></asp:ListItem><asp:ListItem Text="Administrador" Value="True"></asp:ListItem></asp:DropDownList></td>
            </tr>
        </table>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cód" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="Cód" HeaderText="Cód" InsertVisible="False" ReadOnly="True" SortExpression="Cód" />
        <asp:BoundField DataField="Empleado" HeaderText="Empleado" ReadOnly="True" SortExpression="Empleado" />
        <asp:BoundField DataField="DNI" HeaderText="DNI" SortExpression="DNI" />
        <asp:BoundField DataField="Dirección" HeaderText="Dirección" SortExpression="Dirección" />
        <asp:BoundField DataField="Teléfono" HeaderText="Teléfono" SortExpression="Teléfono" />
        <asp:BoundField DataField="Teléfono1" HeaderText="Teléfono1" SortExpression="Teléfono1" />
        <asp:BoundField DataField="Correo Electrónico" HeaderText="Correo Electrónico" SortExpression="Correo Electrónico" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GPSConnectionString %>" SelectCommand="SELECT IdUsuario AS Cód, Nombres + '  ' + Apellidos AS Empleado, DNI, Direccion AS Dirección, Telefono AS Teléfono, Telefono1 AS Teléfono, Mail AS [Correo Electrónico] FROM Usuarios WHERE (Tipo = @Tipo)">
            <SelectParameters>
                <asp:ControlParameter ControlID="cmbEstado" Name="Tipo" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </center>
</asp:Content>
