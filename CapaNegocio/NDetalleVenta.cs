using CapaDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaNegocio
{
    public class NDetalleVenta
    {
        public static DataTable MostrarCompraDetalles(int parIdVenta)
        {
            return new DDetalleVenta().BuscarDetalle(parIdVenta);
        }

        public static String Insertar(int parIdVenta, int parIdProducto, int parCantidad)
        {
            DDetalleVenta ventaDetalles = new DDetalleVenta();
            ventaDetalles.Id_Venta = parIdVenta;
            ventaDetalles.Cantidad = parCantidad;
            ventaDetalles.Id_Producto = parIdProducto;
            return ventaDetalles.Insertar(ventaDetalles);
        }
    }
}
