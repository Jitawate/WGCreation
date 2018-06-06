using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CricScore
{
    public partial class MatchesDashBoard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
    }
}