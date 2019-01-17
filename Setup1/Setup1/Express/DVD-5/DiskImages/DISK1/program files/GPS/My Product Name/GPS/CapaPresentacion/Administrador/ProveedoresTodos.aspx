<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrar.Master" AutoEventWireup="true" CodeBehind="ProveedoresTodos.aspx.cs" Inherits="CapaPresentacion.Administrador.ProveedoresTodos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>Proveedores</h1>
        <h2 id="lblTitulo" runat="server">.</h2>
    </hgroup>
    <center>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cód" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="Cód" HeaderText="Cód" InsertVisible="False" ReadOnly="True" SortExpression="Cód" />
        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
        <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
        <asp:BoundField DataField="Dirección" HeaderText="Dirección" SortExpression="Dirección" />
        <asp:BoundField DataField="Ciudad" HeaderText="Ciudad" SortExpression="Ciudad" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GPSConnectionString %>" SelectCommand="SELECT IdProveedores AS Cód, Nombre, RUC, Direccion AS Dirección, Ciudad, telefono AS Teléfono, Telefono1 AS Teléfono, Mail AS [Correo Electrónico] FROM Proveedores"></asp:SqlDataSource>
    </center>
</asp:Content>
