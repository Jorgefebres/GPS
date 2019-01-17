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
    public partial class Productos : System.Web.UI.Page
    {
        DataTable dt;
        int _idProveedor, _stock, N = 0;
        string _nombre, _marca, _descripcion, _fecha, mensaje;
        decimal _precio;
        bool _estado;
        protected void Page_Load(object sender, EventArgs e)
        {
            btnEditar.Visible = btnEliminar.Visible = false;
        }
        private void MostrarDatos(int id)
        {
            if (dt != null)
            {
                lblIdProducto.Text = dt.Rows[id].ItemArray[0].ToString();
                cmbProveedores.SelectedValue = dt.Rows[id].ItemArray[1].ToString();
                txtNombreProducto.Text = dt.Rows[id].ItemArray[2].ToString();
                txtMarcaProducto.Text = dt.Rows[id].ItemArray[3].ToString();
                txtDescripcionProducto.Text = dt.Rows[id].ItemArray[4].ToString();
                txtPrecioProducto.Text = dt.Rows[id].ItemArray[5].ToString();
                txtCantidadProducto.Text = dt.Rows[id].ItemArray[6].ToString();
                ckbEstado.Checked = Convert.ToBoolean(dt.Rows[id].ItemArray[8].ToString());
            }
        }
        private void Limpiar()
        {
            lblIdProducto.Text = "";
            cmbProveedores.SelectedIndex = -1;
            txtNombreProducto.Text = "";
            txtMarcaProducto.Text = "";
            txtDescripcionProducto.Text = "";
            txtPrecioProducto.Text = "";
            txtCantidadProducto.Text = "";
            ckbEstado.Checked = false;
        }
        private void Activar(bool v)
        {
            lblIdProducto.Enabled = v;
            cmbProveedores.Enabled = v;
            txtNombreProducto.Enabled = v;
            txtMarcaProducto.Enabled = v;
            txtDescripcionProducto.Enabled = v;
            txtPrecioProducto.Enabled = v;
            txtCantidadProducto.Enabled = v;
            ckbEstado.Enabled = v;
        }
        private void LlenarDatos()
        {
            _idProveedor = Convert.ToInt16(cmbProveedores.SelectedValue);
            _nombre = txtNombreProducto.Text;
            _marca = txtMarcaProducto.Text;
            _descripcion = txtDescripcionProducto.Text;
            _precio = Convert.ToDecimal(txtPrecioProducto.Text);
            _stock = Convert.ToInt16(txtCantidadProducto.Text);
            _estado = ckbEstado.Checked;
            _fecha = DateTime.Now.ToShortDateString();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            imgGuardar.Visible = imgActualizar.Visible = false;
            try
            {
                if (txtBuscarNombre.Text == "")
                {
                    lblMensaje1.Visible = true;
                    lblMensaje1.Text = "No se ingresó un mombre para buscar";
                }
                else
                {
                    dt = NProductos.Buscar(txtBuscarNombre.Text);
                    Table2.Visible = true;
                    MostrarDatos(0);
                    lblMensaje1.Visible = false;
                    btnEditar.Visible = btnEliminar.Visible = imgAgregarProductos.Visible = true;
                    Activar(false);
                    txtNombreProducto.Focus();
                }
            }
            catch (Exception ex)
            {
                lblMensaje1.Text = "No hubo coincidencia con el producto buscado";
                lblMensaje1.Visible = true;
                Table2.Visible = false;
            }
        }

        protected void btnAgregar_Click(object sender, ImageClickEventArgs e)
        {
            Table2.Visible = true;
            Activar(true);
            imgGuardar.Visible = true;
            imgActualizar.Visible = imgAgregarProductos.Visible = false;
            Limpiar();
            ckbEstado.Visible = false;
        }

        protected void btnEditar_Click(object sender, ImageClickEventArgs e)
        {
            txtNombreProducto.Enabled = txtDescripcionProducto.Enabled = txtPrecioProducto.Enabled = txtPrecioProducto.Enabled = ckbEstado.Enabled = true;
            imgGuardar.Visible = false;
            imgActualizar.Visible = imgAgregarProductos.Visible = true;
        }

        protected void btnEliminar_Click(object sender, ImageClickEventArgs e)
        {
            if (NProductos.Eliminar(Convert.ToInt16(lblIdProducto.Text)) == "Y")
            {
                lblMensaje1.Text = "Producto eliminado";
                lblMensaje1.Visible = true;
                Table2.Visible = false;
            }
            else
                lblMensaje1.Text = (NProductos.Eliminar(Convert.ToInt16(lblIdProducto.Text)));
        }

        protected void imgGuardar_Click(object sender, ImageClickEventArgs e)
        {
            LlenarDatos();
            NProductos.Insertar(_idProveedor, _nombre, _marca, _descripcion, _precio, _stock, _fecha, true);
            Table2.Visible = false;
        }

        protected void imgActualizar_Click(object sender, ImageClickEventArgs e)
        {
            LlenarDatos();
            NProductos.Editar(Convert.ToInt16(lblIdProducto.Text), _nombre, _descripcion, _precio, _estado);
            Activar(false);
            btnEditar.Visible = btnEliminar.Visible = true;
        }
    }
}