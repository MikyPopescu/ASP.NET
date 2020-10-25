using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            SqlParameter sqlParameter1 = new SqlParameter("@Id", System.Data.SqlDbType.Int);
            sqlParameter1.Value = int.Parse(tbId.Text);
            SqlParameter sqlParameter2 = new SqlParameter("@Nume", System.Data.SqlDbType.NVarChar);
            sqlParameter2.Value = tbNume.Text;
            SqlParameter sqlParameter3 = new SqlParameter("@Sold", System.Data.SqlDbType.Float);
            sqlParameter3.Value = double.Parse(tbId.Text);

            string commandInsert = "INSERT INTO [Clienti] ([idClient], [nume], [sold]) VALUES (@Id, @Nume, @Sold)";
           
            SqlConnection sqlConnection = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; Initial Catalog = dbBank; Integrated Security = True");

            SqlCommand sqlCommand = new SqlCommand(commandInsert,sqlConnection);

            sqlCommand.Parameters.Add(sqlParameter1);
            sqlCommand.Parameters.Add(sqlParameter2);
            sqlCommand.Parameters.Add(sqlParameter3);
            
            int result = 0;
            try
            {
                sqlConnection.Open();
                result = sqlCommand.ExecuteNonQuery();
                tbError.Text += "\r\nInsert OK";
            }
            catch(Exception ex)
            {
                tbError.Text += "\r\nInsert FAILED " + ex.Message;
            }

            GridView1.DataBind();
        }

        protected void selectGraph_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataSourceSelectArguments dataSourceSelectArguments = new DataSourceSelectArguments();
            DataView dataView = (DataView)SqlDataSource1.Select(dataSourceSelectArguments);
            DataTable dataTable = dataView.ToTable();
            DataSet dataSet = new DataSet();
            dataSet.Tables.Add(dataTable);
            Cache["BnkCache"] = dataSet;
            Response.Redirect("WebForm2.aspx?tip=" + selectGraph.SelectedItem.Text);
        }

        protected void btnProcedura_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm3.aspx");
        }
    }
}