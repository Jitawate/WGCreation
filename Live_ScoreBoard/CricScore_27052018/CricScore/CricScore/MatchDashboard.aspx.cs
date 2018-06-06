using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CricScore
{
    public partial class MatchDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var controlName = Request.Params.Get("_EVENTTARGET");
            var argument = Request.Params.Get("_EVENETARGUMENT");
            if (controlName == "Panel1" && argument == "Click")
            {
                txtName.Visible = true;
            }
        }

        protected void btnNewMatch_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("TeamDetails.aspx");
            }
            catch (Exception ex)
            {
                
                throw ex;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("");
        }
    }
}