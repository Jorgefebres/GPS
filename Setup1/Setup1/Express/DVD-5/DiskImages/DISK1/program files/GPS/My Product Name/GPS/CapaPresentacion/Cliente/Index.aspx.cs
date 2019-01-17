using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaPresentacion.Cliente
{
    public partial class Index : System.Web.UI.Page
    {
        public static Double latitud { get; set; }
        public static Double longitud { get; set; }
        public static string IdUsuario { get; set; }
        private string API_KEY;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = IdUsuario;
        }

        protected void cmbServicios_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (cmbServicios.SelectedIndex)
            {
                case 0: 
                    latitud = -16.404054478065266;
                    longitud = -71.53901144999998;
                    break;
                case 1:
                    latitud= -0.229498;
                    longitud= -78.524277;
                    break;
                case 2:
                    latitud= 40.7142691;
                    longitud = -74.0059729;
                    break;
                case 3:
                    latitud= 51.5001524;
                    longitud= -0.1262362;
                    break;
                default: break;
            }
        }
        /*Coordenadas
        Quito
        -0,229498
        -78,524277

        New York
        40,7142691
        -74,0059729

        Londres
        51,5001524
        -0,1262362*/
    }
}