<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Administrar.Master" AutoEventWireup="true" CodeBehind="VentaServicios.aspx.cs" Inherits="CapaPresentacion.Administrador.VentaServicios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>Página de Administración de Ventas de Servicios</h1>
    </hgroup>
    <center>
        <table >
        <tr>
            <td><asp:Label ID="Label1" runat="server" Text="Seleccione el Cliente" CssClass="label"></asp:Label></td>
            <td><asp:Label ID="Label2" runat="server" Text="Seleccione el Servicio" CssClass="label"></asp:Label></td>
            <td><asp:Label ID="Label3" runat="server" Text="Precio del Servicio" CssClass="label"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:DropDownList ID="cmbClientes" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Nombres" DataValueField="IdCliente"></asp:DropDownList></td>
            <td><asp:DropDownList ID="cmbServicios" runat="server" DataSourceID="SqlDataSource2" DataTextField="Nombre" DataValueField="IdServicio" ></asp:DropDownList></td>
            <td><asp:ListBox ID="txtPrecio" runat="server" Height="22px" Enabled="False" DataSourceID="SqlDataSource3" DataTextField="Precio" DataValueField="Precio" ></asp:ListBox></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>


        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataSourceID="SqlDataSource4">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                <asp:BoundField DataField="Registrado por:" HeaderText="Registrado por:" SortExpression="Registrado por:" ReadOnly="True" />
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
        <br />
        <asp:Label ID="lblMSG" runat="server" CssClass="field-validation-error" Visible="false"></asp:Label>

        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GPSConnectionString %>" SelectCommand="SELECT [IdCliente], [Nombres] FROM [Clientes]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GPSConnectionString %>" SelectCommand="SELECT Servicios.IdServicio, Servicios.Nombre FROM VentaServicio INNER JOIN Servicios ON VentaServicio.IdServicio = Servicios.IdServicio AND VentaServicio.IdServicio = Servicios.IdServicio INNER JOIN Clientes ON VentaServicio.Idcliente = Clientes.IdCliente WHERE (VentaServicio.Idcliente = @IdCliente)">
            <SelectParameters>
                <asp:ControlParameter ControlID="cmbClientes" Name="IdCliente" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:GPSConnectionString %>" SelectCommand="SELECT [Precio] FROM [Servicios] WHERE ([IdServicio] = @IdServicio)">
            <SelectParameters>
                <asp:ControlParameter ControlID="cmbServicios" Name="IdServicio" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GPSConnectionString %>" DeleteCommand="DELETE FROM [VentaServicio] WHERE [IdVentaServicio] = @original_IdVentaServicio AND [Idcliente] = @original_Idcliente AND [IdEmpleado] = @original_IdEmpleado AND [IdServicio] = @original_IdServicio AND [Fecha] = @original_Fecha" InsertCommand="INSERT INTO [VentaServicio] ([Idcliente], [IdEmpleado], [IdServicio], [Fecha]) VALUES (@Idcliente, @IdEmpleado, @IdServicio, @Fecha)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT Servicios.Nombre, Servicios.Precio, VentaServicio.Fecha, Usuarios.Nombres + ' ' + Usuarios.Apellidos AS [Registrado por:] FROM VentaServicio INNER JOIN Servicios ON VentaServicio.IdServicio = Servicios.IdServicio INNER JOIN Usuarios ON VentaServicio.IdEmpleado = Usuarios.IdUsuario WHERE (VentaServicio.Idcliente = @IdCliente) AND (VentaServicio.IdServicio = @IdServicio)" UpdateCommand="UPDATE [VentaServicio] SET [Idcliente] = @Idcliente, [IdEmpleado] = @IdEmpleado, [IdServicio] = @IdServicio, [Fecha] = @Fecha WHERE [IdVentaServicio] = @original_IdVentaServicio AND [Idcliente] = @original_Idcliente AND [IdEmpleado] = @original_IdEmpleado AND [IdServicio] = @original_IdServicio AND [Fecha] = @original_Fecha">
            <DeleteParameters>
                <asp:Parameter Name="original_IdVentaServicio" Type="Int32" />
                <asp:Parameter Name="original_Idcliente" Type="Int32" />
                <asp:Parameter Name="original_IdEmpleado" Type="Int32" />
                <asp:Parameter Name="original_IdServicio" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_Fecha" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Idcliente" Type="Int32" />
                <asp:Parameter Name="IdEmpleado" Type="Int32" />
                <asp:Parameter Name="IdServicio" Type="Int32" />
                <asp:Parameter DbType="Date" Name="Fecha" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="cmbClientes" Name="IdCliente" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="cmbServicios" Name="IdServicio" PropertyName="SelectedValue" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Idcliente" Type="Int32" />
                <asp:Parameter Name="IdEmpleado" Type="Int32" />
                <asp:Parameter Name="IdServicio" Type="Int32" />
                <asp:Parameter DbType="Date" Name="Fecha" />
                <asp:Parameter Name="original_IdVentaServicio" Type="Int32" />
                <asp:Parameter Name="original_Idcliente" Type="Int32" />
                <asp:Parameter Name="original_IdEmpleado" Type="Int32" />
                <asp:Parameter Name="original_IdServicio" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_Fecha" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    </center>
</asp:Content>
