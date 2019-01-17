using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class DCompras
    { 
        public int Id_Empleado { get; set; }
        public string Fecha_Compra { get; set; }
        public decimal Total_Compra { get; set; }

        public DCompras()
        {
        }
        public DCompras(int parId_Empleado, string parFechaCompra,Decimal parTotal_Compra)
        {
            this.Id_Empleado = parId_Empleado;
            this.Fecha_Compra = parFechaCompra;
            this.Total_Compra = parTotal_Compra;
        }
        public DataTable MostrarComprasRealizadas()
        {
            DataTable TablaDatos = new DataTable();
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT * FROM Compras";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                SqlDataAdapter SqlAdaptadorDatos = new SqlDataAdapter(SqlComando);
                SqlAdaptadorDatos.Fill(TablaDatos);
            }

            catch (Exception ex)
            {
                TablaDatos = null;
                throw new Exception("Error al intentar ejecutar el procedimiento Mostrar compras realizadas. " + ex.Message, ex);
            }

            finally
            {
                SqlConexion.Close();
            }

            return TablaDatos;
        }        
        public string Insertar(DCompras parCompras)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();        
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "INSERT INTO Compras(IdEmpleado,Fecha,Total) VALUES('" + parCompras.Id_Empleado + "','" + parCompras.Fecha_Compra + "'," + parCompras.Total_Compra + ");";
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
        public int BuscarIdCompra(DCompras parCompra)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();

                SqlCommand SqlComando = new SqlCommand();
                SqlComando.Connection = SqlConexion;
                SqlComando.CommandText = "SELECT IdCompra FROM Compras WHERE IdEmpleado='" + parCompra.Id_Empleado + "' AND Fecha='"+parCompra.Fecha_Compra+"' AND Total='"+parCompra.Total_Compra+"';";
                SqlComando.CommandType = CommandType.Text;
                SqlDataReader reader = SqlComando.ExecuteReader();
                if (reader.HasRows)
                    return Convert.ToInt16(reader[0]);
                else
                    return 0;
            }
            catch (Exception ex)
            {
                Respuesta = "Error al intentar ejecutar el procedimiento Buscar ID Compra. " + ex.Message;
                return 0;
            }

            finally
            {
                if (SqlConexion.State == ConnectionState.Open)
                    SqlConexion.Close();
            }
        }

        /*public string Eliminar(DCompras parCompras)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();

                SqlCommand SqlComando = new SqlCommand();
                SqlComando.Connection = SqlConexion;
                SqlComando.CommandText = "DELETE * FROM Compras WHERE IdCompra=" + parCompras.Id_Compra+";";
                SqlComando.CommandType = CommandType.Text;

                SqlComando.ExecuteNonQuery();
                Respuesta = "Y";
            }

            catch (Exception ex)
            {
                Respuesta = "Error al intentar ejecutar el procedimiento Eliminar Compra. " + ex.Message;
            }

            finally
            {
                if (SqlConexion.State == ConnectionState.Open)
                {
                    SqlConexion.Close();
                }
            }

            return Respuesta;
        }*/
    }
}
