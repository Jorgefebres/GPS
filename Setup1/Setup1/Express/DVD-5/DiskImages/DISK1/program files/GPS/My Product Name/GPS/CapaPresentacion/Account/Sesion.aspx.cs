using CapaNegocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaPresentacion.Account
{
    public partial class Sesion : System.Web.UI.Page
    {
        bool us;
        int id;
        string user, password;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            user = this.txtUser.Text;
            password = this.txtPassword.Text;
            String mensaje = NConexion.ChequearConexion();
            if (mensaje == "Y")
            {//Verifico si es cliente
                mensaje = NCliente.VerificaCliente(user, password);
                if (mensaje != "N")
                {
                    id = Convert.ToInt16(NCliente.BuscarIdCliente(user, password));
                    us = false;
                    Cambio();
                }//Verifico si es usuario
                else if (NUsuarios.IngresoUsuario(user, password) == "Y")
                {
                    id = Convert.ToInt16(NUsuarios.BuscarIdUsuario(user, password));
                    us = true;
                    Cambio();
                }
                else
                    msgError.Text = "Datos incorrectos, intente nuevamente.";
            }
            else
                this.Dispose();
        }

        private void Cambio()
        {
            Login.Visible = false;
            changePassword.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (us)
            {
                msgError.Text = NUsuarios.CambiarContraseña(id, txtPassword.Text);
            }
            else
            {
                msgError.Text = NCliente.CambiarPassword(id, txtPassword.Text);
            }
            Response.Redirect("~\\Registro\\Login.aspx");
        }
    }
}