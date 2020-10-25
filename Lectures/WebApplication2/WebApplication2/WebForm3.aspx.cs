using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreare_Click(object sender, EventArgs e)
        {
            string dropCmd = "DROP PROCEDURE SolduriIntreMinMax";
            SqlConnection sqlConnection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog=dbBank;Integrated Security=True");
            SqlCommand sqlCommand = new SqlCommand(dropCmd,sqlConnection);

            try
            {
                sqlConnection.Open();
                sqlCommand.ExecuteNonQuery();
                tbMesaj.Text += "\r\n Conexiune reusita";
            }
            catch(Exception ex)
            {
                tbMesaj.Text += "\r\n Conexiune nereusita :( "+ ex.Message;
            }
            string createCmd = "CREATE PROCEDURE SolduriIntreMinMax" +
                                "( @minSold Float, @maxSold Float, @nrClienti Int Output) AS " +
                                "SELECT * FROM Clienti WHERE sold >= @minSold AND sold <= @maxSold;" +
                                "SELECT @nrClienti = COUNT (*) FROM Clienti WHERE sold >= @minSold AND sold <= @maxSold;" +
                                "RETURN 0";

            sqlCommand = new SqlCommand(createCmd, sqlConnection);
          //  sqlConnection.Close();

            try
            {
               // sqlConnection.Open();
                sqlCommand.ExecuteNonQuery();
                tbMesaj.Text += "\r\n CREATE SUCCESS";
            }
            catch (Exception ex)
            {
                tbMesaj.Text += "\r\n CREATE FAILED :( " + ex.Message;
            }
            finally
            {
                sqlConnection.Close();
            }
        }

        protected void btnApel_Click(object sender, EventArgs e)
        {

        }
    }
}