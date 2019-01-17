using CapaDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaNegocio
{
    public class NProveedores
    {
        public static DataTable ListaProveedores()
        {
            return new DProveedores().ListaProveedores();
        }

        public static DataTable Buscar(String parNombre)
        {
            DProveedores proveedores = new DProveedores();
            proveedores.Nombres_Proveedor= parNombre;
            return proveedores.BuscarProveedorByNombre(proveedores);
        }
        public static String Eliminar(int parId_Proveedor)
        {
            DProveedores proveedor = new DProveedores();
            proveedor.Id_Proveedor = parId_Proveedor;
            return proveedor.Eliminar(proveedor);
        }

        public static String Insertar(String parNombre_Proveedor, String parDireccion, String parCiudad, String parTelefono,string parTelefono1,String parMail, String parRUC)
        {
            DProveedores proveedores = new DProveedores();
            proveedores.Nombres_Proveedor = parNombre_Proveedor;
            proveedores.Direccion_Proveedor = parDireccion;
            proveedores.Ciudad = parCiudad;
            proveedores.RUC = parRUC;
            proveedores.Telefono = parTelefono;
            proveedores.Telefono1 = parTelefono1;
            proveedores.Mail = parMail;
            return proveedores.Insertar(proveedores);
        }
        public static String Editar(String parNombre_Proveedor, String parDireccion, String parCiudad, String parTelefono, string parTelefono1, String parMail, String parRUC)
        {
            DProveedores proveedores = new DProveedores();
            proveedores.Nombres_Proveedor = parNombre_Proveedor;
            proveedores.Direccion_Proveedor = parDireccion;
            proveedores.Ciudad = parCiudad;
            proveedores.RUC = parRUC;
            proveedores.Telefono = parTelefono;
            proveedores.Telefono1 = parTelefono1;
            proveedores.Mail = parMail;
            return proveedores.EditarProveedor(proveedores);
        }
    }
}
