using CapaDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaNegocio
{
    public class NVentaServicio
    {
        public static DataTable MostrarVentasServicioRealizadas()
        {
            return new DVentaServicio().MostrarVentasServicioRealizadas();
        }
        public static string Insertar(int parIdEmpleado, int parIdServicio, string parfecha)
        {
            DVentaServicio ventaServicio=new DVentaServicio();
            ventaServicio.Id_Empleado=parIdEmpleado;
            ventaServicio.Id_Servicio=parIdServicio;
            ventaServicio.Fecha_Venta=parfecha;
            return ventaServicio.Insertar(ventaServicio);;
        }
        public static DataTable MostrarVentasServicioRealizadasByCliente(int parIdcliente)
        {
            return new DVentaServicio().MostrarVentasServicioRealizadasByCliente(parIdcliente);
        }
        public static DataTable MostrarVentasServicioRealizadasByEmpleado(int parIdEmpleado)
        {
            return new DVentaServicio().MostrarVentasServicioRealizadasByEmpleado(parIdEmpleado);
        }
        public static int BuscarIdCompra(string parFecha, int parIdEmpleado, decimal parTotal)
        {
            return new DVentaServicio().BuscarIdCompra(parFecha,parIdEmpleado,parTotal);
        }
    }
}
