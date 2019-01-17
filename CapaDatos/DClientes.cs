using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class DClientes
    {
        public int Id_Cliente { get; set; }
        public String Nombre_Cliente { get; set; }
        public String Apellido_Cliente { get; set; }
        public String NDocumento { get; set; }
        public String Direccion { get; set; }
        public String Mail { get; set; }
        public String Telefono { get; set; }
        public String Telefono1 { get; set; }
        public string Usuario { get; set; }
        public String Password { get; set; }
        public bool Tipo_Documento { get; set; }
        public String Cliente_Buscado { get; set; } 

        public DClientes()
        {
        }
        public DClientes(int parId_Cliente, String parNombre_Cliente, string parApellido_Cliente, bool parTipoDocuemnto, string parNDocumento, string parDireccion, string parMail, string parTelefono, string parTelefono1, string parUsuario, String parPassword)
        {
            this.Id_Cliente = parId_Cliente;
            this.Nombre_Cliente = parNombre_Cliente;
            this.Apellido_Cliente = parApellido_Cliente;
            this.Tipo_Documento = parTipoDocuemnto;
            this.NDocumento = parNDocumento;
            this.Direccion = parDireccion;
            this.Mail = parMail;
            this.Telefono = parTelefono;
            this.Telefono1 = parTelefono1;
            this.Usuario = parUsuario;
            this.Password = parPassword;
        }
        public List<DClientes> ListarClientes()
        {
            SqlConnection SqlConexion = new SqlConnection();
            List<DClientes> lista = new List<DClientes>();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT Idcliente,Nombres,Apellidos,TipoDocumento,NDocumento,Direccion,Telefono,Telefono1,Mail,Usuario,Passwrod FROM Clientes;";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlDataReader reader = SqlComando.ExecuteReader();
                
                DClientes dl = new DClientes();
                while (reader.Read())
                {
                    dl.Id_Cliente = (Int16)reader.GetValue(0);
                    dl.Nombre_Cliente = reader.GetValue(1).ToString();
                    dl.Apellido_Cliente= reader.GetValue(2).ToString();
                    dl.Tipo_Documento = (bool)reader.GetValue(3);
                    dl.NDocumento = reader.GetValue(4).ToString();
                    dl.Direccion = reader.GetValue(5).ToString();
                    dl.Telefono = reader.GetValue(6).ToString();
                    dl.Telefono1 = reader.GetValue(7).ToString();
                    dl.Mail = reader.GetValue(8).ToString();
                    dl.Usuario = reader.GetValue(9).ToString();
                    dl.Password = reader.GetValue(10).ToString();
                    lista.Add(dl);
                }
            }
            catch (Exception ex)
            {
                lista = null;
                throw new Exception("Error al intentar ejecutar el procedimiento Lista Clientes. " + ex.Message, ex);
            }
            finally
            {
                if (SqlConexion.State == ConnectionState.Open)
                    SqlConexion.Close();
            }
            return lista;
        }
        public DataTable ListaClientes()
        {
            //String  sql="SELECT Nombre,Tipo FROM Usuarios";
            SqlConnection SqlConexion = new SqlConnection();
            //SqlCommand cmd = new SqlCommand(sql,SqlConexion);
            DataTable TablaDatos = new DataTable();            
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "SELECT Idcliente,Nombres,Apellidos,TipoDocumento,NDocumento,Direccion,Telefono,Telefono1,Mail,Usuario,Passwrod FROM Clientes;";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                SqlDataAdapter SqlAdaptadorDatos = new SqlDataAdapter(SqlComando);
                SqlAdaptadorDatos.Fill(TablaDatos);
            }
            catch (Exception ex)
            {
                TablaDatos = null;
                throw new Exception("Error al intentar ejecutar el procedimiento Lista Clientes. " + ex.Message, ex);
            }
            finally
            {
                if (SqlConexion.State == ConnectionState.Open) 
                    SqlConexion.Close();
            }
            return TablaDatos;
        }
        public string Insertar(DClientes parCliente)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                int tipo;
                if (parCliente.Tipo_Documento)
                    tipo = 1;
                else
                    tipo = 0;
                String sentencia = "INSERT INTO Clientes(Nombres,Apellidos,NDocumento,Direccion,Mail,Telefono,Telefono1,Usuario,Password,TipoDocumento) VALUES('" + 
                    parCliente.Nombre_Cliente + "','" + parCliente.Apellido_Cliente + "','" + parCliente.NDocumento + "','" + 
                    parCliente.Direccion + "','" + parCliente.Mail + "','" + parCliente.Telefono + "','" + parCliente.Telefono1 + 
                    "','" + parCliente.Usuario + "','" + parCliente.Password + "'," + tipo + ");";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                Respuesta = "Y";
            }
            catch (SqlException ex)
            {
                Respuesta = "Error al intentar ejecutar el procedimiento almacenado Ventas.Insertar Cliente. " + ex.Message;
            }
            finally
            {
                if (SqlConexion.State == ConnectionState.Open)
                    SqlConexion.Close();
            }
            return Respuesta;
        }
        public string Eliminar(DClientes parCliente)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "DELETE FROM Clientes WHERE (IdCliente=" + parCliente.Id_Cliente + ");";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                Respuesta = "Y";
            }

            catch (SqlException ex)
            {
                Respuesta = "Error al intentar ejecutar el procedimiento Eliminar Cliente. " + ex.Message;
            }
            finally
            {
                if (SqlConexion.State == ConnectionState.Open)
                    SqlConexion.Close();
            }
            return Respuesta;
        }
        public string Editar(DClientes parCliente)
        {
            string Respuesta = "";
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "UPDATE Clientes SET Nombres='" + parCliente.Nombre_Cliente + "',Apellidos='" + 
                    parCliente.Apellido_Cliente + "' ,NDocumento='" + parCliente.NDocumento + "' ,Direccion='" + parCliente.Direccion + 
                    "' ,Mail='" + parCliente.Mail + "', Telefono='" + parCliente.Telefono + "', Telefono1='" + parCliente.Telefono1 + 
                    "',Usuario='" + parCliente.Usuario + "',Password='" + parCliente.Password + "', Tipo='" + parCliente.Tipo_Documento + "'  WHERE IdCliente='" + parCliente.Id_Cliente + "';";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                Respuesta = "Y";
            }
            catch (SqlException ex)
            {
                Respuesta = "Error al intentar ejecutar el procedimiento Editar Cliente. " + ex.Message;
            }

            finally
            {
                if (SqlConexion.State == ConnectionState.Open)
                    SqlConexion.Close();
            }
            return Respuesta;
        }
        public string CambiarPassword(DClientes parCliente)
        {
            string Respuesta = ""; 
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia = "UPDATE Password='" + parCliente.Password + "' WHERE IdCliente='" + parCliente.Id_Cliente + "';";
                SqlCommand SqlComando = new SqlCommand(sentencia, SqlConexion);
                SqlComando.ExecuteNonQuery();
                Respuesta = "Y";
            }
            catch (SqlException ex)
            {
                Respuesta = "Error al intentar ejecutar el procedimiento Cambiar contraseña. " + ex.Message;
            }

            finally
            {
                if (SqlConexion.State == ConnectionState.Open)
                    SqlConexion.Close();
            }
            return Respuesta;
        }                
        public string ObtenerIdClienteByUsuarioPassword(DClientes parCliente)
        {
            String sentencia;
            SqlConnection SqlConexion = new SqlConnection();
            DataTable TablaDatos = new DataTable();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                sentencia = "SELECT IdCliente FROM Clientes WHERE Usuario='"+parCliente.Usuario+"' AND Password='"+parCliente.Password+"';";
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
        public string IngresoCliente(DClientes parCliente)
        {
            SqlConnection SqlConexion = new SqlConnection();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                String sentencia="SELECT Usuario FROM Clientes WHERE Usuario='"+parCliente.Usuario+"' And Password='"+parCliente.Password+"';";
                SqlCommand SqlComando = new SqlCommand(sentencia,SqlConexion);
                SqlDataReader reader = SqlComando.ExecuteReader();                                
                if (reader.Read())
                    return reader[0].ToString();
                else
                    return "N";
            }
            catch (SqlException ex)
            {
                return "N";
            }
            finally
            {
                if (SqlConexion.State == ConnectionState.Open)
                    SqlConexion.Close();
            }
        }
        public DataTable BuscarByNombreApellido(DClientes parCliente)
        {
            String Respuesta = "", sentencia;
            SqlConnection SqlConexion = new SqlConnection();
            DataTable TablaDatos = new DataTable();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                sentencia = "SELECT * FROM Clientes WHERE Nombres='" + parCliente.Cliente_Buscado + "' OR Apellidos='"+parCliente.Cliente_Buscado+"';";
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
        public string Verificar(DClientes parCliente)
        {
            String sentencia;
            SqlConnection SqlConexion = new SqlConnection();
            DataTable TablaDatos = new DataTable();
            try
            {
                SqlConexion.ConnectionString = DConexion.CnBDEmpresa;
                SqlConexion.Open();
                sentencia = "SELECT Mail, Usuario FROM Clientes WHERE (Mail = '" + parCliente.Mail + "') OR (Usuario= '" + parCliente.Usuario + "');";
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
    }
}