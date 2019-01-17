using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class DConexion
    {
        //Conexion SQL
        public static String CnBDEmpresa = "Data Source=(local); Initial Catalog=SistemaGPS; Integrated Security=SSPI;";
        //public static String CnBDEmpresa = ConfigurationManager.ConnectionStrings["GPSConnectionString"].ConnectionString; 
        //Conexion MySQL
        //public static String CnBDEmpresa = "server=localhost; database=GPS; Uid=root; pwd=;";

        public String ChequearConexion()
        { 
            String mensaje = "";
            SqlConnection SqlConexion = new SqlConnection();
            //SqlConnection SqlConexion = new SqlConnection();
            try
            {
                /*MySqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                MySqlConexion.Open();*/
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                mensaje = "Y";
            }
            catch (Exception ex)
            {
                mensaje = ex.Message;
            }
            finally
            {
                if (SqlConexion.State == ConnectionState.Open)
                    SqlConexion.Close();
                //MySqlConexion.Close();
            }
            return mensaje;
        }
    }
}
