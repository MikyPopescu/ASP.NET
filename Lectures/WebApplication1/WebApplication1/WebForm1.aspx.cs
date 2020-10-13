using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void tbTest_Click(object sender, EventArgs e)
        {
            tbMessage.Text += "\r\nText";
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            double a = double.Parse(tbA.Text);
            double b = double.Parse(tbB.Text);
            switch (DropDownList1.Text)
            {
                case "+":
                    tbRes.Text=(a + b).ToString();
                    break;
                case "-":
                    tbRes.Text = (a - b).ToString();
                    break;
                case "*":
                    tbRes.Text = (a * b).ToString();
                    break;
                case "/":
                    if (b != 0)
                    {
                        tbRes.Text = (a / b).ToString();
                        break;
                    }
                    else
                    {
                        tbRes.Text = "NaN";
                         break;
                    }
                    
            }
        }
    }
}