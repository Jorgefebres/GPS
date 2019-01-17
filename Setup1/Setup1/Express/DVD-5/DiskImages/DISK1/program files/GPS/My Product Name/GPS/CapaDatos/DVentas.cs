using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class DVentas
    {
        public int Id_Venta { get; set; }
        public int Id_Cliente { get; set; }
        public int Id_Empleado { get; set; }
        public bool Tipo_Venta { get; set; }
        public decimal Total_venta { get; set; }
        public string Fecha_Venta { get; set; }
        public DVentas()        
        {
        }
        public DVentas(int parIdCliente,int parIdEmpleado,bool parTipoVenta,decimal parTotal,string parFecha)
        {
            this.Id_Cliente = parIdCliente;
            this.Id_Empleado = parIdEmpleado;
            this.Tipo_Venta = parTipoVenta;
            this.Fecha_Venta = parFecha;
        }
        public DataTable ListaVentas()
        {
            DataTable TablaDatos = new DataTable();
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT * FROM Ventas;";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                SqlDataAdapter SqlAdaptadorDatos = new SqlDataAdapter(SqlComando);
                SqlAdaptadorDatos.Fill(TablaDatos);
            }
            catch (Exception ex)
            {
                TablaDatos = null;
                throw new Exception("Error al intentar ejecutar el procedimiento ListaVentass. " + ex.Message, ex);
            }
            finally
            {
                SqlConexion.Close();
            }
            return TablaDatos;
        }
        public DataTable ListaVentasByEmpleado(DVentas parVenta)
        {
            DataTable TablaDatos = new DataTable();
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT * FROM Ventas WHERE IdEmpleado='"+parVenta.Id_Empleado+"';";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                SqlDataAdapter SqlAdaptadorDatos = new SqlDataAdapter(SqlComando);
                SqlAdaptadorDatos.Fill(TablaDatos);
            }
            catch (Exception ex)
            {
                TablaDatos = null;
                throw new Exception("Error al intentar ejecutar el procedimiento ListaVentass. " + ex.Message, ex);
            }
            finally
            {
                SqlConexion.Close();
            }
            return TablaDatos;
        }
        public DataTable ListaVentasByFecha(DVentas parVenta)
        {
            DataTable TablaDatos = new DataTable();
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT * FROM Ventas WHERE Fecha='" + parVenta.Fecha_Venta + "';";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                SqlDataAdapter SqlAdaptadorDatos = new SqlDataAdapter(SqlComando);
                SqlAdaptadorDatos.Fill(TablaDatos);
            }
            catch (Exception ex)
            {
                TablaDatos = null;
                throw new Exception("Error al intentar ejecutar el procedimiento ListaVentass. " + ex.Message, ex);
            }
            finally
            {
                SqlConexion.Close();
            }
            return TablaDatos;
        }        
        public DataTable ListaVentasEntreFecha(string parFechaMenor,string parFechaMayor)
        {
            DataTable TablaDatos = new DataTable();
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT * FROM [Ventas] WHERE (([Fecha] > "+parFechaMenor+") AND ([Fecha] > "+parFechaMayor+"));";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                SqlDataAdapter SqlAdaptadorDatos = new SqlDataAdapter(SqlComando);
                SqlAdaptadorDatos.Fill(TablaDatos);
            }
            catch (Exception ex)
            {
                TablaDatos = null;
                throw new Exception("Error al intentar ejecutar el procedimiento ListaVentass. " + ex.Message, ex);
            }
            finally
            {
                SqlConexion.Close();
            }
            return TablaDatos;
        }
        public DataTable ListaVentaByCliente(DVentas parVentas)
        {
            DataTable TablaDatos = new DataTable("ventas.Ventas");
            SqlConnection SqlConexion = new SqlConnection();
            String sentencia ;
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                sentencia = "SELECT * FROM Ventas WHERE  IdCliente='" + parVentas.Id_Cliente + "';";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                SqlDataAdapter SqlAdaptadorDatos = new SqlDataAdapter(SqlComando);
                SqlAdaptadorDatos.Fill(TablaDatos);
            }

            catch (Exception ex)
            {
                TablaDatos = null;
                throw new Exception("Error al intentar ejecutar el procedimiento BuscarProveedor. " + ex.Message, ex);
            }

            finally
            {
                if (SqlConexion.State == ConnectionState.Open)
                    SqlConexion.Close();
            }
            return TablaDatos;
        }
        public string Insertar(DVentas parVentas)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "INSERT INTO Ventas(IdCliente,IdEmpleado,TipoVenta,Total,Fecha) VALUES('" + 
                    parVentas.Id_Cliente + "','" + parVentas.Id_Empleado + "','" + parVentas.Tipo_Venta + "','" 
                    + parVentas.Total_venta + "','" + parVentas.Fecha_Venta + "');";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                Respuesta = "Y";
            }
            catch (SqlException ex)
            {
                Respuesta = "Error al intentar ejecutar el procedimiento InsertarCliente. " + ex.Message;
            }
            finally
            {
                if (SqlConexion.State == ConnectionState.Open)
                    SqlConexion.Close();
            }
            return Respuesta;
        }
        public string Eliminar(DVentas parVentas)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "DELETE FROM Ventas WHERE (IdVenta=" + parVentas.Id_Venta + ");";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                Respuesta = "Y";
            }
            catch (SqlException ex)
            {
                Respuesta = "Error al intentar ejecutar el procedimiento EliminarCliente. " + ex.Message;
            }
            finally
            {
                if (SqlConexion.State == ConnectionState.Open)
                    SqlConexion.Close();
            }
            return Respuesta;
        }
        public string BuscarIdVenta(DVentas parVenta)
        {
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT IdVenta FROM Ventas WHERE IdCliente='" + parVenta.Id_Cliente + "' AND IdEmpleado='"+
                    parVenta.Id_Empleado + "' AND TipoVenta='" + parVenta.Tipo_Venta + "' AND Total='" + parVenta.Total_venta + "' AND Fecha='" +
                    parVenta.Fecha_Venta+"';";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlDataReader reader = SqlComando.ExecuteReader();
                reader.Read();
                    return reader[0].ToString();
            }
            catch (Exception ex)
            {
                throw new Exception("Error al intentar ejecutar el procedimiento almacenado Produccion.PrecioProducto. " + ex.Message, ex);
            }
            finally
            {
                SqlConexion.Close();
            }
        }
    }
}
