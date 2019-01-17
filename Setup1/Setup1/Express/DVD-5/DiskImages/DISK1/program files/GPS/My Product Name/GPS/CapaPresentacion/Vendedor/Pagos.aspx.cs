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
    public partial class Pagos : System.Web.UI.Page
    {
        string _fecha;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            _fecha = DateTime.Now.ToShortDateString();
        }

        protected void btnRegistrarPago_Click(object sender, ImageClickEventArgs e)
        {
            SqlDataSource3.InsertParameters["IdVentaServicio"].DefaultValue = ListBox1.SelectedValue;
            SqlDataSource3.InsertParameters["IdEmpleado"].DefaultValue = Administrador.Administrar.IdUsuario.ToString();
            SqlDataSource3.InsertParameters["Monto"].DefaultValue = txtMonto.Text;
            SqlDataSource3.InsertParameters["Fecha"].DefaultValue = _fecha;
            SqlDataSource3.Insert();
        }

        protected void cmbClientes_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ListBox1.Items.Count > 0)
            {
                ListBox1.SelectedIndex = 0;
                dt = NServicios.BuscarServicio(ListBox1.SelectedItem.ToString());
                txtMonto.Text = dt.Rows[0].ItemArray[3].ToString();
            }
        }
    }
}