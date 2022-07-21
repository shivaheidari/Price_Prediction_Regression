using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxGauges.Gauges.Circular;
using DevExpress.XtraGauges.Core.Model;
using System.Drawing;
using DevExpress.XtraGauges.Core.Drawing;
using DevExpress.Web.ASPxGauges.Gauges;

namespace DXWebApplication1
{
    public partial class start : System.Web.UI.Page
    {
        CircularGauge cg;
        ArcScaleComponent cs;
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btsubmit_Click(object sender, EventArgs e)
        {
            // reading output from algo 1
            string[] text2 = System.IO.File.ReadAllLines(Server.MapPath("\\test.txt"));
            // setting an array of the Coefficients
            double[] d = new double[5], c = { Convert.ToDouble(text2[0]), Convert.ToDouble(text2[2]), Convert.ToDouble(text2[4]), Convert.ToDouble(text2[6]), Convert.ToDouble(text2[8]) };
            double Csum = 0;
            // calculating the Denominator for the equation of the result
            for (int i = 0; i < c.Length; i++) { Csum += Math.Pow(c[i], 2); }
            double t = (Convert.ToDouble(tbynew.Text) - Convert.ToDouble(tby.Text)) / Csum;
            // calculating the target value of x's
            d[0] = c[0] * t + Convert.ToDouble(tbx1.Text);
            d[1] = c[1] * t + Convert.ToDouble(tbx2.Text);
            d[2] = c[2] * t + Convert.ToDouble(tbx3.Text);
            d[3] = c[3] * t + Convert.ToDouble(tbx4.Text);
            d[4] = c[4] * t + Convert.ToDouble(tbx5.Text);
            // setting the guage values
            for (int i = 0; i < 5; i++)
            {
                cg = ((CircularGauge)ASPxGaugeControl1.Gauges[i]);
                cs = cg.Scales[0];
                cs.Value = Convert.ToInt32(d[i]);
                cs.Ranges.AddRange(CreateRanges(cs.MaxValue - cs.MinValue, cs.MinValue));
            }
            // inserting the result
            tb1new.Text = (d[0]).ToString();
            tb2new.Text = (d[1]).ToString();
            tb3new.Text = (d[2]).ToString();
            tb4new.Text = (d[3]).ToString();
            tb5new.Text = (d[4]).ToString();

        }

        protected void btcalc_Click(object sender, EventArgs e)
        {
            // reading output from algo 1
            string[] txt = System.IO.File.ReadAllLines(Server.MapPath("\\test.txt"));
            // getting the x's
            double[] c = { Convert.ToDouble(txt[0]), Convert.ToDouble(txt[2]), Convert.ToDouble(txt[4]), Convert.ToDouble(txt[6]), Convert.ToDouble(txt[8]) };
            double Csum = c[0] * Convert.ToDouble(tbx1.Text) + c[1] * Convert.ToDouble(tbx2.Text) + c[2] * Convert.ToDouble(tbx3.Text) + c[3] * Convert.ToDouble(tbx4.Text) + c[4] * Convert.ToDouble(tbx5.Text);
            // setting the result
            tby.Text = Csum.ToString();
        }

        private Color[] rangeContentColors = { Color.PowderBlue, Color.PaleGreen, Color.DarkSalmon };

        private IRange[] CreateRanges(float ticks, float start)
        {
            int range = (int)Math.Floor((double)(ticks / rangeContentColors.Length));
            List<IRange> ranges = new List<IRange>();
            for (int i = 0; i < rangeContentColors.Length;)
                ranges.Add(CreateRange(rangeContentColors[i], (int)(range * i + start), (int)(range * ++i + start)));
            return ranges.ToArray();
        }

        private IRange CreateRange(Color contentColor, int startValue, int endValue)
        {
            IRange result = new ArcScaleRangeWeb();
            result.AppearanceRange.ContentBrush = new SolidBrushObject(contentColor);
            result.StartValue = startValue;
            result.EndValue = endValue;
            result.StartThickness = 0f;
            result.EndThickness = 50f;
            return result;
        }

        protected void btsubmitnotl_Click(object sender, EventArgs e)
        {
            // reading output from algo 1
            string[] text2 = System.IO.File.ReadAllLines(Server.MapPath("\\outtest.txt"));
            // setting an array of the Coefficients
            double[] d = new double[7], c = { Convert.ToDouble(text2[0]), Convert.ToDouble(text2[1]), Convert.ToDouble(text2[2]), Convert.ToDouble(text2[3]), Convert.ToDouble(text2[4]), Convert.ToDouble(text2[5]) };
            d[0] = Math.Log10(d[0]);
            double Csum =0;
            // calculating the Denominator for the equation of the result
            for (int i =1; i < c.Length; i++) { Csum += Math.Pow(c[i], 2); }
            double t = ((Convert.ToDouble(tbynew.Text)) - (Convert.ToDouble(tby.Text))) / Csum;
            // calculating the target value of x's
            d[1] = c[1] * t + Math.Log10(Convert.ToDouble(tbx1.Text));
            d[2] = c[2] * t + Math.Log10(Convert.ToDouble(tbx2.Text));
            d[3] = c[3] * t + Math.Log10(Convert.ToDouble(tbx3.Text));
            d[4] = c[4] * t + Math.Log10(Convert.ToDouble(tbx4.Text));
            d[5] = c[5] * t + Math.Log10(Convert.ToDouble(tbx5.Text));
            // setting the guage values
            
            for (int i = 1; i < 5; i++)
            {
                d[i] = Math.Pow(d[i], 10);
                cg = ((CircularGauge)ASPxGaugeControl1.Gauges[i]);
                cs = cg.Scales[0];
                cs.Value = Convert.ToInt32(d[i]);
                cs.Ranges.AddRange(CreateRanges(cs.MaxValue - cs.MinValue, cs.MinValue));
            }
            // inserting the result
            tb1new.Text = (d[1]).ToString();
            tb2new.Text = (d[2]).ToString();
            tb3new.Text = (d[3]).ToString();
            tb4new.Text = (d[4]).ToString();
            tb5new.Text = (d[5]).ToString();

        }

        protected void btcalcnotl_Click(object sender, EventArgs e)
        {
            // reading output from algo 1
            string[] txt = System.IO.File.ReadAllLines(Server.MapPath("\\outtest.txt"));
            // getting the x's
            double[] c = { Convert.ToDouble(txt[0]), Convert.ToDouble(txt[1]), Convert.ToDouble(txt[2]), Convert.ToDouble(txt[3]), Convert.ToDouble(txt[4]), Convert.ToDouble(txt[5]) };
            double Csum =Math.Log10(c[0])+ c[1] * Math.Log10(Convert.ToDouble(tbx1.Text)) + c[2] * Math.Log10(Convert.ToDouble(tbx2.Text)) + c[3] * Math.Log10(Convert.ToDouble(tbx3.Text)) + c[4] * Math.Log10(Convert.ToDouble(tbx4.Text)) + c[5] * Math.Log10(Convert.ToDouble(tbx5.Text));
            // setting the result
            tby.Text =Math.Pow(Csum,10).ToString();
        }
    }
}