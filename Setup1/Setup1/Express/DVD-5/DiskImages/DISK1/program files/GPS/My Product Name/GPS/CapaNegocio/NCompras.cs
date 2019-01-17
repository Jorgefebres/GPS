using CapaDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaNegocio
{
    public class NCompras
    {
        public static DataTable ListaCompras()
        {
            return new DCompras().MostrarComprasRealizadas();
        }
        public static DataTable BuscarDetalleCompra(int parIdCompra)
        {
            DDetalleCompra detalleCompra = new DDetalleCompra();
            detalleCompra.Id_Compra = parIdCompra;
            return detalleCompra.BuscarDetalle(parIdCompra);
        }
        public static int BuscarIdCompra(int parIdempleado, string parFecha, decimal parTotal)
        {
            DCompras compras = new DCompras();
            compras.Id_Empleado = parIdempleado;
            compras.Fecha_Compra = parFecha;
            compras.Total_Compra = parTotal;
            return compras.BuscarIdCompra(compras);
        }
        public static String Insertar(int parIdempleado, string parFecha, decimal parTotal)
        {
            DCompras compras = new DCompras();
            compras.Id_Empleado= parIdempleado;
            compras.Fecha_Compra = parFecha;
            compras.Total_Compra= parTotal;
            return compras.Insertar(compras);
        }
    }
}
