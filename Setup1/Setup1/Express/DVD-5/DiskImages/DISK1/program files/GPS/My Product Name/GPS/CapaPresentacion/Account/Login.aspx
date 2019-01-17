<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CapaPresentacion.Account.Login1" %>
<%@ Register src="OpenAuthProviders.ascx" tagname="OpenAuthProviders" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    
    <section id="loginForm">
        <hgroup class="title">
            <h1><%: Title %>Utilice una cuenta local para iniciar sesión.</h1>
        </hgroup>
        <center>
        <asp:Label ID="Label1" runat="server">Iniciar sesión</asp:Label></center>
        
        <asp:Label ID="Label2" runat="server" CssClass="label">Nombre de Usuario</asp:Label><br />
        <asp:TextBox runat="server" ID="txtUser"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" CssClass="field-validation-error" ErrorMessage="El campo de nombre de usuario es obligatorio."></asp:RequiredFieldValidator>
        <br />
        
        <asp:Label ID="Label3" runat="server" CssClass="label">Contraseña</asp:Label><br />
        <asp:TextBox runat="server" ID="txtPassword" TextMode="Password"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" CssClass="field-validation-error" ErrorMessage="El campo de contraseña es obligatorio."></asp:RequiredFieldValidator>
        <br />
        
        <asp:Button ID="btnAceptar" runat="server" Text="Inicio de sesión" OnClick="btnAceptar_Click" /><br />
        <asp:Label ID="msgError" runat="server" CssClass="field-validation-error"></asp:Label>
        <br />
        <p>
            <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Enabled" href="Registro.aspx">Registrarse</asp:HyperLink>si no tiene una cuenta.
        </p>
    </section>
    <section id="socialLoginForm">
        <h2>Utilice otro servicio para iniciar sesión.</h2>
        <uc1:OpenAuthProviders ID="OpenAuthProviders1" runat="server" />
    </section>
</asp:Content>
