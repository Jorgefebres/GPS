using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class DProveedores
    {
        public int Id_Proveedor { get; set; }
        public String Nombres_Proveedor { get; set; }
        public String Direccion_Proveedor { get; set; }
        public String RUC { get; set; }
        public String Ciudad { get; set; }
        public String Mail { get; set; }
        public String Telefono { get; set; }
        public String Telefono1 { get; set; }
        public DProveedores()        
        {
        }
        public DProveedores(String parNombre, String parDireccion, String parRUC, String parCiudad, String parMail, String parTelefono, String parTelefono1)
        {
            this.Nombres_Proveedor = parNombre;
            this.Direccion_Proveedor = parDireccion;
            this.RUC = parRUC;
            this.Ciudad = parCiudad;
            this.Mail = parMail;
            this.Telefono = parTelefono;
            this.Telefono1 = parTelefono1;
        }
        public DataTable ListaProveedores()
        {
            DataTable TablaDatos = new DataTable();
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT * FROM Proveedores;";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                SqlDataAdapter SqlAdaptadorDatos = new SqlDataAdapter(SqlComando);
                SqlAdaptadorDatos.Fill(TablaDatos);
            }
            catch (Exception ex)
            {
                TablaDatos = null;
                throw new Exception("Error al intentar ejecutar el procedimiento ListaProveedores. " + ex.Message, ex);
            }
            finally
            {
                SqlConexion.Close();
            }
            return TablaDatos;
        }
        public DataTable BuscarProveedorByNombre(DProveedores parProveedores)
        {
            DataTable TablaDatos = new DataTable("compras.Proveedores");
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT * FROM Proveedores WHERE  Nombre='" + parProveedores.Nombres_Proveedor + "';";
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
        public string Insertar(DProveedores parProveedores)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "INSERT INTO Proveedores(Nombre,RUC,Direccion,Ciudad,Mail,telefono,Telefono1) VALUES('"+ 
                    parProveedores.Nombres_Proveedor+"','" + parProveedores.RUC + "','" + 
                    parProveedores.Direccion_Proveedor + "','" + parProveedores.Ciudad + "','" + 
                    parProveedores.Mail + "','" + parProveedores.Telefono + "','" + parProveedores.Telefono1 + "');";
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
        public string Eliminar(DProveedores parProveedores)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "DELETE FROM Proveedores WHERE (IdProveedor='" + parProveedores.Id_Proveedor + "');";
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
        public string EditarProveedor(DProveedores parProveedor)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "UPDATE Proveedores SET Nombre='" + parProveedor.Nombres_Proveedor + "', Direccion='" + parProveedor.Direccion_Proveedor + "',telefono='" + parProveedor.Telefono + "',telefono1='"+parProveedor.Telefono1+"',Mail='"+parProveedor.Mail+"' WHERE IdProducto='" + parProveedor.Id_Proveedor + "';";
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
