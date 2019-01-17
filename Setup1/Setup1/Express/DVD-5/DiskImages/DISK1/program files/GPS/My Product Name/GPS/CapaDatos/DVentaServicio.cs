using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class DVentaServicio
    {
        public int Id_VentaServicio { get; set; }
        public int Id_Cliente { get; set; }
        public int Id_Empleado { get; set; }
        public string Fecha_Venta { get; set; }
        public int Id_Servicio { get; set; }

        public DVentaServicio()
        {
        }
        public DVentaServicio(int parId_Cliente, int parId_Empleado,int parId_Servicio, string parFechaVenta)
        {
            this.Id_Empleado = parId_Empleado;
            this.Fecha_Venta = parFechaVenta;
            this.Id_Cliente = parId_Cliente;
            this.Id_Servicio = parId_Servicio;
        }
        public DataTable MostrarVentasServicioRealizadas()
        {
            DataTable TablaDatos = new DataTable();
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT * FROM VentaServicio";
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
        public string Insertar(DVentaServicio parVentaServicio)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();        
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "INSERT INTO VentaServicio(Idcliente,IdEmpleado,IdServicio,Fecha) VALUES('" 
                    + parVentaServicio.Id_Cliente + "','" + parVentaServicio.Id_Empleado + "','" + parVentaServicio.Id_Servicio + "','"+parVentaServicio.Fecha_Venta+"');";
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
        public DataTable MostrarVentasServicioRealizadasByCliente(int parIdcliente)
        {
            DataTable TablaDatos = new DataTable();
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT * FROM VentaServicio WHERE Idcliente='" + parIdcliente + "'";
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
        public DataTable MostrarVentasServicioRealizadasByEmpleado(int parIdEmpleado)
        {
            DataTable TablaDatos = new DataTable();
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT * FROM VentaServicio WHERE IdEmpleado='" + parIdEmpleado + "'";
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
        public int BuscarIdCompra(string parFecha, int parIdEmpleado,decimal parTotal)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();

                SqlCommand SqlComando = new SqlCommand();
                SqlComando.Connection = SqlConexion;
                SqlComando.CommandText = "SELECT IdCompra FROM Compras WHERE IdEmpleado='" + parIdEmpleado + "' AND Fecha='"+parFecha+"' AND Total='"+parTotal+"';";
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

    }
}
