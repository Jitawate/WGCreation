using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CricScore
{
    public partial class ScoreBook : System.Web.UI.Page
    {
        int b1 = 1;
        int b2 = 2;
        int b3 = 3;
        int b4 = 4;
        int b5 = 5;
        int b6 = 6;
        int b0 = 0;
        int t1 = 0;
        int lb1 = 0;
        int bl = 0;
        string score = "";


        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "0 Runs In";
            Label2.Text = "0 Balls";
        }
        public void Button1_Click(object sender, EventArgs e)
        {
            bl = Convert.ToInt32(new String(Label2.Text.Where(Char.IsDigit).ToArray()));
            bl = bl + 1;
            Label2.Text = bl.ToString() + " balls";
            lb1 = Convert.ToInt32(new String(Label1.Text.Where(Char.IsDigit).ToArray()));
            //lb1 = Convert.ToInt32(Label1.Text);
            t1 = lb1 + b1;
            score = t1.ToString();
            Label1.Text = score + " runs ";
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            bl = Convert.ToInt32(new String(Label2.Text.Where(Char.IsDigit).ToArray()));
            bl = bl + 1;
            Label2.Text = bl.ToString() + " balls";
            lb1 = Convert.ToInt32(new String(Label1.Text.Where(Char.IsDigit).ToArray()));
            //lb1 = Convert.ToInt32(Label1.Text);
            t1 = lb1 + b2;
            score = t1.ToString();
            Label1.Text = score + " runs";
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            bl = Convert.ToInt32(new String(Label2.Text.Where(Char.IsDigit).ToArray()));
            bl = bl + 1;
            Label2.Text = bl.ToString() + " balls";
            lb1 = Convert.ToInt32(new String(Label1.Text.Where(Char.IsDigit).ToArray()));
            //lb1 = Convert.ToInt32(Label1.Text);
            t1 = lb1 + b3;
            score = t1.ToString();
            Label1.Text = score + " runs";
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            bl = Convert.ToInt32(new String(Label2.Text.Where(Char.IsDigit).ToArray()));
            bl = bl + 1;
            Label2.Text = bl.ToString() + " balls";
            lb1 = Convert.ToInt32(new String(Label1.Text.Where(Char.IsDigit).ToArray()));
            //lb1 = Convert.ToInt32(Label1.Text);
            t1 = lb1 + b4;
            score = t1.ToString();
            Label1.Text = score + " runs";
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            bl = Convert.ToInt32(new String(Label2.Text.Where(Char.IsDigit).ToArray()));
            bl = bl + 1;
            Label2.Text = bl.ToString() + " balls";
            lb1 = Convert.ToInt32(new String(Label1.Text.Where(Char.IsDigit).ToArray()));
            //lb1 = Convert.ToInt32(Label1.Text);
            t1 = lb1 + b5;
            score = t1.ToString();
            Label1.Text = score + " runs";
        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            bl = Convert.ToInt32(new String(Label2.Text.Where(Char.IsDigit).ToArray()));
            bl = bl + 1;
            Label2.Text = bl.ToString() + " balls";
            lb1 = Convert.ToInt32(new String(Label1.Text.Where(Char.IsDigit).ToArray()));
            //lb1 = Convert.ToInt32(Label1.Text);
            t1 = lb1 + b6;
            score = t1.ToString();
            Label1.Text = score + " runs";
        }
        protected void Button7_Click(object sender, EventArgs e)
        {
            bl = Convert.ToInt32(new String(Label2.Text.Where(Char.IsDigit).ToArray()));
            bl = bl + 1;
            Label2.Text = bl.ToString() + " balls";
            lb1 = Convert.ToInt32(new String(Label1.Text.Where(Char.IsDigit).ToArray()));
            //lb1 = Convert.ToInt32(Label1.Text);
            t1 = lb1 + b0;
            score = t1.ToString();
            Label1.Text = score + " runs";
        }

        protected void btnBatsmenOnStikeLeft_Click(object sender, EventArgs e)
        {

        }

        protected void btnBowled_Click(object sender, EventArgs e)
        {

        }

        protected void btnCaught_Click(object sender, EventArgs e)
        {

        }

        protected void btnStumped_Click(object sender, EventArgs e)
        {

        }

        protected void btnRunOut_Click(object sender, EventArgs e)
        {

        }

        protected void btnLBW_Click(object sender, EventArgs e)
        {

        }

        protected void btnOther_Click(object sender, EventArgs e)
        {

        }

        protected void btnOneByes_Click(object sender, EventArgs e)
        {

        }

        protected void btnTwoByes_Click(object sender, EventArgs e)
        {

        }

        protected void btnThreeByes_Click(object sender, EventArgs e)
        {

        }
    }
}