using CapaDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaNegocio
{
    public class NServicios
    {
        public static DataTable ListaServicios()
        {
            return new DServicios().ListaServicios();
        }
        public static DataTable ListaServiciosByEstado(bool parEstado)
        {
            return new DServicios().ListaServiciosByEstado(parEstado);
        }
        public static decimal PrecioServicio(int parIdServicio)
        {
            return new DServicios().PrecioServicio(parIdServicio);
        }
        public static DataTable BuscarServicio(String parNombre_Buscado)
        {
            DServicios servicios = new DServicios();
            servicios.Nombre_Busqueda = parNombre_Buscado;
            return servicios.Buscar(servicios);
        }
        public static String Eliminar(int parId_Servicios)
        {
            DServicios servicios = new DServicios();
            servicios.Id_Servicio = parId_Servicios;
            return servicios.Eliminar(servicios);
        }
        public static String Insertar(string parNombre, String parDescripcion_Servicio, bool parEstado, decimal parPrecio_Unitario)
        {
            DServicios servicios = new DServicios();
            servicios.Nombre_Servicio = parNombre;
            servicios.Descripcion_Servicio = parDescripcion_Servicio;
            servicios.Estado_Servicio = parEstado;
            servicios.Precio_Servicio = parPrecio_Unitario;
            return servicios.Insertar(servicios);
        }

        public static String Editar(string parNombre, String parDescripcion_Servicio, bool parEstado, decimal parPrecio_Unitario)
        {
            DServicios servicios = new DServicios();
            servicios.Nombre_Servicio = parNombre;
            servicios.Descripcion_Servicio = parDescripcion_Servicio;
            servicios.Estado_Servicio = parEstado;
            servicios.Precio_Servicio = parPrecio_Unitario;
            return servicios.EditarDatos(servicios);
        }
        public static String EditarPrecio(int parIdServicio, decimal parPrecio)
        {
            DServicios servicios = new DServicios();
            servicios.Id_Servicio = parIdServicio;
            servicios.Precio_Servicio = parPrecio;
            return servicios.EditarPrecio(servicios);
        }
    }
}
