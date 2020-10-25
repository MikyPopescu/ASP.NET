using System;
using System.Collections.Generic;
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
    }
}