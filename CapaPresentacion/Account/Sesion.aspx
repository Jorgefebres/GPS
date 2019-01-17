<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sesion.aspx.cs" Inherits="CapaPresentacion.Account.Sesion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <section id="loginForm">
        <h2>Debe iniciar sesión primero.</h2><br />
        <asp:PlaceHolder runat="server" ID="Login">
        <asp:Label ID="Label2" runat="server" CssClass="label">Nombre de Usuario</asp:Label><br />
        <asp:TextBox runat="server" ID="txtUser"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" CssClass="field-validation-error" ErrorMessage="El campo de nombre de usuario es obligatorio."></asp:RequiredFieldValidator>
        <br />
        
        <asp:Label ID="Label3" runat="server" CssClass="label">Contraseña</asp:Label><br />
        <asp:TextBox runat="server" ID="txtPassword" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" CssClass="field-validation-error" ErrorMessage="El campo de contraseña es obligatorio."></asp:RequiredFieldValidator>
        <br />
        
        <asp:Button ID="btnAceptar" runat="server" Text="Inicio de sesión" OnClick="btnAceptar_Click"/><br />
            </asp:PlaceHolder>
        <asp:Label ID="msgError" runat="server" CssClass="field-validation-error"></asp:Label>
        <br />
        <asp:PlaceHolder runat="server" ID="changePassword" Visible="false">
            <h3>Cambiar contraseña</h3>
            <asp:ChangePassword ID="ChangePassword1" runat="server" CancelDestinationPageUrl="~/" ViewStateMode="Disabled" RenderOuterTable="false" SuccessPageUrl="Manage.aspx?m=ChangePwdSuccess">
                <ChangePasswordTemplate>
                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="FailureText" />
                    </p>
                    <fieldset class="changePassword">
                        <legend>Cambiar detalles de contraseña</legend>
                        <ol>
                            <li>
                                <asp:Label runat="server" ID="CurrentPasswordLabel" AssociatedControlID="CurrentPassword">Contraseña actual</asp:Label>
                                <asp:TextBox runat="server" ID="CurrentPassword" CssClass="passwordEntry" TextMode="Password" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="CurrentPassword"
                                    CssClass="field-validation-error" ErrorMessage="El campo de contraseña actual es obligatorio."
                                    ValidationGroup="ChangePassword" />
                                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtPassword" ControlToValidate="ConfirmNewPassword"
                                    CssClass="field-validation-error" Display="Dynamic" ErrorMessage="Tu contraseña no coincide con la actual."
                                    ValidationGroup="ChangePassword" />
                            </li>
                            <li>
                                <asp:Label runat="server" ID="NewPasswordLabel" AssociatedControlID="NewPassword">Nueva contraseña</asp:Label>
                                <asp:TextBox runat="server" ID="NewPassword" CssClass="passwordEntry" TextMode="Password" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="NewPassword"
                                    CssClass="field-validation-error" ErrorMessage="La contraseña nueva es obligatoria."
                                    ValidationGroup="ChangePassword" />
                            </li>
                            <li>
                                <asp:Label runat="server" ID="ConfirmNewPasswordLabel" AssociatedControlID="ConfirmNewPassword">Confirmar la nueva contraseña</asp:Label>
                                <asp:TextBox runat="server" ID="ConfirmNewPassword" CssClass="passwordEntry" TextMode="Password" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ConfirmNewPassword"
                                    CssClass="field-validation-error" Display="Dynamic" ErrorMessage="La confirmación de contraseña nueva es obligatoria."
                                    ValidationGroup="ChangePassword" />
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword"
                                    CssClass="field-validation-error" Display="Dynamic" ErrorMessage="La nueva contraseña y la contraseña de confirmación no coinciden."
                                    ValidationGroup="ChangePassword" />
                            </li>
                        </ol>
                        <asp:Button ID="Button1" runat="server" CommandName="ChangePassword" Text="Cambiar contraseña" ValidationGroup="ChangePassword" OnClick="Button1_Click" />
                    </fieldset>
                </ChangePasswordTemplate>
            </asp:ChangePassword>
        </asp:PlaceHolder>
        <p>
            <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Enabled" href="Registro.aspx">Registrarse</asp:HyperLink>si no tiene una cuenta.
        </p>
    </section>
</asp:Content>
