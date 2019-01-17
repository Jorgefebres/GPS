using CapaNegocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaPresentacion.Administrador
{
    public partial class AgregarStockProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label10.Visible = false;
        }

        protected void btnAdd_Click(object sender, ImageClickEventArgs e)
        {
            string a = ListBox1.Text;
            ListBox1.SelectedIndex = 0;
            NProductos.AgregarProductos(Convert.ToInt16(cmbProductos.SelectedValue), Convert.ToInt16(txtCantidad.Text));
            ListBox1.Items.Clear();
            Label10.Text = "Producto actualizado correctamente";
            Label10.Visible = true;
            this.Dispose();
        }
    }
}