using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class DServicios
    {
        public int Id_Servicio { get; set; }
        public String Nombre_Servicio { get; set; }
        public String Descripcion_Servicio { get; set; }
        public bool Estado_Servicio { get; set; }
        public decimal Precio_Servicio { get; set; }
        public String Nombre_Busqueda { get; set; }
        //public System.Net.Mime.MediaTypeNames.Image Imagen { get; set; }
        public DServicios()        
        {
        }
        public DServicios(String parNombre, String parDescripcion, bool parEstado, decimal parPrecio)
        {
            this.Nombre_Servicio = parNombre;
            this.Descripcion_Servicio = parDescripcion;
            this.Estado_Servicio=parEstado;
            this.Precio_Servicio=parPrecio;
        }
        public DataTable ListaServicios()
        {
            DataTable TablaDatos = new DataTable();
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT * FROM Servicios;";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                SqlDataAdapter SqlAdaptadorDatos = new SqlDataAdapter(SqlComando);
                SqlAdaptadorDatos.Fill(TablaDatos);
            }
            catch (Exception ex)
            {
                TablaDatos = null;
                throw new Exception("Error al intentar ejecutar el procedimiento Produccion.ListaServicios. " + ex.Message, ex);
            }
            finally
            {
                SqlConexion.Close();
            }
            return TablaDatos;
        }
        public DataTable ListaServiciosByEstado(bool parEstado)
        {
            DataTable TablaDatos = new DataTable();
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT * FROM Servicios WHERE Estado='"+parEstado+"';";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                SqlDataAdapter SqlAdaptadorDatos = new SqlDataAdapter(SqlComando);
                SqlAdaptadorDatos.Fill(TablaDatos);
            }
            catch (Exception ex)
            {
                TablaDatos = null;
                throw new Exception("Error al intentar ejecutar el procedimiento Produccion.ListaServicios. " + ex.Message, ex);
            }
            finally
            {
                SqlConexion.Close();
            }
            return TablaDatos;
        }
        public decimal PrecioServicio(int parIdBuscado)
        {
            decimal precio = 0;
            SqlConnection SqlConexion = new SqlConnection();

            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT Precio FROM Servicios WHERE IdServicio='" + parIdBuscado + "';";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlDataReader reader = SqlComando.ExecuteReader();
                precio = Convert.ToDecimal(reader[0]);
            }

            catch (Exception ex)
            {
                throw new Exception("Error al intentar ejecutar el procedimiento Produccion.PrecioServicio. " + ex.Message, ex);
            }

            finally
            {
                SqlConexion.Close();
            }

            return precio;
        }
        public DataTable Buscar(DServicios parServicios)
        {
            DataTable TablaDatos = new DataTable("Produccion.Servicios");
            SqlConnection SqlConexion = new SqlConnection();

            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT * FROM Servicios WHERE Descripcion='" + parServicios.Nombre_Busqueda + "' OR Nombre='"+parServicios.Nombre_Busqueda+"';";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlDataAdapter SqlAdaptadorDatos = new SqlDataAdapter(SqlComando);
                SqlAdaptadorDatos.Fill(TablaDatos);
            }
            catch (Exception ex)
            {
                TablaDatos = null;
                throw new Exception("Error al intentar ejecutar el procedimiento Produccion.BuscarProducto. " + ex.Message, ex);
            }
            finally
            {
                if (SqlConexion.State == ConnectionState.Open)
                    SqlConexion.Close();
            }
            return TablaDatos;
        }
        public string Insertar(DServicios parServicios)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "INSERT INTO Servicios(Nombre,Descripcion,Precio,Estado) VALUES ('"+parServicios.Nombre_Servicio+"','"
                    + parServicios.Descripcion_Servicio + "','" + parServicios.Precio_Servicio + "',1 );";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                Respuesta = "Y";
            }
            catch (SqlException ex)
            {
                Respuesta = "Error al intentar ejecutar el procedimiento almacenado Produccion.InsertarProducto. " + ex.Message;
            }
            finally
            {
                if (SqlConexion.State == ConnectionState.Open)
                    SqlConexion.Close();
            }
            return Respuesta;
        }
        public string Eliminar(DServicios parServicios)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "DELETE FROM Servicios WHERE (IdServicio=" + parServicios.Id_Servicio + ");";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                Respuesta = "Y";
            }
            catch (SqlException ex)
            {
                Respuesta = "Error al intentar ejecutar el procedimiento almacenado Produccion.EliminarProducto. " + ex.Message;
            }
            finally
            {
                if (SqlConexion.State == ConnectionState.Open)
                    SqlConexion.Close();
            }
            return Respuesta;
        }
        public string EditarDatos(DServicios parServicios)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "UPDATE Servicios SET Nombre='"+parServicios.Nombre_Servicio+"', Descripcion='" + parServicios.Descripcion_Servicio + 
                    "', Precio='"+parServicios.Precio_Servicio+"',Estado='" + parServicios.Estado_Servicio + "';";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                Respuesta = "Y";
            }
            catch (SqlException ex)
            {
                Respuesta = "Error al intentar ejecutar el procedimiento almacenado Produccion.EditarProducto. " + ex.Message;
            }
            finally
            {
                if (SqlConexion.State == ConnectionState.Open)
                    SqlConexion.Close();
            }
            return Respuesta;
        }
        public string EditarPrecio(DServicios parServicios)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();

            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "UPDATE Servicios SET Precio=" + parServicios.Precio_Servicio + ";";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                Respuesta = "Y";
            }

            catch (SqlException ex)
            {
                Respuesta = "Error al intentar ejecutar el procedimiento almacenado Produccion.EditarProducto. " + ex.Message;
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
