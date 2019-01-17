using CapaNegocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaPresentacion.Vendedor
{
    public partial class Clientes : System.Web.UI.Page
    {
        DataTable dt;
        bool _tipoDoc;
        public int _tipo;
        string _nombre, _apellido, _dni, _direccion, _telefono0, _telefono1, _mail, _pas, _nomUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            btnEditar.Visible = txtUsuario.Visible = lbluser.Visible = false;
        }
        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            LlenarDatos();
            NCliente.Editar(Convert.ToInt16(lblIdCliente.Text), _nombre, _apellido, _dni, _direccion, _mail, _telefono0, _telefono1, _nomUser, _nomUser);
        }
        private void LlenarDatos()
        {
            _nombre = txtNombreCliente.Text;
            _apellido = txtApellidoCliente.Text;
            _tipoDoc = Convert.ToBoolean(cmbTipoDocumento.SelectedValue);
            _dni = txtDNICliente.Text;
            _direccion = txtDireccionCliente.Text;
            _telefono0 = txttelefono.Text;
            _telefono1 = txtTelefonoCliente.Text;
            _mail = txtMail.Text;
            _nomUser = txtUsuario.Text;
            _pas = txtPassowrd.Text;
        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            lblMensaje.Visible = true;
            LlenarDatos();
            if (NCliente.Verificar(txtMail.Text, txtUsuario.Text) == "Y")
                lblMensaje.Text = "El usuario ya existe o ya se tiene registrado el correo. intente nuevamente";
            else
            {
                NCliente.InsertarUsuario(_nombre, _apellido, _tipoDoc, _dni, _direccion, _mail, _telefono0, _telefono1, _nomUser, _pas);
                lblMensaje.Text = "Usuario ingresado correctamente";
                Table2.Visible = false;
            }
        }

        protected void btnEditar_Click(object sender, ImageClickEventArgs e)
        {
            Activar(true);
            btnActualizar.Visible = true;
            btnGuardar.Visible = false;
        }

        protected void btnAgregar_Click(object sender, ImageClickEventArgs e)
        {
            Table2.Visible = Label1.Visible = true;
            Activar(true);
            Limpiar();
            btnGuardar.Visible = txtPassowrd.Visible = lbluser.Visible = txtUsuario.Visible = true;
            btnActualizar.Visible = false;
        }
        private void MostrarDatosCliente(int id)
        {
            try
            {
                lblIdCliente.Text = dt.Rows[id].ItemArray[0].ToString();
                txtNombreCliente.Text = dt.Rows[id].ItemArray[1].ToString();
                txtApellidoCliente.Text = dt.Rows[id].ItemArray[2].ToString();
                cmbTipoDocumento.SelectedValue = dt.Rows[id].ItemArray[3].ToString();
                txtDNICliente.Text = dt.Rows[id].ItemArray[4].ToString();
                txtDireccionCliente.Text = dt.Rows[id].ItemArray[5].ToString();
                txtTelefonoCliente.Text = dt.Rows[id].ItemArray[6].ToString();
                txttelefono.Text = dt.Rows[id].ItemArray[7].ToString();
                txtMail.Text = dt.Rows[id].ItemArray[8].ToString();
                txtUsuario.Text = dt.Rows[id].ItemArray[9].ToString();
                txtPassowrd.Text = dt.Rows[id].ItemArray[10].ToString();
            }
            catch (Exception ex)
            {
                lblMensaje1.Text = "No se encontraron datos con el parámetro a buscar";
            }
        }
        private void Activar(bool v)
        {
            lblIdCliente.Enabled = v;
            txtNombreCliente.Enabled = v;
            txtApellidoCliente.Enabled = v;
            cmbTipoDocumento.Enabled = v;
            txtDNICliente.Enabled = v;
            txtDireccionCliente.Enabled = v;
            txttelefono.Enabled = v;
            txtTelefonoCliente.Enabled = v;
            txtMail.Enabled = v;
            txtUsuario.Enabled = v;
            txtUsuario.Enabled = v;
            txtPassowrd.Enabled = v;
        }
        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            Label1.Visible  = false;
            Limpiar();
            try
            {
                if (txtBuscarNombre.Text == "")
                    lblMensaje1.Visible = true;
                else
                {                    
                        dt = NCliente.Buscar(txtBuscarNombre.Text);
                        if (dt.Rows.Count > 0)
                        {
                            MostrarDatosCliente(0);
                            Table2.Visible = btnEditar.Visible = btnEditar.Enabled = true;
                        }
                        else
                        {
                            lblMensaje1.Text = "No se encontraron datos con el parámetro a buscar";
                            lblMensaje1.Visible = false;
                        }
                    }
                }
            catch (Exception ex)
            {
                lblMensaje1.Text = "error " + ex;
                //lblMensaje1.Visible = true;
            }
        }
        private void Limpiar()
        {
            lblIdCliente.Text = txtNombreCliente.Text = txtApellidoCliente.Text = txtDNICliente.Text = txtDireccionCliente.Text = "";
            txttelefono.Text = txtTelefonoCliente.Text = txtMail.Text = txtUsuario.Text = "";
        }
    }
}