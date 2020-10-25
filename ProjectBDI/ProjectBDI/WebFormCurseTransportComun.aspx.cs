using System;
using System.Collections.Generic;
using System.Data;
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
            Response.Redirect("~/WebFormGrafic.aspx");
        }
    }
}