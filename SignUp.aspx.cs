using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace SharzulWeb
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
 
        }

        protected void signup(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SharzulConnect"].ConnectionString);
            string insertion = "insert into [Account]([Account_No],[Email],[Password]) values('" + accNo.Value + "','" + email.Value + "','" + pass.Value + "')";
            SqlCommand cmd = new SqlCommand(insertion, con);
            if (con.State != ConnectionState.Open)
                con.Open();
            try
            {
                int output = cmd.ExecuteNonQuery();
                if (output > 0)
                {
                    Response.Redirect("~/Home.aspx");
                }
            }
            catch (Exception exeption)
            {
                Invalid.Style["display"] = "block";
            }
              
        }
    }
}