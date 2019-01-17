using CapaNegocio;
using CapaPresentacion.Administrador;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaPresentacion.Vendedor
{
    public partial class VentaProductos : System.Web.UI.Page
    {
        public static int cont { get; set; }
        public static decimal _total { get; set; }
        public static decimal valor { get; set; }
        public static int codigo { get; set; }
        public static int _idCliente { get; set; }
        public static List<DetalleVenta> listaD { get; set; }
        int _idProducto, _stock;
        decimal _precio;
        string _ndocumento, _nombreProducto;
        DetalleVenta detalleV;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (cont == 0)
                Iniciar();
            else
                lblFecha.Text = DateTime.Now.ToShortDateString();
        }
        private void Iniciar()
        {
            lblFecha.Text = DateTime.Now.ToShortDateString();
            listaD = new List<DetalleVenta>();
            cmbComprobante.SelectedIndex = cmbProducto.SelectedIndex = -1;
            _total = 0;
        }
        protected void btnBuscar_Click(object sender, ImageClickEventArgs e)
        {
            dt = NCliente.Buscar(txtNombreCliente.Text);
            if (dt != null)
            {
                _idCliente = Convert.ToInt16(dt.Rows[0].ItemArray[0]);
                txtNombreCliente.Text = dt.Rows[0].ItemArray[1].ToString() + " " + dt.Rows[0].ItemArray[2].ToString(); ;
                cmbComprobante.SelectedValue = (dt.Rows[0].ItemArray[3].ToString());
                txtDoc.Text = _ndocumento = dt.Rows[0].ItemArray[4].ToString();
                if (txtDoc.Text.Count() <= 8)
                    cmbComprobante.SelectedIndex = 0;
                else
                    cmbComprobante.SelectedIndex = 1;
            }
            else
                lblMensaje.Text = "Cliente no encontrado";
        }

        protected void cmbProducto_SelectedIndexChanged(object sender, EventArgs e)
        {
            cont++;
            dt = new DataTable();
            dt = NProductos.BuscarByCodigo(Convert.ToInt16(cmbProducto.SelectedValue));
            if (dt != null)
            {
                _precio = Convert.ToDecimal(dt.Rows[0].ItemArray[5]);
                txtPrecioProducto.Text = _precio.ToString();
                _stock = Convert.ToInt16(dt.Rows[0].ItemArray[6]);
                txtStock.Text = _stock.ToString();
            }
            else
                lblMensaje.Text = "Producto no encontrado";
        }

        protected void btnAgregarProducto_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                if (Convert.ToInt16(txtCantidad.Text) > Convert.ToInt16(txtStock.Text))
                {
                    lblMensaje.Text = "No existen tantos. La cantidad máxma es: " + txtStock.Text;
                    lblMensaje.Visible = true;
                }
                else
                {
                    lblMensaje.Visible = false;
                    detalleV = new DetalleVenta((codigo + 1), cmbProducto.SelectedItem.ToString(), Convert.ToInt16(txtCantidad.Text), Convert.ToDecimal(txtPrecioProducto.Text), (Convert.ToDecimal((Convert.ToInt16(txtCantidad.Text)) * (Convert.ToDecimal(txtPrecioProducto.Text)))));
                    codigo++;
                    listaD.Add(detalleV);
                    dataGridViewProductos.DataSource = listaD;
                    //lista.AgregarDetalle(detalleV);
                    //dataGridViewProductos.DataSource = lista;
                    dataGridViewProductos.DataBind();
                    _total += (Convert.ToDecimal((Convert.ToInt16(txtCantidad.Text)) * (Convert.ToDecimal(txtPrecioProducto.Text))));
                    txtTotal.Text = _total.ToString();
                    txtStock.Text = (Convert.ToInt16(txtStock.Text) - Convert.ToInt16(txtCantidad.Text)).ToString();
                }
            }
            catch (Exception ex)
            {
                lblMensaje.Text = "Los valores ingresados son incorrectos. " + ex.Message;
            }
        }

        protected void btnGuardarVenta_Click(object sender, ImageClickEventArgs e)
        {
            try
            {//primero guardamos la venta
                string _fecha = DateTime.Now.ToShortDateString();
                NVentas.Insertar(_idCliente, Administrador.Administrar.IdUsuario, Convert.ToBoolean(((DropDownList)Table1.FindControl("cmbComprobante")).SelectedValue), _fecha, valor);
                string idV = NVentas.BuscarIdVenta(_idCliente, Administrador.Administrar.IdUsuario, Convert.ToBoolean(((DropDownList)Table1.FindControl("cmbComprobante")).SelectedValue), _fecha, valor);
                for (int ind = 0; ind < listaD.Count; ind++)
                {//guardamos el detalle
                    string idP = NProductos.BuscarProductoByNP(dataGridViewProductos.Rows[ind].Cells[2].Text, dataGridViewProductos.Rows[ind].Cells[4].Text);
                    NDetalleVenta.Insertar(Convert.ToInt16(idV), Convert.ToInt16(idP), Convert.ToInt16(dataGridViewProductos.Rows[ind].Cells[3]));
                }
            }
            catch (Exception ex)
            {
                lblMensaje.Text = "error " + ex;
                this.Dispose();
            }
        }
        decimal _tot = 0;
        protected void dataGridViewProductos_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            lblMensaje.Visible = true;
            int i = e.RowIndex;
            DetalleVenta d = new DetalleVenta(Convert.ToInt16(dataGridViewProductos.Rows[i].Cells[1].Text), dataGridViewProductos.Rows[i].Cells[2].Text, Convert.ToInt16(dataGridViewProductos.Rows[i].Cells[3].Text), Convert.ToDecimal(dataGridViewProductos.Rows[i].Cells[4].Text), Convert.ToDecimal(dataGridViewProductos.Rows[i].Cells[5].Text));
            for (int j = 0; j < listaD.Count; j++)
            {
                if (listaD[j].NombreProducto == d.NombreProducto && listaD[j].CantidadProducto == d.CantidadProducto && listaD[j].PrecioUnitario == d.PrecioUnitario && listaD[j].TotalPrecioProducto == d.TotalPrecioProducto)
                {
                    //_tot -= d.TotalPrecioProducto;
                    listaD.RemoveAt(i);
                    dataGridViewProductos.DataSource = listaD;
                    dataGridViewProductos.DataBind();
                    //dataGridViewProductos.DeleteRow(e.RowIndex);
                }
            }
        }

        protected void dataGridViewProductos_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                _tot += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "TotalPrecioProducto"));
                valor = _tot;
            }
            else if (e.Row.RowType == DataControlRowType.Footer)
            {
                e.Row.Cells[4].Text = "Total";
                e.Row.Cells[4].Font.Bold = true;

                e.Row.Cells[5].Text = _tot.ToString(); ;
                e.Row.Cells[5].Font.Bold = true;
            }
        }
    }
}