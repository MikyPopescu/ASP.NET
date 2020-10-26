using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectBDI
{
    public partial class WebFormAutobuze : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //calatori
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WebFormCurseTransportComun.aspx");
        }

        //curse
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WebFormCalatori.aspx"); 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection conexiune = new OleDbConnection(@"Provider = Microsoft.ACE.OLEDB.12.0; Data Source = D:\Projects\asp\ProjectBDI\dbProject.accdb");
            OleDbCommand comanda = new OleDbCommand();
            comanda.Connection = conexiune;

            try
            {
                conexiune.Open();
                comanda.CommandText = "CREATE PROCEDURE getAutobuzeDupaCombustibil AS SELECT * FROM autobuze WHERE combustibil=@combustibil";
                comanda.ExecuteNonQuery();
                TextBox2.Text="Procedura creata cu succes!";
            }
            catch (Exception ex)
            {
                TextBox2.Text=ex.Message;
            }
            finally
            {
                conexiune.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox2.Text="";
            OleDbConnection conexiune = new OleDbConnection(@"Provider = Microsoft.ACE.OLEDB.12.0; Data Source = D:\Projects\asp\ProjectBDI\dbProject.accdb");
            OleDbCommand comanda = new OleDbCommand();
            comanda.Connection = conexiune;

            try
            {
                conexiune.Open();
                comanda.CommandText = "getAutobuzeDupaCombustibil";
                comanda.CommandType = CommandType.StoredProcedure;
                comanda.Parameters.Add("@combustibil", OleDbType.Char,10).Value = TextBox1.Text;

                OleDbDataReader reader = comanda.ExecuteReader();
                while (reader.Read())
                {
                    TextBox2.Text += "Autobuzul " + reader["numar_inmatriculare"] + "  are combustibil  " + reader["combustibil"] +" este marca " + reader["marca"] + Environment.NewLine;
                }
            }
            catch (Exception ex)
            {
                TextBox2.Text=ex.Message;
            }
            finally
            {
                conexiune.Close();
            }
        }
    }
    
}