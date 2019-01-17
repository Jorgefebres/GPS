using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaPresentacion.Vendedor
{
    public partial class VentaServicios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            string _fecha = DateTime.Now.ToShortDateString(); ;
            try
            {
                SqlDataSource4.InsertParameters["Idcliente"].DefaultValue = cmbClientes.SelectedValue;
                SqlDataSource4.InsertParameters["IdEmpleado"].DefaultValue = Administrador.Administrar.IdUsuario.ToString();
                SqlDataSource4.InsertParameters["IdServicio"].DefaultValue = cmbServicios.SelectedValue;
                SqlDataSource4.InsertParameters["Fecha"].DefaultValue = _fecha;
                SqlDataSource4.Insert();
                lblMSG.Text = "Venta de servicios registrada correctamente";
                lblMSG.Visible = true;
                lblMSG.CssClass = "message-success";
            }
            catch (Exception ex)
            {
                lblMSG.Visible = true;
                lblMSG.Text = ex.Message;
            }
        }
    }
}