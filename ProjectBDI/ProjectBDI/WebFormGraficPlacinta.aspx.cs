using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZedGraph;
using ZedGraph.Web;

namespace ProjectBDI
{
    public partial class WebFormGraficPlacinta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.ZedGraphWeb1.RenderGraph += new ZedGraph.Web.ZedGraphWebControlEventHandler(this.OnRenderGraph);

        }

        private void OnRenderGraph(ZedGraphWeb webObject, Graphics g, MasterPane pane)
        {
            DataSet ds = (DataSet)Cache["CurseCache"];
            GraphPane myPane = pane[0];
            myPane.Title.Text = "Nr total de statii in functie de statia de pornire";
            myPane.XAxis.Title.Text = "Statie pornire";
            myPane.YAxis.Title.Text = "Nr. statii";
            Color[] colors =
            {
            Color.Red, Color.Yellow, Color.Green, Color.Blue,
            Color.Purple,Color.Pink,Color.Plum,Color.Silver, Color.Salmon
            };
            if (ds != null)
            {
                List<string> listaX = new List<string>();
                PointPairList list = new PointPairList();
                int i = 0;
                foreach (DataRow r in ds.Tables[0].Rows)
                {
                    listaX.Add(r[2].ToString()); //rezultat

                    list.Add(0, (int)r[3], i++); // k

                }
                i = 0;

                foreach (DataRow r in ds.Tables[0].Rows)
                {

                    PieItem segment1 = myPane.AddPieSlice((
                    int)r[3], colors[(i++) % colors.Length],
                    Color.White, 45f, (i % 2 == 0) ? 0.2 : 0,
                    r[2].ToString());

                }
            }
        }
    }
}