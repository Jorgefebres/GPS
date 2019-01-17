using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class DDetalleVenta
    {
        public int Id_Venta { get; set; }
        public int Id_Producto { get; set; }
        public int Cantidad { get; set; }
        public DDetalleVenta()
        {
        }
        public DDetalleVenta(int parId_Venta, int parId_Producto, int parCantidad)
        {
            this.Id_Venta = parId_Venta;
            this.Id_Producto = parId_Producto;
            this.Cantidad = parCantidad;
        }
        public DataTable BuscarDetalle(int IdVenta)
        {
            DataTable TablaDatos = new DataTable();
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT * FROM DetalleVenta WHERE IdVenta='" + IdVenta + "';";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                SqlDataAdapter SqlAdaptadorDatos = new SqlDataAdapter(SqlComando);
                SqlAdaptadorDatos.Fill(TablaDatos);
            }
            catch (Exception ex)
            {
                TablaDatos = null;
                throw new Exception("Error al intentar ejecutar el procedimiento ListaClientes. " + ex.Message, ex);
            }
            finally
            {
                SqlConexion.Close();
            }
            return TablaDatos;
        }                
        public string Insertar(DDetalleVenta parDetalleVenta)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();        
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "INSERT INTO DetalleVenta(IdVenta,IdProducto,Cantidad) VALUES('" + parDetalleVenta.Id_Venta + "','" + parDetalleVenta.Id_Producto + "," + parDetalleVenta.Cantidad + ");";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                Respuesta = "Y";
            }
            catch (SqlException ex)
            {
                Respuesta = "Error al intentar ejecutar el procedimiento InsertarPedido. " + ex.Message;
            }
            finally
            {
                if (SqlConexion.State == ConnectionState.Open)
                    SqlConexion.Close();
            }
            return Respuesta;
        }
    }
}
