using CapaDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaNegocio
{
    public class NCliente
    {
        public static DataTable ListaClientes()
        {
            return new DClientes().ListaClientes();
        }
        public static List<DClientes> ListarClientes()
        {
            return new DClientes().ListarClientes();
        }
        public static String Eliminar(int parId_Cliente)
        {
            DClientes cliente = new DClientes();
            cliente.Id_Cliente = parId_Cliente;
            return cliente.Eliminar(cliente);
        }
        public static string CambiarPassword(int parIdCliente,string parPassword)
        { 
            DClientes cliente=new DClientes();
            cliente.Id_Cliente = parIdCliente;
            cliente.Password = parPassword;
            return cliente.CambiarPassword(cliente);
        }
        public static String InsertarCliente(String parNombre_Usuario, String parApellido,bool parTipo, String parDNI, String parDireccion,String parMail, String parTelefono, String parTelefono1)
        {
            DClientes cliente = new DClientes();
            cliente.Nombre_Cliente = parNombre_Usuario;
            cliente.Apellido_Cliente = parApellido;
            cliente.Tipo_Documento = parTipo;
            cliente.NDocumento = parDNI;
            cliente.Direccion = parDireccion;
            cliente.Mail = parMail;
            cliente.Telefono = parTelefono;
            cliente.Telefono1 = parTelefono1;
            return cliente.Insertar(cliente);
        }
        public static String InsertarUsuario(String parNombre_Usuario, String parApellido, bool parTipo, String parDNI, String parDireccion,String parMail, String parTelefono, String parTelefono1, String parUsuario, String parPassword)
        {
            DClientes cliente = new DClientes();
            cliente.Nombre_Cliente = parNombre_Usuario;
            cliente.Apellido_Cliente = parApellido;
            cliente.Tipo_Documento = parTipo;
            cliente.NDocumento = parDNI;
            cliente.Direccion = parDireccion;
            cliente.Mail = parMail;
            cliente.Telefono = parTelefono;
            cliente.Telefono1 = parTelefono1;
            cliente.Usuario = parUsuario;
            cliente.Password = parPassword;
            return cliente.Insertar(cliente);
        }
        public static String Editar(int parIdCliente, String parNombre, String parApellido, String parDNI, String parDireccion, String parMail, String parTelefono, String parTelefono1, String parUsuario, String parPassword)
        {
            DClientes cliente = new DClientes();
            cliente.Id_Cliente = parIdCliente;
            cliente.Nombre_Cliente = parNombre;
            cliente.Apellido_Cliente = parApellido;
            cliente.NDocumento = parDNI;
            cliente.Direccion = parDireccion;
            cliente.Mail = parMail;
            cliente.Telefono = parTelefono;
            cliente.Telefono1 = parTelefono1;
            cliente.Usuario = parUsuario;
            cliente.Password = parPassword;
            return cliente.Editar(cliente);
        }
        public static string VerificaCliente(String parUsuario, String parPassword)
        {
            DClientes cliente = new DClientes();
            cliente.Password = parPassword;
            cliente.Usuario = parUsuario;
            return cliente.IngresoCliente(cliente);
        }
        public static DataTable Buscar(string p)
        {
            DClientes cliente = new DClientes();
            cliente.Cliente_Buscado = p;
            return cliente.BuscarByNombreApellido(cliente);
        }
        public static string Verificar(string Correo, string Usuario)
        {
            DClientes cliente = new DClientes();
            cliente.Usuario = Usuario;
            cliente.Mail = Correo;
            return cliente.Verificar(cliente);
        }

        public static string BuscarIdCliente(string user, string pass)
        {
            DClientes cliente = new DClientes();
            cliente.Usuario = user;
            cliente.Password = pass;
            return cliente.ObtenerIdClienteByUsuarioPassword(cliente);
        }
    }
}
