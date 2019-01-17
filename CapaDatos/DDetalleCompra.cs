using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class DDetalleCompra
    {
        public int Id_Compra { get; set; }
        public int Id_Produtco { get; set; }
        public int Cantidad { get; set; }
        public DDetalleCompra()
        {
        }
        public DDetalleCompra(int parId_Compra, int parId_Producto, int parCantidad)
        {
            this.Id_Compra = parId_Compra;
            this.Id_Produtco = parId_Producto;
            this.Cantidad = parCantidad;
        }
        public DataTable BuscarDetalle(int Idcompra)
        {
            DataTable TablaDatos = new DataTable();
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT * FROM DetalleCompra WHERE IdCompra='" + Idcompra + "';";
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
        public string Insertar(DDetalleCompra parDetalleCompra)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();        
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "INSERT INTO DetalleCompra(IdCompra,IdProducto,Cantidad) VALUES('" + parDetalleCompra.Id_Compra + "','" + parDetalleCompra.Id_Produtco + "'," + parDetalleCompra.Cantidad + ");";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                Respuesta = "Y";
            }
            catch (SqlException ex)
            {
                Respuesta ="Error al intentar ejecutar el procedimiento InsertarPedido. " + ex.Message;
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
