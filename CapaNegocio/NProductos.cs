using System;
using System.Collections.Generic;
using System.Data;
using CapaDatos;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaNegocio
{
    public class NProductos
    {
        public static DataTable ListaProductos()
        {
            return new DProductos().ListaProductos();
        }
        public DataTable ListaProductosByEstado(bool parEstado)
        {
            return new DProductos().ListaProductosByEstado(parEstado);
        }
        public static decimal PrecioProducto(int parIdProducto)
        {
            return new DProductos().PrecioProducto(parIdProducto);
        }
        public static DataTable Buscar(String parNombre_Buscado)
        {
            DProductos productos = new DProductos();
            productos.Nombre_Buscado = parNombre_Buscado;
            return productos.BuscarByNombre(productos);
        }
        public static String Eliminar(int parId_Producto)
        {
            DProductos productos = new DProductos();
            productos.Id_Producto = parId_Producto;
            return productos.Eliminar(productos);
        }
        public static String Insertar(int parIdProveedor,String parNombre_Producto, String parMarca, String parDescripcion,
            decimal parPrecio_Unitario, int parStock,string parFechaIngreso,bool parEstado)
        {
            DProductos productos = new DProductos();
            productos.Id_Proveedor = parIdProveedor;
            productos.Nombre_Producto = parNombre_Producto;
            productos.Nombre_Marca = parMarca;
            productos.Precio_Unitario = parPrecio_Unitario;
            productos.Descripcion_Producto = parDescripcion;
            productos.Stock = parStock;
            productos.FechaIngreso = parFechaIngreso;
            productos.Estado = parEstado;
            return productos.Insertar(productos);
        }

        public static String Editar(int parIdProducto,String parNombre_Producto, String parDescripcion,decimal parPrecio,bool parEstado)
        {
            DProductos productos = new DProductos();
            productos.Id_Producto = parIdProducto;
            productos.Nombre_Producto = parNombre_Producto;
            productos.Descripcion_Producto = parDescripcion;
            productos.Precio_Unitario = parPrecio;
            productos.Estado = parEstado;
            return productos.EditarProducto(productos);
        }
        public static String AgregarProductos(int parIdProducto, int parCantidad)
        {
            DProductos producto = new DProductos();
            producto.Id_Producto = parIdProducto;
            producto.Stock=producto.CantidadProducto(parIdProducto);
            producto.Cantidad = parCantidad;
            return producto.AgregarProductos(producto);
        }

        public static DataTable BuscarByCodigo(int parIdProducto)
        {
            return new DProductos().BuscarByCodigo(parIdProducto);
        }

        public static string BuscarProductoByNP(string parNombre, string parPrecio)
        {
            return new DProductos().BuscarProductoByNP(parNombre, parPrecio);
        }
    }
}
