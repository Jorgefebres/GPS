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
    public partial class Servicios : System.Web.UI.Page
    {
        DataTable dt;
        int N = 0;
        string _descripcion, _nombre;
        decimal _precio;
        bool _estado;
        protected void Page_Load(object sender, EventArgs e)
        {
            Table2.Visible = false;
        }
        private void MostrarDatos(int id)
        {
            lblIdServicio.Text = dt.Rows[id].ItemArray[0].ToString();
            txtNombreServicio.Text = dt.Rows[id].ItemArray[1].ToString();
            txtDescripcion.Text = dt.Rows[id].ItemArray[2].ToString();
            txtPrecio.Text = dt.Rows[id].ItemArray[3].ToString();
            cmbEstado.SelectedValue = dt.Rows[id].ItemArray[4].ToString();
        }
        private void Limpiar()
        {
            txtDescripcion.Text = "";
            txtNombreServicio.Text = "";
            txtPrecio.Text = "";
            cmbEstado.SelectedIndex = -1;
        }
        private void Activar(bool v)
        {
            txtDescripcion.Enabled = v;
            txtPrecio.Enabled = v;
            txtNombreServicio.Enabled = v;
            cmbEstado.Enabled = v;
        }
        private void LlenarDatos()
        {
            _descripcion = txtDescripcion.Text;
            _nombre = txtNombreServicio.Text;
            _precio = Convert.ToDecimal(txtPrecio.Text);
            _estado = Convert.ToBoolean(cmbEstado.SelectedValue);
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
                    dt = NServicios.BuscarServicio(txtBuscarNombre.Text);
                    Table2.Visible = true;
                    MostrarDatos(0);
                    //IdUsuario=Convert.ToInt16(dt.Rows[0].ItemArray[2].ToString());
                    Activar(false);
                    lblMensaje1.Visible = false;
                    btnEditar.Visible = btnEliminar.Visible = btnEditar.Enabled = btnEliminar.Enabled = Label6.Visible = cmbEstado.Visible = true;
                }
            }
            catch (Exception ex)
            {
                lblMensaje1.Text = "error " + ex;
                //lblMensaje1.Visible = true;
            }
        }

        protected void btnAgregar_Click(object sender, ImageClickEventArgs e)
        {
            Table2.Visible = btnGuardar.Visible = true;
            Activar(true);
            Limpiar();
            cmbEstado.Visible = btnActualizar.Visible = Label6.Visible = false;
        }

        protected void btnEditar_Click(object sender, ImageClickEventArgs e)
        {
            Activar(true);
            btnActualizar.Visible = Table2.Visible = btnEliminar.Visible = cmbEstado.Visible = true;
            btnGuardar.Visible = false;
        }

        protected void btnEliminar_Click(object sender, ImageClickEventArgs e)
        {
            if (lblIdServicio.Text == "")
                lblMensaje.Text = "No existen datos a eliminar";
            else
                NServicios.Eliminar(Convert.ToInt16(lblIdServicio.Text));
            Table2.Visible = btnEliminar.Visible = btnEditar.Visible = false;
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            LlenarDatos();
            NServicios.Insertar(_nombre, _descripcion, true, _precio);
            Activar(false);
            btnEditar.Visible = btnEliminar.Visible = btnEliminar.Enabled = btnEditar.Enabled = cmbEstado.Visible = true;
            btnActualizar.Visible = false;
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            LlenarDatos();
            NServicios.Editar(_nombre, _descripcion, _estado, _precio);
            Activar(false);
            btnEditar.Visible = btnEliminar.Visible = btnEliminar.Enabled = btnEditar.Enabled = true;
        }
    }
}