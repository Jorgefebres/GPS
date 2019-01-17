using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaPresentacion.Administrador
{
    public partial class Administrar : System.Web.UI.MasterPage
    {
        public static int IdUsuario { get; set; }
        public static string Usuario { get; set; }
        public static bool Tipo { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            lbluser.Text = Usuario; 
        }
    }
}