<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrar.Master" AutoEventWireup="true" CodeBehind="Pagos.aspx.cs" Inherits="CapaPresentacion.Administrador.Pagos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>Página de Registro de Pagos</h1>
    </hgroup>
    <asp:ImageButton ID="btnRegistrarPago" runat="server" ToolTip="Desea registra el pago?" CssClass="float-right" ImageUrl="~/Images/guardar.png" Width="60" OnClick="btnRegistrarPago_Click"></asp:ImageButton>
    <center>
        <table><tr>
                <td><asp:Label ID="Label3" runat="server" Text="Monto a registrar:  " CssClass="label"></asp:Label></td>
            <td><asp:TextBox ID="txtMonto" runat="server" Enabled="false"></asp:TextBox></td>
            </tr>
    </table>
            </center>
    <table style="width:100%">
        <tr>
            <td class="auto-style1"><asp:Label ID="Label9" runat="server" Text="Seleccione el Cliente" CssClass="label"></asp:Label></td>
            <td class="auto-style2"></td>
            <td><asp:Label ID="Label1" runat="server" Text="Lista de Servicios del cliente" CssClass="label"></asp:Label></td>
            <td class="auto-style3"></td>
            <td><asp:Label ID="Label2" runat="server" Text="Detalle de pagos" CssClass="label"></asp:Label></td>
        </tr>
        <tr style="vertical-align:top">
            <td style="width:auto"><asp:DropDownList ID="cmbClientes" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Cliente" DataValueField="IdCliente" OnSelectedIndexChanged="cmbClientes_SelectedIndexChanged"></asp:DropDownList></td>
            <td></td>
            <td rowspan="15" style="width:auto"><asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" Rows="20" Width="100%" DataSourceID="SqlDataSource2" DataTextField="Nombre" DataValueField="IdVentaServicio" 
                ></asp:ListBox></td>
            <td></td>
            <td style="width:auto">
                <asp:GridView ID="GridView1" Width="100%" EmptyDataText="No se encontraron registros" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" AllowPaging="True" PageSize="15">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Monto" HeaderText="Monto" SortExpression="Monto" />
                        <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                        <asp:BoundField DataField="Registrado por" HeaderText="Registrado por" SortExpression="Registrado por" ReadOnly="True" />
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
            </td>
        </tr>
    </table>    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GPSConnectionString %>" SelectCommand="SELECT IdCliente, Nombres + ' ' + Apellidos AS Cliente FROM Clientes"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GPSConnectionString %>" SelectCommand="SELECT Servicios.Nombre, VentaServicio.IdVentaServicio FROM VentaServicio INNER JOIN Clientes ON VentaServicio.Idcliente = Clientes.IdCliente INNER JOIN Servicios ON VentaServicio.IdServicio = Servicios.IdServicio WHERE (VentaServicio.Idcliente = @IdCliente)">
        <SelectParameters>
            <asp:ControlParameter ControlID="cmbClientes" Name="IdCliente" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:GPSConnectionString %>" SelectCommand="SELECT Pagos.Monto, Pagos.Fecha, Usuarios.Nombres + ' ' + Usuarios.Apellidos AS [Registrado por] FROM Pagos INNER JOIN Usuarios ON Pagos.IdEmpleado = Usuarios.IdUsuario WHERE (Pagos.IdVentaServicio = @IdVentaServicio)" ConflictDetection="CompareAllValues" InsertCommand="INSERT INTO [Pagos] ([IdVentaServicio], [IdEmpleado], [Monto], [Fecha]) VALUES (@IdVentaServicio, @IdEmpleado, @Monto, @Fecha)" OldValuesParameterFormatString="original_{0}">
        <InsertParameters>
            <asp:Parameter Name="IdVentaServicio" Type="Int32" />
            <asp:Parameter Name="IdEmpleado" Type="Int32" />
            <asp:Parameter Name="Monto" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="Fecha" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="ListBox1" Name="IdVentaServicio" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
