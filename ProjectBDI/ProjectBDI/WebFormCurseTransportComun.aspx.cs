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
    public partial class WebFormCurseTransportComun : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //click event -> bus web page
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WebFormAutobuze.aspx");
        }

        //travelers
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WebFormCalatori.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            DataSourceSelectArguments args = new DataSourceSelectArguments();
            DataView dataView1 = (DataView)SqlDataSource1.Select(args);
            DataTable dataTabl1 = dataView1.ToTable();
            DataSet ds = new DataSet();
            ds.Tables.Add(dataTabl1);
            Cache["CurseCache"] = ds;
            Response.Redirect("~/WebFormGraficBare.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            DataSourceSelectArguments args = new DataSourceSelectArguments();
            DataView dataView1 = (DataView)SqlDataSource1.Select(args);
            DataTable dataTabl1 = dataView1.ToTable();
            DataSet ds = new DataSet();
            ds.Tables.Add(dataTabl1);
            Cache["CurseCache"] = ds;
            Response.Redirect("~/WebFormGraficPlacinta.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            OleDbConnection conexiune = new OleDbConnection(@"Provider = Microsoft.ACE.OLEDB.12.0; Data Source = D:\Projects\asp\ProjectBDI\dbProject.accdb");
            OleDbCommand comanda = new OleDbCommand();
            comanda.Connection = conexiune;

            try
            {
                conexiune.Open();
                comanda.CommandText = "CREATE PROCEDURE getCurseDupaNrStatii AS SELECT * FROM curse WHERE nr_statii=@nr_statii";
                comanda.ExecuteNonQuery();
                TextBox2.Text = "Procedura creata cu succes!";
            }
            catch (Exception ex)
            {
                TextBox2.Text = ex.Message;
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
                comanda.CommandText = "getCurseDupaNrStatii";
                comanda.CommandType = CommandType.StoredProcedure;
                comanda.Parameters.Add("@nr_statii", OleDbType.Integer).Value = TextBox1.Text;

                OleDbDataReader reader = comanda.ExecuteReader();
                while (reader.Read())
                {
                   TextBox2.Text += "Autobuzul cu id-ul  " + reader["id_autobuz"] + " are  " + reader["nr_statii"] + " statii"+ Environment.NewLine;
                    //GridView2.DataSource = reader;
                    //GridView2.DataBind();
                }
}
            catch (Exception ex)
            {
                TextBox2.Text= "\r\n Apel nereusit"+ex.Message;
            }
            finally
            {
                conexiune.Close();
               // reader.Close();
            }

        }
    }
}