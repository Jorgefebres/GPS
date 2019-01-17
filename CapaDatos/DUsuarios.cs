using System;
using System.Collections.Generic;
using System.Data; 
using System.Data.SqlClient; 
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class DUsuarios
    { 
        public int Id_Usuario { get; set; }
        public String Nombre_Usuario { get; set; }
        public String Apellido_Usuario { get; set; }
        public String DNI { get; set; }
        public String Direccion { get; set; }
        public String Mail { get; set; }
        public String Telefono { get; set; }
        public String Telefono1 { get; set; }
        public string Usuario { get; set; }
        public String Password { get; set; }
        public int Tipo { get; set; }
        public String Usuario_Buscado { get; set; }

        public DUsuarios()
        {
        }
        public DUsuarios(int parId_Usuario, String parNombre_Usuario,string parApellido_Usuario,string parDNI,string parDireccion,string parMail,string parTelefono1,string parTelefono2,string parUsuario, String parPassword, int parTipo)
        {
            this.Id_Usuario = parId_Usuario;
            this.Nombre_Usuario = parNombre_Usuario;
            this.Apellido_Usuario = parApellido_Usuario;
            this.DNI = parDNI;
            this.Direccion = parDireccion;
            this.Mail = parMail;
            this.Telefono = parTelefono1;
            this.Telefono1 = parTelefono2;
            this.Usuario = parUsuario;
            this.Password = parPassword;
            this.Tipo = parTipo;
        }
        public DataTable ListaEmpleados()
        {
            //String  sql="SELECT Nombre,Tipo FROM Usuarios";
            SqlConnection SqlConexion = new SqlConnection();
            //SqlCommand cmd = new SqlCommand(sql,SqlConexion);
            DataTable TablaDatos = new DataTable();            
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT * FROM Usuarios WHERE Tipo=0;";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                SqlDataAdapter SqlAdaptadorDatos = new SqlDataAdapter(SqlComando);
                SqlAdaptadorDatos.Fill(TablaDatos);
            }
            catch (Exception ex)
            {
                TablaDatos = null;
                throw new Exception("Error al intentar ejecutar el procedimiento ListaUsuarios. " + ex.Message, ex);
            }
            finally
            {
                SqlConexion.Close();
            }
            return TablaDatos;
        }
        public DataTable ListaAdministradores()
        {
            //String  sql="SELECT Nombre,Tipo FROM Usuarios";
            SqlConnection SqlConexion = new SqlConnection();
            //SqlCommand cmd = new SqlCommand(sql,SqlConexion);
            DataTable TablaDatos = new DataTable();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT * FROM Usuarios WHERE Tipo=1;";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                SqlDataAdapter SqlAdaptadorDatos = new SqlDataAdapter(SqlComando);
                SqlAdaptadorDatos.Fill(TablaDatos);
            }
            catch (Exception ex)
            {
                TablaDatos = null;
                throw new Exception("Error al intentar ejecutar el procedimiento ListaUsuarios. " + ex.Message, ex);
            }
            finally
            {
                SqlConexion.Close();
            }
            return TablaDatos;
        }
        public string Insertar(DUsuarios parUsuarios)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "INSERT INTO Usuarios(Nombres,Apellidos,DNI,Direccion,Mail,Telefono,Telefono1,Usuario,Password,Tipo) VALUES('" + 
                    parUsuarios.Nombre_Usuario + "','" + parUsuarios.Apellido_Usuario + "','" +
                    parUsuarios.DNI + "','" + parUsuarios.Direccion + "','" + parUsuarios.Mail + "','" +
                    parUsuarios.Telefono + "','" + parUsuarios.Telefono1 + "','" + parUsuarios.Usuario + "','" + 
                    parUsuarios.Password + "'," + parUsuarios.Tipo + ");";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                Respuesta = "Y";
            }
            catch (SqlException ex)
            {
                Respuesta = "Error al intentar ejecutar el procedimiento almacenado RecursosHumanos.InsertarUsuario. " + ex.Message;
            }
            finally
            {
                if (SqlConexion.State == ConnectionState.Open)
                    SqlConexion.Close();
            }
            return Respuesta;
        }
        public string Eliminar(DUsuarios parUsuarios)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "DELETE FROM Usuarios WHERE (IdUsuario=" + parUsuarios.Id_Usuario + ");";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                Respuesta = "Y";
            }
            catch (SqlException ex)
            {
                Respuesta = "Error al intentar ejecutar el procedimiento EliminarUsuario. " + ex.Message;
            }
            finally
            {
                if (SqlConexion.State == ConnectionState.Open)
                    SqlConexion.Close();
            }
            return Respuesta;
        }
        public string Editar(DUsuarios parUsuarios)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "UPDATE Usuarios SET Nombres='" + parUsuarios.Nombre_Usuario +
                    "',Apellidos='" + parUsuarios.Apellido_Usuario + "' ,NDocumento='" + parUsuarios.DNI + 
                    "' ,Direccion='" + parUsuarios.Direccion + "' ,Mail='" + parUsuarios.Mail + "', Telefono='" +
                    parUsuarios.Telefono + "', Telefono1='" + parUsuarios.Telefono1 + "', Tipo=" + parUsuarios.Tipo + " WHERE IdUsuario='" + parUsuarios.Id_Usuario + "';";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                Respuesta = "Y";
            }
            catch (SqlException ex)
            {
                Respuesta = "Error al intentar ejecutar el procedimiento EditarUsuario. " + ex.Message;
            }
            finally
            {
                if (SqlConexion.State == ConnectionState.Open)
                    SqlConexion.Close();
            }
            return Respuesta;
        }
        public String IngresoUsuario(string us, String pas)
        {
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT Tipo,Usuario FROM Usuarios WHERE Usuario='" + us + "' AND Password='" + pas + "';";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlDataReader reader = SqlComando.ExecuteReader();
                if (reader.HasRows)
                    return "Y";
                else
                    return "N";
            }
            catch (Exception ex)
            {
                throw new Exception("Error al intentar ejecutar el procedimiento ListaUsuarios. " + ex.Message, ex);
            }
            finally
            {
                SqlConexion.Close();
            }
        }
        public string CambiarPassword(DUsuarios parUsuarios)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "UPDATE Usuarios SET Usuario='" + parUsuarios.Usuario + "',Password='" + parUsuarios.Password + "' WHERE IdUsuario='" + parUsuarios.Id_Usuario + "';";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                Respuesta = "Y";
            }
            catch (SqlException ex)
            {
                Respuesta = "Error al intentar ejecutar el procedimiento EditarUsuario. " + ex.Message;
            }
            finally
            {
                if (SqlConexion.State == ConnectionState.Open)
                    SqlConexion.Close();
            }
            return Respuesta;
        }
        public DataTable Buscar(DUsuarios parUsuarios)
        {
            String Respuesta = "", sentencia;
            SqlConnection SqlConexion = new SqlConnection();
            DataTable TablaDatos = new DataTable();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                sentencia = "SELECT * FROM Usuarios WHERE Nombres='" + parUsuarios.Usuario_Buscado + "' OR Apellidos='" + parUsuarios.Usuario_Buscado + "';";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                SqlDataAdapter SqlAdaptadorDatos = new SqlDataAdapter(SqlComando);
                SqlAdaptadorDatos.Fill(TablaDatos);
            }
            catch (SqlException ex)
            {
                Respuesta = "Error al intentar ejecutar el procedimiento EditarUsuario. " + ex.Message;
            }
            finally
            {
                if (SqlConexion.State == ConnectionState.Open)
                    SqlConexion.Close();
            }
            return TablaDatos;
        }
        public string Verificar(DUsuarios parUsuarios)
        {
            String sentencia;
            SqlConnection SqlConexion = new SqlConnection();
            DataTable TablaDatos = new DataTable();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                sentencia = "SELECT Mail, Usuario FROM Usuarios WHERE (Mail = '" + parUsuarios.Mail + "') OR (Usuario= '" + parUsuarios.Usuario + "');";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlDataReader reader = SqlComando.ExecuteReader();
                if (reader.HasRows)
                    return "Y";
                else
                    return "N";
            }
            catch (SqlException ex)
            {
                return "Error al intentar ejecutar el procedimiento Buscar Cliente. " + ex.Message;
            }
            finally
            {
                if (SqlConexion.State == ConnectionState.Open)
                    SqlConexion.Close();
            }
        }

        public string ObtenerTipo(DUsuarios usuario)
        {
            String sentencia;
            SqlConnection SqlConexion = new SqlConnection();
            DataTable TablaDatos = new DataTable();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                sentencia = "SELECT Tipo FROM Usuarios WHERE (Password = '" + usuario.Password + "') AND (Usuario= '" + usuario.Usuario + "');";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlDataReader reader = SqlComando.ExecuteReader();
                if (reader.Read())
                    return reader[0].ToString();
                else
                    return "N";
            }
            catch (SqlException ex)
            {
                return "Error al intentar ejecutar el procedimiento Buscar Cliente. " + ex.Message;
            }
            finally
            {
                if (SqlConexion.State == ConnectionState.Open)
                    SqlConexion.Close();
            }
        }

        public string BuscarIdUsuario(DUsuarios usuario)
        {
            String sentencia;
            SqlConnection SqlConexion = new SqlConnection();
            DataTable TablaDatos = new DataTable();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                sentencia = "SELECT IdUsuario,Nombres FROM Usuarios WHERE Usuario='" + usuario.Usuario + "' AND Password='" + usuario.Password + "';";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlDataReader reader = SqlComando.ExecuteReader();
                if (reader.Read())
                    return reader[0].ToString();
                else
                    return "0";
            }
            catch (SqlException ex)
            {
                return "0";
            }
            finally
            {
                if (SqlConexion.State == ConnectionState.Open)
                    SqlConexion.Close();
            }
        }
    }
}