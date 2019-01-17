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
    public partial class Proveedores : System.Web.UI.Page
    {
        public static int IdUsuario { get; set; }
        DataTable dt;
        int N = 0;
        string _nombre, _direccion, _ciudad, _telefono, _telefono1, _mail, _ruc;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void MostrarDatos(int id)
        {
            lblIdProveedor.Text = dt.Rows[id].ItemArray[0].ToString();
            txtNombreProveedor.Text = dt.Rows[id].ItemArray[1].ToString();
            txtRUC.Text = dt.Rows[id].ItemArray[2].ToString();
            txtDireccionProveedor.Text = dt.Rows[id].ItemArray[3].ToString();
            txtCiudad.Text = dt.Rows[id].ItemArray[4].ToString();
            txtTelefonoProveedor.Text = dt.Rows[id].ItemArray[5].ToString();
            txtMail.Text = dt.Rows[id].ItemArray[7].ToString();
            txtTelefono2.Text = dt.Rows[id].ItemArray[6].ToString();
        }
        private void Limpiar()
        {
            lblIdProveedor.Text = "";
            txtNombreProveedor.Text = "";
            txtDireccionProveedor.Text = "";
            txtCiudad.Text = "";
            txtTelefonoProveedor.Text = "";
            txtTelefono2.Text = "";
            txtMail.Text = "";
            txtRUC.Text = "";
        }
        private void Activar(bool v)
        {
            lblIdProveedor.Enabled = v;
            txtNombreProveedor.Enabled = v;
            txtDireccionProveedor.Enabled = v;
            txtCiudad.Enabled = v;
            txtTelefonoProveedor.Enabled = v;
            txtTelefono2.Enabled = v;
            txtMail.Enabled = v;
            txtRUC.Enabled = v;
        }
        private void LlenarDatos()
        {
            _nombre = txtNombreProveedor.Text;
            _ruc = txtRUC.Text;
            _direccion = txtDireccionProveedor.Text;
            _ciudad = txtCiudad.Text;
            _mail = txtMail.Text;
            _telefono = txtTelefonoProveedor.Text;
            _telefono1 = txtTelefono2.Text;
            _mail = txtMail.Text;
        }
        protected void btnAgregar_Click(object sender, ImageClickEventArgs e)
        {
            Table2.Visible = true;
            Activar(true);
            Limpiar();
            btnGuardar.Visible = true;
            btnActualizar.Visible = btnEliminar.Visible = btnEditar.Visible = false;
        }

        protected void btnEditar_Click(object sender, ImageClickEventArgs e)
        {
            Activar(true);
            btnGuardar.Visible = false;
            btnActualizar.Visible = true;
        }

        protected void btnEliminar_Click(object sender, ImageClickEventArgs e)
        {
            lblMensaje.Visible = true;
            if (lblIdProveedor.Text == "")
                lblMensaje.Text = "No Hay datos a eliminar";
            else
                NProveedores.Eliminar(Convert.ToInt16(lblIdProveedor.Text));
            btnEditar.Visible = btnEliminar.Visible = Table2.Visible = false;
            lblMensaje.Text = "Elemento eliminado correctamente";
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            //LlenarDatos();
            //if (NProveedores.Insertar(_nombre,_direccion,_ciudad,_telefono,_telefono1,_mail,_ruc) == "Y")
            //    Table2.Visible = false;
            //else
            //    lblMensaje.Text = NProveedores.Insertar(txtNombreProveedor.Text, txtDireccionProveedor.Text, txtCiudad.Text, txtTelefonoProveedor.Text,txtTelefono2.Text, txtMail.Text, txtRUC.Text);
            SqlDataSource1.InsertParameters["Nombre"].DefaultValue = txtNombreProveedor.Text;
            SqlDataSource1.InsertParameters["RUC"].DefaultValue = txtRUC.Text;
            SqlDataSource1.InsertParameters["Direccion"].DefaultValue = txtDireccionProveedor.Text;
            SqlDataSource1.InsertParameters["Ciudad"].DefaultValue = txtCiudad.Text;
            SqlDataSource1.InsertParameters["Mail"].DefaultValue = txtMail.Text;
            SqlDataSource1.InsertParameters["telefono"].DefaultValue = txtTelefonoProveedor.Text;
            SqlDataSource1.InsertParameters["Telefono1"].DefaultValue = txtTelefono2.Text;
            SqlDataSource1.Insert();
            Table2.Visible = false;
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            LlenarDatos();
            NProveedores.Editar(_nombre, _direccion, _ciudad, _telefono, _telefono1, _mail, _ruc);
            Activar(false);
            lblMensaje.Text = "Datos actualizados";
            lblMensaje.Visible = true;
            btnGuardar.Visible = btnActualizar.Visible = false;
            btnEliminar.Visible = btnEditar.Visible = true;
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            btnGuardar.Visible = false;
            try
            {
                if (txtBuscarNombre.Text == "")
                    lblMensaje1.Visible = true;
                else
                {
                    dt = NProveedores.Buscar(txtBuscarNombre.Text);
                    if (dt.Rows.Count > 0)
                    {
                        Table2.Visible = true;
                        MostrarDatos(0);
                        //IdUsuario=Convert.ToInt16(dt.Rows[0].ItemArray[2].ToString());
                        lblMensaje1.Visible = false;
                        btnEliminar.Visible = btnEliminar.Enabled = btnEditar.Visible = btnEditar.Enabled = true;
                    }
                    else
                    {
                        lblMensaje1.Visible = true;
                        lblMensaje1.Text = "No se encontró resultados";
                    }
                }
            }
            catch (Exception ex)
            {
                lblMensaje1.Text = "error " + ex;
                //lblMensaje1.Visible = true;
            }
        }
    }
}