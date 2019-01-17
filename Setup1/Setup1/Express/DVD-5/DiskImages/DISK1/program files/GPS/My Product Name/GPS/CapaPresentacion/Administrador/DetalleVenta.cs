using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CapaPresentacion.Administrador
{
    public class DetalleVenta
    {
        private string nombreProducto;
        private int cod, cantidad;
        private decimal precioUnitario, totalPagar;
        public DetalleVenta()
        { }
        public DetalleVenta(int _cod, string _nombreProd, int _cant, decimal _preci, decimal _totalP)
        {
            cod = _cod;
            cantidad = _cant;
            nombreProducto = _nombreProd;
            precioUnitario = _preci;
            totalPagar = _totalP;
        }
        public int Codigo
        {
            get { return cod; }
            set { cod = value; }
        }
        public string NombreProducto
        {
            get { return nombreProducto; }
            set { nombreProducto = value; }
        }
        public int CantidadProducto
        {
            get { return cantidad; }
            set { cantidad = value; }
        }
        public decimal PrecioUnitario
        {
            get { return precioUnitario; }
            set { precioUnitario = value; }
        }
        public decimal TotalPrecioProducto
        {
            get { return totalPagar; }
            set { totalPagar = value; }
        }
    }
}
