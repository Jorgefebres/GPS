using CapaDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaNegocio
{
    public class NPagos
    {
        public static DataTable ListaPagos(int IdVentaServicio)
        {
            return new DPagos().ListaPagosVentaServicio(IdVentaServicio);
        }
        public static String Insertar(int parIdVentaServicio, string parFecha, decimal parMonto,int parIdEmpleado)
        {
            DPagos Pagos = new DPagos();
            Pagos.Id_VentaServicio = parIdVentaServicio;
            Pagos.Id_Empleado = parIdEmpleado;
            Pagos.Fecha_Pago = parFecha;
            Pagos.Monto = parMonto;
            return Pagos.Insertar(Pagos);
        }
    }
}
