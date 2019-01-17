using CapaNegocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaPresentacion.Account
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.txtUser.Focus();
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            String mensaje = NConexion.ChequearConexion();
            if (mensaje == "Y")
            {//Verifico si es cliente
                mensaje = NCliente.VerificaCliente(this.txtUser.Text, this.txtPassword.Text);
                if (mensaje != "N")
                {
                    msgError.Text = "Datos correctos.";
                    Cliente.Index.IdUsuario = NCliente.BuscarIdCliente(this.txtUser.Text, this.txtPassword.Text);
                    Response.Redirect("~\\Cliente\\Index.aspx");
                }
                else
                {//Verifico si es usuario
                    if (NUsuarios.IngresoUsuario(this.txtUser.Text, this.txtPassword.Text) == "Y")
                    { //tipo 0=vendedor y administrado=1
                        mensaje = NUsuarios.ObtenerTipo(this.txtUser.Text, this.txtPassword.Text);
                        if (mensaje == "True")
                        {
                            Administrador.Administrar.Usuario = this.txtUser.Text;
                            Administrador.Administrar.IdUsuario = Convert.ToInt16(NUsuarios.BuscarIdUsuario(this.txtUser.Text, this.txtPassword.Text));
                            Administrador.Administrar.Tipo = Convert.ToBoolean(mensaje);
                            Response.Redirect("~\\Administrador\\Index.aspx");
                        }
                        else
                        {
                            Vendedor.Vendedor.Usuario = this.txtUser.Text;
                            Vendedor.Vendedor.IdUsuario = Convert.ToInt16(NUsuarios.BuscarIdUsuario(this.txtUser.Text, this.txtPassword.Text));
                            Vendedor.Vendedor.Tipo = Convert.ToBoolean(mensaje);
                            Response.Redirect("~\\Vendedor\\Index.aspx");
                        }
                    }
                    else
                        msgError.Text = "Datos incorrectos, intente nuevamente.";
                }
            }
            else
                this.Dispose();
        }
    }
}