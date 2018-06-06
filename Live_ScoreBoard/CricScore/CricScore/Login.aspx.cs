using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CricScore
{
    public partial class Login : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Session["UserName"] = txtUserName.Text;
                Session["Pwd"] = txtPwd.Text;
            }
            catch (Exception ex)
            {
                
                throw ex;
            }
            
        }
            
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string strConnect = "";
                strConnect = ConfigurationManager.ConnectionStrings["SqlConnection"].ConnectionString.ToString();
                SqlConnection cn = new SqlConnection(strConnect);
                cn.Open();
                SqlCommand cmd = new SqlCommand();

                cmd.Connection = cn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "usp_GetLoginDetails";
                cmd.Parameters.AddWithValue("@UserName", txtUserName.Text);
                cmd.Parameters.AddWithValue("@Password", txtPwd.Text);

                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Response.Redirect("MatchDashboard.aspx");
                }
                else
                {
                    string myScriptValue = "alert('Invalid UserName And Password')";
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Validation", myScriptValue, true);

                    
                
                }
            }
            catch (Exception ex)
            {
                
                throw ex;
            }
        }
        
    }
}