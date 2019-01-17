using CapaDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaNegocio
{
    public class NVentas
    {
        public static DataTable ListaVentas()
        {
            return new DVentas().ListaVentas();
        }
        public static DataTable ListaVentasByEmpleado(int parIdempleado)
        {
            DVentas venta = new DVentas();
            venta.Id_Empleado = parIdempleado;
            return venta.ListaVentasByEmpleado(venta);
        }
        public static DataTable ListaVentasByFecha(string parFecha)
        {
            DVentas venta = new DVentas();
            venta.Fecha_Venta = parFecha;
            return venta.ListaVentasByFecha(venta);
        }
        public static DataTable ListaVentasbyCliente(int parIdCliente)
        {
            DVentas venta = new DVentas();
            venta.Id_Cliente = parIdCliente;
            return venta.ListaVentaByCliente(venta);
        }
        public static DataTable ListaVentasEntreFechas(string parFechaInicial,string parFechaFinal)
        {
            return new DVentas().ListaVentasEntreFecha(parFechaInicial,parFechaFinal);
        }
        public static DataTable BuscarDetalleVenta(int parIdVenta)
        {
            DDetalleVenta detalleVenta = new DDetalleVenta();
            detalleVenta.Id_Venta = parIdVenta;
            return detalleVenta.BuscarDetalle(parIdVenta);
        }
        public static String Insertar(int parIdCliente,int parIdEmpleado,bool parTipoVenta, string parFecha, decimal parTotal)
        {
            DVentas ventas = new DVentas();
            ventas.Id_Empleado = parIdEmpleado;
            ventas.Id_Cliente = parIdCliente;
            ventas.Fecha_Venta = parFecha;
            ventas.Total_venta = parTotal;
            ventas.Tipo_Venta = parTipoVenta;
            return ventas.Insertar(ventas);
        }

        public static string BuscarIdVenta(int _idCliente, int _IdEmpleado, bool p, string _fecha, decimal _total)
        {
            DVentas venta = new DVentas();
            venta.Id_Cliente = _idCliente;
            venta.Id_Empleado = _IdEmpleado;
            venta.Tipo_Venta = p;
            venta.Fecha_Venta = _fecha;
            venta.Total_venta = _total;
            return venta.BuscarIdVenta(venta);
        }
    }
}
