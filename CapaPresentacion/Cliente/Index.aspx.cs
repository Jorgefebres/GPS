using Subgurim.Controles;
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

            CargarMapa();
            Label2.Text = IdUsuario;
            //GMap1.DataLatField = "-16.404054478065266";
            //GMap1.DataLngField = "-71.53901144999998";
        }
        public void CargarMapa()
        {
            GLatLng latLng = new GLatLng(latitud, longitud);
            //GMap1.mapType = GMapType.GTypes.Hybrid;
            //GMap1.addMapType(GMapType.GTypes.Physical);
            //GMap1.addControl(new GControl(GControl.preBuilt.MapTypeControl));
            GMap1.enableRotation = true;
            GMap1.setCenter(latLng, 16);
        }
        protected void cmbServicios_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (cmbServicios.SelectedIndex)
            {
                case 0:
                    latitud = -16.404054478065266;
                    longitud = -71.53901144999998;
                    CargarMapa();
                    break;
                case 1:
                    latitud = -16.3814477;
                    longitud = -71.55573849999996;
                    CargarMapa();
                    break;
                case 2:
                    latitud = -16.3033314;
                    longitud = -73.00140380859375;
                    CargarMapa();
                    break;
                case 3:
                    latitud = -12.046374;
                    longitud = -77.0427934;
                    CargarMapa();
                    break;
                default:
                    latitud = -16.4004349;
                    longitud = -71.51307109999999;
                    CargarMapa();
                    break;
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