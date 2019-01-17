using CapaNegocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaPresentacion.Account
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtNombres.Focus();
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            if (NCliente.Verificar(txtCorreo.Text, txtUser.Text) == "Y")
                lblMensaje.Text = "El usuario ya existe o ya se tiene registrado el correo. intente nuevamente";
            else if (NUsuarios.Verificar(txtCorreo.Text, txtUser.Text) == "Y")
                lblMensaje.Text = "El usuario ya existe o ya se tiene registrado el correo. intente nuevamente";
            else
            {
                //SqlDataSource1.InsertParameters["Nombres"].DefaultValue = txtNombres.Text;
                //SqlDataSource1.InsertParameters["Apellidos"].DefaultValue = txtApellidos.Text;
                //SqlDataSource1.InsertParameters["DNI"].DefaultValue = txtDNI.Text;
                //SqlDataSource1.InsertParameters["Direccion"].DefaultValue = txtDireccion.Text;
                //SqlDataSource1.InsertParameters["Mail"].DefaultValue = txtCorreo.Text;
                //SqlDataSource1.InsertParameters["Telefono1"].DefaultValue = txtTelefono.Text;
                //SqlDataSource1.InsertParameters["Telefono2"].DefaultValue = txtTelefono1.Text;
                //SqlDataSource1.InsertParameters["Usuario"].DefaultValue = txtUser.Text;
                //SqlDataSource1.InsertParameters["Password"].DefaultValue = txtPassword.Text;
                //SqlDataSource1.InsertParameters["tipo"].DefaultValue = "0";
                ////SqlDataSource1.InsertParameters["fecha"].DefaultValue = DateTime.Now.ToShortDateString();
                //SqlDataSource1.Insert();
                NCliente.InsertarUsuario(txtNombres.Text, txtApellidos.Text, false, txtDNI.Text, txtDireccion.Text, txtCorreo.Text, txtTelefono.Text, txtTelefono1.Text, txtUser.Text, txtPassword.Text);
                lblMensaje.Text = "Usuario registrado correctamente";
                Response.Redirect("~\\Account\\Login.aspx");
            }
        }
    }
}