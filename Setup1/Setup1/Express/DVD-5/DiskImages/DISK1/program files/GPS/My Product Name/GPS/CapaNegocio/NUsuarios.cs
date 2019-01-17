using CapaDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaNegocio
{
    public class NUsuarios
    {
        public static DataTable ListaUsuarios()
        {
            return new DUsuarios().ListaEmpleados();
        }
        public static DataTable ListaAdministradores()
        {
            return new DUsuarios().ListaAdministradores();
        }
        public static String Insertar(String parNombre_Usuario, String parApellido, String parDNI, String parDireccion, String parMail, String parTelefono, String parTelefono1, String parUsuario, String parPassword, int parTipo)
        {
            DUsuarios usuarios = new DUsuarios();
            usuarios.Nombre_Usuario = parNombre_Usuario;
            usuarios.Apellido_Usuario = parApellido;
            usuarios.DNI = parDNI;
            usuarios.Direccion = parDireccion;
            usuarios.Mail = parMail;
            usuarios.Telefono = parTelefono;
            usuarios.Telefono1 = parTelefono1;
            usuarios.Usuario = parUsuario;
            usuarios.Password = parPassword;
            usuarios.Tipo = parTipo;
            return usuarios.Insertar(usuarios);
        }
        public static String Editar(String parNombre_Usuario, String parApellido, String parDNI, String parDireccion, String parMail, String parTelefono1, String parTelefono2, String parUsuario, String parPassword, int parTipo)
        {
            DUsuarios usuarios = new DUsuarios();
            usuarios.Nombre_Usuario = parNombre_Usuario;
            usuarios.Apellido_Usuario = parApellido;
            usuarios.DNI = parDNI;
            usuarios.Direccion = parDireccion;
            usuarios.Mail = parMail;
            usuarios.Telefono = parTelefono1;
            usuarios.Telefono1 = parTelefono2;
            usuarios.Usuario = parUsuario;
            usuarios.Password = parPassword;
            usuarios.Tipo = parTipo;
            return usuarios.Editar(usuarios);
        }
        public static String IngresoUsuario(string us, String pas)
        {
            return new DUsuarios().IngresoUsuario(us, pas);
        }
        public string CambiarPassword(int parIdUsuario,string parPassword)
        {
            DUsuarios usuario = new DUsuarios();
            usuario.Id_Usuario = parIdUsuario;
            usuario.Password = parPassword;
            return usuario.CambiarPassword(usuario);
        }
        public static DataTable Buscar(string parUsuarioBuscado)
        {
            DUsuarios usuarios = new DUsuarios();
            usuarios.Usuario_Buscado = parUsuarioBuscado;
            return usuarios.Buscar(usuarios);
        }
        public static string Verificar(string Usuario, string Correo)
        {
            DUsuarios usuario = new DUsuarios();
            usuario.Mail = Correo;
            usuario.Usuario = Usuario;
            return usuario.Verificar(usuario);
        }

        public static string ObtenerTipo(string parUser, string parPassword)
        {
            DUsuarios usuario = new DUsuarios();
            usuario.Password = parPassword;
            usuario.Usuario = parUser;
            return usuario.ObtenerTipo(usuario);
        }

        public static string BuscarIdUsuario(string parUser, string parPassword)
        {
            DUsuarios usuario = new DUsuarios();
            usuario.Password = parPassword;
            usuario.Usuario = parUser;
            return usuario.BuscarIdUsuario(usuario);
        }

        public static string CambiarContraseña(int id, string p)
        {
            DUsuarios usuario = new DUsuarios();
            usuario.Id_Usuario = id;
            usuario.Password = p;
            return usuario.CambiarPassword(usuario);
        }

        public static string Eliminar(int p)
        {
            DUsuarios usuario= new DUsuarios();
            usuario.Id_Usuario = p;
            return usuario.Eliminar(usuario);
        }
    }
}
