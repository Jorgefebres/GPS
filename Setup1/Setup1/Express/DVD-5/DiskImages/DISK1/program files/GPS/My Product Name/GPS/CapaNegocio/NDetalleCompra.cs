using CapaDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaNegocio
{
    public class NDetalleCompra
    {
        public static DataTable MostrarCompraDetalles(int parIdCompra)
        {
            return new DDetalleCompra().BuscarDetalle(parIdCompra);
        }

        public static String Insertar(int parIdCompra, int parIdProducto,int parCantidad)
        {
            DDetalleCompra compraDetalles = new DDetalleCompra();
            compraDetalles.Id_Compra = parIdCompra;
            compraDetalles.Cantidad = parCantidad;
            compraDetalles.Id_Produtco = parIdProducto;
            return compraDetalles.Insertar(compraDetalles);
        }
    }
}
