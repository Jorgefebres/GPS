<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrar.Master" AutoEventWireup="true" CodeBehind="ClientesTodos.aspx.cs" Inherits="CapaPresentacion.Administrador.ClientesTodos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>Clientes</h1>
        </hgroup>
    <center>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cód" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="Cód" HeaderText="Cód" InsertVisible="False" ReadOnly="True" SortExpression="Cód" />
        <asp:BoundField DataField="Cliente" HeaderText="Cliente" ReadOnly="True" SortExpression="Cliente" />
        <asp:CheckBoxField DataField="DNI/RUC" HeaderText="DNI/RUC" SortExpression="DNI/RUC" />
        <asp:BoundField DataField="N° Documento" HeaderText="N° Documento" SortExpression="N° Documento" />
        <asp:BoundField DataField="Dirección" HeaderText="Dirección" SortExpression="Dirección" />
        <asp:BoundField DataField="Teléfono" HeaderText="Teléfono" SortExpression="Teléfono" />
        <asp:BoundField DataField="Teléfono 2" HeaderText="Teléfono 2" SortExpression="Teléfono 2" />
        <asp:BoundField DataField="Correo Electrónico" HeaderText="Correo Electrónico" SortExpression="Correo Electrónico" />
        <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GPSConnectionString %>" SelectCommand="SELECT IdCliente AS Cód, Nombres +' '+ Apellidos AS Cliente, TipoDocumento AS [DNI/RUC], NDocumento AS [N° Documento], Direccion AS Dirección, Telefono AS Teléfono, Telefono1 AS [Teléfono 2], Mail AS [Correo Electrónico], Usuario, Password FROM Clientes"></asp:SqlDataSource>
    </center>
</asp:Content>
