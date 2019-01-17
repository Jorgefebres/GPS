<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="CapaPresentacion.Account.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>Use el formulario siguiente para crear una cuenta nueva.</h1>
    </hgroup>
    <section id="FormRegistro">
        <asp:Label ID="Label5" runat="server" Text="Nombres" CssClass="label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Label ID="Label6" runat="server" Text="Apellidos" CssClass="label"></asp:Label><br />
        <asp:TextBox ID="txtNombres" runat="server" Width="284px"></asp:TextBox>
        <asp:TextBox ID="txtApellidos" runat="server" Width="270px"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtNombres" CssClass="field-validation-error" ErrorMessage="El campo de Nombres de usuario es obligatorio."></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtApellidos" CssClass="field-validation-error" ErrorMessage="El campo Apellidos de usuario es obligatorio."></asp:RequiredFieldValidator>
        <br />        
        <asp:Label ID="Label7" runat="server" Text="DNI" CssClass="label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Label ID="Label8" runat="server" Text="Dirección" CssClass="label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label10" runat="server" Text="Teléfono" CssClass="label"></asp:Label>
        <br />
        <asp:TextBox ID="txtDNI" runat="server" Width="80px" TextMode="Number"></asp:TextBox>
        <asp:TextBox ID="txtDireccion" runat="server" Width="308px"></asp:TextBox>
        <asp:TextBox ID="txtTelefono" runat="server" TextMode="Number" Width="87px"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtDNI" CssClass="field-validation-error" ErrorMessage="Ingresar DNI."></asp:RequiredFieldValidator>
        &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtDireccion" CssClass="field-validation-error" ErrorMessage="Ingresar Dirección."></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtTelefono" CssClass="field-validation-error" ErrorMessage="Ingresar número telefónico."></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label9" runat="server" Text="Teléfono" CssClass="label"></asp:Label> <br />
        <asp:TextBox ID="txtTelefono1" runat="server" TextMode="Number" Width="87px"></asp:TextBox><br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Nombre de Usuario" CssClass="label"></asp:Label><br />
        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" CssClass="field-validation-error" ErrorMessage="El campo de nombre de usuario es obligatorio."></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Dirección de correo electrónico" CssClass="label"></asp:Label><br />
        <asp:TextBox ID="txtCorreo" runat="server" TextMode="Email"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCorreo" CssClass="field-validation-error" ErrorMessage="El campo de dirección de correo electrónico es obligatorio"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Contraseña" CssClass="label"></asp:Label><br />
        <asp:TextBox ID="txtPassword" runat="server" MaxLength="16" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" CssClass="field-validation-error" ErrorMessage="El campo de contraseña es obligatorio"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Confirma contraseña" CssClass="label"></asp:Label><br />
        <asp:TextBox ID="txtPassword1" runat="server" MaxLength="16" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword1" CssClass="field-validation-error" ErrorMessage="El campo de confirmacion de contraseña es obligatorio"></asp:RequiredFieldValidator><br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPassword1" CssClass="field-validation-error" ErrorMessage="La contraseña y la contraseña de validación no coinciden"></asp:CompareValidator>
        <br />

        <asp:Label ID="lblMensaje" runat="server" CssClass="field-validation-error"></asp:Label>
        <br />
        <asp:Button ID="btnAceptar" runat="server" Text="Registrarse" OnClick="btnAceptar_Click" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GPSConnectionString %>" InsertCommand="INSERT INTO Usuarios(Nombres, Apellidos, NDocumento, Direccion, Mail, Telefono1, Telefono2, Usuario, Password, Tipo) VALUES (@Nombres, @Apellidos, @DNI, @Direccion, @Mail, @Telefono1, @Telefono2, @Usuario, @Password, @Tipo)" SelectCommand="SELECT Mail, Usuario FROM Usuarios WHERE (Mail = @parametroC) OR (Usuario = @parametroN)">
            <InsertParameters>
                <asp:Parameter Name="Nombres" />
                <asp:Parameter Name="Apellidos" />
                <asp:Parameter Name="DNI" />
                <asp:Parameter Name="Direccion" />
                <asp:Parameter Name="Mail" />
                <asp:Parameter Name="Telefono1" />
                <asp:Parameter Name="Telefono2" />
                <asp:Parameter Name="Usuario" />
                <asp:Parameter Name="Password" />
                <asp:Parameter Name="tipo" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="txtCorreo" Name="parametroC" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtUser" Name="parametroN" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </section>
</asp:Content>
