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
    public partial class TeamDetails : System.Web.UI.Page
    {

        DataSet ds;
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    FillTeams();
                    FillMatchType();
                }
                
            }
            catch (Exception ex)
            {
                
                throw ex;
            }

        }
        public void FillTeams()
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
                cmd.CommandText = "usp_fillTeams";
                ds = new DataSet();
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                ddlTeam1.DataSource=ds;
                ddlTeam1.DataTextField="TeamName";
                ddlTeam1.DataValueField="TeamName";
                ddlTeam1.DataBind();
            }
            catch (Exception ex)
            {
                
                throw ex;
            }
        }
        public void FillMatchType()
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
                cmd.CommandText = "usp_MatchTypeDetails";
                ds = new DataSet();
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                ddlMatchType.DataSource = ds;
                ddlMatchType.DataTextField = "MatchType";
                ddlMatchType.DataValueField = "MatchType";
                ddlMatchType.DataBind();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        public void FillTeams2()
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
                cmd.CommandText = "usp_fillTeams";
                ds = new DataSet();
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                
                string Team1 = ddlTeam1.SelectedItem.Text.ToString();
                DataTable dt = ds.Tables[0];
                List<DataRow> rowsToDelete = new List<DataRow>();
                foreach (DataRow dr in dt.Rows)
                {
                    if (dr["TeamName"].ToString().Equals(Team1))
                    {
                        rowsToDelete.Add(dr);
                    }
                }
                foreach (DataRow dr in rowsToDelete)
                {
                    dt.Rows.Remove(dr);
                }
                dt.AcceptChanges();

                ddlTeam2.DataSource = dt;
                ddlTeam2.DataTextField = "TeamName";
                ddlTeam2.DataValueField = "TeamName";
                ddlTeam2.DataBind();

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        public void FillTossWin()
        {
            try
            {
                string Team2 = ddlTeam1.SelectedItem.Text;
                string Team3 = ddlTeam2.SelectedItem.Text;

                string strConnect = "";
                strConnect = ConfigurationManager.ConnectionStrings["SqlConnection"].ConnectionString.ToString();
                SqlConnection cn = new SqlConnection(strConnect);
                cn.Open();
                SqlCommand cmd = new SqlCommand();

                cmd.Connection = cn;
                cmd.CommandType = CommandType.StoredProcedure;
                
                ds = new DataSet();
                DataTable dtNew = new DataTable("MyTable");
                dtNew.Columns.Add((new DataColumn("Team_Name",typeof(string))));
                DataRow dr = dtNew.NewRow();
                dr["Team_Name"] = Team2.ToString();
                dr["Team_Name"] = Team3.ToString();
                dtNew.Rows.Add(dr);
                
                

                ddlToss.DataSource = dtNew;
                ddlToss.DataTextField = "Team_Name";
                ddlToss.DataValueField = "Team_Name";
                ddlToss.DataBind();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void ddlTeam1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                FillTeams2();
            }
            catch (Exception ex)
            {
                
                throw ex;
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("ScoreBook.aspx",false);

            }
            catch (Exception ex)
            {
                
                throw ex;
            }

        }

        protected void ddlTeam2_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillTossWin();
        }
        
    }
}