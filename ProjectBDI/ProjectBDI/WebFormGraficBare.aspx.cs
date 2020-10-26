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
    public partial class WebFormGraph : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.ZedGraphWeb1.RenderGraph +=new ZedGraph.Web.ZedGraphWebControlEventHandler(this.OnRenderGraph);
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
            

                BarItem myCurve = myPane.AddBar("Curve 2", list, Color.Blue);
                myCurve.Bar.Fill = new Fill(colors);
                myCurve.Bar.Fill.Type = FillType.GradientByZ;
                myCurve.Bar.Fill.RangeMin = 0;
                myCurve.Bar.Fill.RangeMax = list.Count;
                myPane.XAxis.Type = AxisType.Text;
                myPane.XAxis.Scale.TextLabels = listaX.ToArray();
             
            }
        }
    }
}