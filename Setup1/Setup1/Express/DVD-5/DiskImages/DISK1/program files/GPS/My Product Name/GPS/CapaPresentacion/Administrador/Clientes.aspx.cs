using CapaNegocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaPresentacion.Administrador
{
    public partial class Clientes : System.Web.UI.Page
    {
        DataTable dt;
        bool _tipoDoc;
        public int _tipo;
        string _nombre, _apellido, _dni, _direccion, _telefono0, _telefono1, _mail, _pas, _nomUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            btnEditar.Visible = btnEliminar.Visible = txtUsuario.Visible = lbluser.Visible = false;
        }
        private void MostrarDatosUsuario(int id)
        {
            try
            {
                Label10.Visible = cmbTipoUsuario.Visible = true;
                lblIdCliente.Text = dt.Rows[id].ItemArray[0].ToString();
                txtNombreCliente.Text = dt.Rows[id].ItemArray[1].ToString();
                txtApellidoCliente.Text = dt.Rows[id].ItemArray[2].ToString();
                cmbTipoDocumento.SelectedIndex = 0;
                txtDNICliente.Text = dt.Rows[id].ItemArray[3].ToString();
                txtDireccionCliente.Text = dt.Rows[id].ItemArray[4].ToString();
                txtTelefonoCliente.Text = dt.Rows[id].ItemArray[5].ToString();
                txtTelefono.Text = dt.Rows[id].ItemArray[6].ToString();
                txtMail.Text = dt.Rows[id].ItemArray[7].ToString();
                cmbTipoUsuario.SelectedValue = dt.Rows[id].ItemArray[8].ToString();
                txtUsuario.Text = dt.Rows[id].ItemArray[9].ToString();
                txtPassword.Text = dt.Rows[id].ItemArray[10].ToString();
            }
            catch (Exception ex)
            {
                lblMensaje1.Text = "No se encontraron datos con el parámetro a buscar";
            }
        }
        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            Label1.Visible = cmbTipoAgregar.Visible = false;
            Limpiar();
            try
            {
                if (txtBuscarNombre.Text == "")
                    lblMensaje1.Visible = true;
                else
                {
                    dt = NUsuarios.Buscar(txtBuscarNombre.Text);
                    if (dt.Rows.Count > 0)
                    {
                        MostrarDatosUsuario(0);
                        //dt = NUsuarios.ObtenerDatos(_IdUsuario);
                        //txtUsuario.Text = dt.Rows[0].ItemArray[1].ToString();
                        //Table2.Visible = true; 
                        //if (dt.Rows[0].ItemArray[10].ToString() == "True")
                        //    cmbTipoUsuario.SelectedIndex = 0;
                        //else
                        //    cmbTipoUsuario.SelectedIndex = 1;
                        //if (txtUsuario.Text != "")
                        //    txtUsuario.Visible = cmbTipoUsuario.Visible = true;
                        Table2.Visible = btnEditar.Visible = btnEliminar.Visible = btnEditar.Enabled = btnEliminar.Enabled = true;
                        //IdUsuario=Convert.ToInt16(dt.Rows[0].ItemArray[2].ToString());
                    }
                    else
                    {
                        dt = NCliente.Buscar(txtBuscarNombre.Text);
                        if (dt.Rows.Count > 0)
                        {
                            MostrarDatosCliente(0);
                            Table2.Visible = btnEditar.Visible = btnEliminar.Visible = btnEditar.Enabled = btnEliminar.Enabled = true;
                            Label10.Visible = cmbTipoUsuario.Visible = false;
                        }
                        else
                        {
                            lblMensaje1.Text = "No se encontraron datos con el parámetro a buscar";
                            lblMensaje1.Visible = false;
                        }
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
            txtTelefono.Text = txtTelefonoCliente.Text = txtMail.Text = txtUsuario.Text = "";
        }
        protected void btnAgregar_Click(object sender, ImageClickEventArgs e)
        {
            Table2.Visible = Label1.Visible = cmbTipoAgregar.Visible = true;
            Activar(true);
            Limpiar();
            btnGuardar.Visible=Label12.Visible=txtPassword.Visible = lbluser.Visible=txtUsuario.Visible=true; 
            btnActualizar.Visible = Label10.Visible = cmbTipoUsuario.Visible = false;
        }
        private void MostrarDatosCliente(int id)
        {
            try
            {
                Label10.Visible = cmbTipoUsuario.Visible = false;
                lblIdCliente.Text = dt.Rows[id].ItemArray[0].ToString();
                txtNombreCliente.Text = dt.Rows[id].ItemArray[1].ToString();
                txtApellidoCliente.Text = dt.Rows[id].ItemArray[2].ToString();
                cmbTipoDocumento.SelectedValue = dt.Rows[id].ItemArray[3].ToString();
                txtDNICliente.Text = dt.Rows[id].ItemArray[4].ToString();
                txtDireccionCliente.Text = dt.Rows[id].ItemArray[5].ToString();
                txtTelefonoCliente.Text = dt.Rows[id].ItemArray[6].ToString();
                txtTelefono.Text = dt.Rows[id].ItemArray[7].ToString();
                txtMail.Text = dt.Rows[id].ItemArray[8].ToString();
                txtUsuario.Text = dt.Rows[id].ItemArray[9].ToString();
                txtPassword.Text = dt.Rows[id].ItemArray[10].ToString();
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
            txtTelefono.Enabled = v;
            txtTelefonoCliente.Enabled = v;
            txtMail.Enabled = v;
            txtUsuario.Enabled = v;
            cmbTipoUsuario.Enabled = v;
            txtUsuario.Enabled = v;
            txtPassword.Enabled = v;
        }
        protected void btnEditar_Click(object sender, ImageClickEventArgs e)
        {
            Activar(true);
            if (Label10.Visible)
                cmbTipoUsuario.Enabled = true;
            else
                cmbTipoUsuario.Enabled = false;
            btnActualizar.Visible = true;
            btnGuardar.Visible = false;
        }

        protected void btnEliminar_Click(object sender, ImageClickEventArgs e)
        {
            if (Label10.Visible)
                NUsuarios.Eliminar(Convert.ToInt16(lblIdCliente.Text));
            else
                NCliente.Eliminar(Convert.ToInt16(lblIdCliente.Text));
            Table2.Visible = false;
        }

        protected void cmbTipoAgregar_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(cmbTipoAgregar.SelectedValue))
                cmbTipoUsuario.Visible = Label10.Visible = true;
            else
                Label10.Visible = cmbTipoUsuario.Visible = false; 
        }
        private void LlenarDatos()
        {
            _nombre = txtNombreCliente.Text;
            _apellido = txtApellidoCliente.Text;
            _tipoDoc = Convert.ToBoolean(cmbTipoDocumento.SelectedValue);
            _dni = txtDNICliente.Text;
            _direccion = txtDireccionCliente.Text;
            _telefono0 = txtTelefono.Text;
            _telefono1 = txtTelefonoCliente.Text;
            _mail = txtMail.Text;
            _nomUser = txtUsuario.Text;
            _pas = txtPassword.Text;
        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            lblMensaje.Visible = true;
            LlenarDatos();
            if (NCliente.Verificar(txtMail.Text, txtUsuario.Text) == "Y")
                lblMensaje.Text = "El usuario ya existe o ya se tiene registrado el correo. intente nuevamente";
            else if (NUsuarios.Verificar(txtMail.Text, txtUsuario.Text) == "Y")
                lblMensaje.Text = "El usuario ya existe o ya se tiene registrado el correo. intente nuevamente";
            else
            {
                if (Convert.ToBoolean(cmbTipoUsuario.SelectedValue))
                    NUsuarios.Insertar(_nombre, _apellido, _dni, _direccion, _mail, _telefono0, _telefono1, _nomUser, _pas, _tipo);
                else
                    NCliente.InsertarUsuario(_nombre, _apellido, _tipoDoc, _dni, _direccion, _mail, _telefono0, _telefono1, _nomUser, _pas);
                lblMensaje.Text = "Usuario ingresado correctamente";
                Table2.Visible = false;
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            LlenarDatos();
            if (Convert.ToBoolean(cmbTipoAgregar.SelectedValue))
                NUsuarios.Editar(_nombre, _apellido, _dni, _direccion, _mail, _telefono0, _telefono1, _nomUser, _nomUser, _tipo);
            else
                NCliente.Editar(Convert.ToInt16(lblIdCliente),_nombre,_apellido,_dni,_direccion,_mail,_telefono0,_telefono1,_nomUser,_pas);
        }
    }
}