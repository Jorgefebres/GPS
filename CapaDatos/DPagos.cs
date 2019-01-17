using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class DPagos
    {
        public int Id_Pago { get; set; }
        public int Id_VentaServicio { get; set; }
        public int Id_Empleado { get; set; }
        public String Fecha_Pago { get; set; }
        public decimal Monto { get; set; }
        public DPagos()        
        {
        }
        public DPagos(int parIdVentaServicio, string parFecha, decimal parMonto, int parIdEmpleado)
        {
            this.Id_VentaServicio = parIdVentaServicio;
            this.Fecha_Pago = parFecha;
            this.Monto = parMonto;
            this.Id_Empleado=parIdEmpleado;
        }
        public DataTable ListaPagosVentaServicio(int IdVentaServicio)
        {
            DataTable TablaDatos = new DataTable();
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT * FROM Pagos WHERE IdVentaServicio='" + IdVentaServicio + "';";
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
        public string Insertar(DPagos parPagos)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "INSERT INTO Pagos(IdVentaServicio,Fecha,Monto,IdEmpleado) VALUES('"+parPagos.Id_VentaServicio + "','" + parPagos.Fecha_Pago + "'," + parPagos.Monto + ",'" + parPagos.Id_Empleado + "');";
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
