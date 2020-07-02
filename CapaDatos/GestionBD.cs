using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient; //Controlador para pegarme a BD Microsoft SQL
using CapaDatos.Entidades;
using System.Configuration;

namespace CapaDatos
{
    public class GestionBD
    {

        SqlConnection conexion;
        SqlCommand comando;
        string cadenaConexion = ConfigurationManager.ConnectionStrings["conexionPruebas"].ConnectionString;

        public bool registrarHerramienta(Tool objHerramienta)
        {
            int control = -1;
            bool respuesta = false;

            using (SqlConnection cnx = new SqlConnection(cadenaConexion))
            {
                comando = new SqlCommand();
                comando.Connection = cnx;
                comando.CommandType = System.Data.CommandType.Text;
                comando.CommandText = "Insert into Insumo.Herramienta (ID_HERRAMIENTA,NOMBRE,TIPO,FECHA_INGRESO) " +
                                      " Values (@ID_HERRAMIENTA,@NOMBRE,@TIPO,@FECHA_INGRESO)";

                
                SqlParameter objParametro = new SqlParameter();
                objParametro.ParameterName = "@ID_HERRAMIENTA";
                objParametro.SqlDbType = System.Data.SqlDbType.VarChar;
                objParametro.Size = 30;
                objParametro.Value = objHerramienta.ID_HERRAMIENTA;

                comando.Parameters.Add(objParametro);

                
                comando.Parameters.Add(new SqlParameter("@NOMBRE", objHerramienta.NOMBRE));

                comando.Parameters.Add(new SqlParameter("@TIPO", objHerramienta.TIPO));

                comando.Parameters.Add(new SqlParameter("@FECHA_INGRESO", objHerramienta.FECHA_INGRESO));

                cnx.Open();

                control = comando.ExecuteNonQuery();  //ejecucion del comando en base de datos

            }

            if (control > 0)
            {
                respuesta = true;
            }

            return respuesta;


        }

        public List<Tipos> listadoHerramienta()
        {
            SqlDataReader datosLeidos;
            List<Tipos> listadoRetornar;

            //Paso#1 Crear la conexion
            conexion = new SqlConnection(); //Creamos el objeto en memoria     
            //conexion.ConnectionString = "Data Source=DESKTOP-3SB06G1;Initial Catalog=UIA;Integrated Security=True";  //String de Conexion
            conexion.ConnectionString = cadenaConexion;



            //Paso#2 Configurar el comando
            comando = new SqlCommand();
            comando.Connection = conexion;  //Propiedas mas importantes, que conexion usa el comando??
            comando.CommandText = "Select * from Insumos.Herramienta";
            comando.CommandType = System.Data.CommandType.Text;
            comando.CommandTimeout = 0;  //expresado en segundos

            //Paso#3 Ejecutar el comando
            conexion.Open();
            datosLeidos = comando.ExecuteReader(); //Es la que ejecuta la accion en base de datos


            //Paso#4 Configurar la estructura a retornar
            listadoRetornar = new List<Tipos>();
            while (datosLeidos.Read())
            {

                Tipos objTipo = new Tipos(); //Creamo el objeto 
                objTipo.codTool = datosLeidos.GetInt32(0);
                objTipo.desTool = datosLeidos.GetString(1);
                listadoRetornar.Add(objTipo);

            }

            return listadoRetornar;


        }

    }
}
