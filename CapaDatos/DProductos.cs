using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class DProductos
    {
        public int Id_Producto { get; set; }
        public int Id_Proveedor { get; set; }
        public String Nombre_Producto { get; set; }
        public String Nombre_Marca { get; set; }
        public String Descripcion_Producto { get; set; }
        public decimal Precio_Unitario { get; set; }
        public int Stock { get; set; }
        public String FechaIngreso { get; set; }
        public bool Estado { get; set; }
        public String Nombre_Buscado { get; set; }
        public int Cantidad { get; set; }

        public DProductos()
        {
        }
        public DProductos(int parId_Proveedor, String parNombre_Producto, String parNombre_Marca, String parDescripcion,
            decimal parPrecio_Unitario, int parStock, String parFechaIngreso,bool parEstado)
        {
            this.Id_Proveedor = parId_Proveedor;
            this.Nombre_Producto = parNombre_Producto;
            this.Nombre_Marca = parNombre_Marca;
            this.Descripcion_Producto = parDescripcion;
            this.Precio_Unitario = parPrecio_Unitario;
            this.Stock = parStock;
            this.FechaIngreso = parFechaIngreso;
            this.Estado = parEstado;
        }
        public DataTable ListaProductos()
        {
            DataTable TablaDatos = new DataTable();
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT * FROM Productos;";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                SqlDataAdapter SqlAdaptadorDatos = new SqlDataAdapter(SqlComando);
                SqlAdaptadorDatos.Fill(TablaDatos);
            }
            catch (Exception ex)
            {
                TablaDatos = null;
                throw new Exception("Error al intentar ejecutar el procedimiento Produccion.ListaProductos. " + ex.Message, ex);
            }
            finally
            {
                SqlConexion.Close();
            }
            return TablaDatos;
        }
        public DataTable ListaProductosByEstado(bool parEstado)
        {
            DataTable TablaDatos = new DataTable();
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT * FROM Productos WHERE Estado='"+parEstado+"';";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                SqlDataAdapter SqlAdaptadorDatos = new SqlDataAdapter(SqlComando);
                SqlAdaptadorDatos.Fill(TablaDatos);
            }
            catch (Exception ex)
            {
                TablaDatos = null;
                throw new Exception("Error al intentar ejecutar el procedimiento Produccion.ListaProductos. " + ex.Message, ex);
            }
            finally
            {
                SqlConexion.Close();
            }
            return TablaDatos;
        }
        public decimal PrecioProducto(int parIdBuscado)
        {
            decimal precio = 0;
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT Precio FROM Productos WHERE IdProducto='" + parIdBuscado + "';";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlDataReader reader = SqlComando.ExecuteReader();
                precio = Convert.ToDecimal(reader[0]);
            }
            catch (Exception ex)
            {
                throw new Exception("Error al intentar ejecutar el procedimiento almacenado Produccion.PrecioProducto. " + ex.Message, ex);
            }
            finally
            {
                SqlConexion.Close();
            }
            return precio;
        }
        public int CantidadProducto(int parIdBuscado)
        {
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT Stock FROM Productos WHERE IdProducto='" + parIdBuscado + "';";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlDataReader reader = SqlComando.ExecuteReader();
                reader.Read();
                return Convert.ToInt16(reader[0]);
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
        public DataTable BuscarByNombre(DProductos parProductos)
        {
            DataTable TablaDatos = new DataTable();
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT * FROM Productos WHERE Nombre='" + parProductos.Nombre_Buscado + "' OR Marca='"+parProductos.Nombre_Buscado+"';";
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
        public DataTable BuscarByCodigo(int parIdProducto)
        {
            DataTable TablaDatos = new DataTable("Produccion.Productos");
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT * FROM Productos WHERE IdProducto='" + parIdProducto + "';";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
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
        public string Insertar(DProductos parProductos)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "INSERT INTO Productos(IdProveedor,Nombre,Marca,Descripcion,Precio,Stock,FechaIngreso,Estado) VALUES ('" + 
                    parProductos.Id_Proveedor + "','" + parProductos.Nombre_Producto + "','" + 
                    parProductos.Nombre_Marca + "','" + parProductos.Descripcion_Producto + "'," + 
                    parProductos.Precio_Unitario + "," +parProductos.Stock+ ",'"+parProductos.FechaIngreso+"' , '"+parProductos.Estado+"');" ;
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
        public string Eliminar(DProductos parProductos)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "DELETE FROM Productos WHERE (IdProducto='" + parProductos.Id_Producto + "');";
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
        public string EditarProducto(DProductos parProducto)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "UPDATE Productos SET Nombre='" + parProducto.Nombre_Producto + "', Descripcion='" + parProducto.Descripcion_Producto + "',Precio='" + parProducto.Precio_Unitario + "',Estado='"+parProducto.Estado+"' WHERE IdProducto='" + parProducto.Id_Producto + "';";
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
        public string AgregarProductos(DProductos parProducto)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "UPDATE Productos SET Stock=(" + parProducto.Stock +"+"+ parProducto.Cantidad + ") WHERE IdProducto='" + parProducto.Id_Producto + "';";
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

        public string BuscarProductoByNP(string parNombre, string parPrecio)
        {
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT IdProducto FROM Productos WHERE Nombre='" + parNombre+ "' AND Precio='" + parPrecio +"';";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlDataReader reader = SqlComando.ExecuteReader();
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