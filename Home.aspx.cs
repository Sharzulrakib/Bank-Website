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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["AccountNo"] as string))
            {
                loginContainer.Style["display"] = "none";
                DetailsContainer.Style["display"] = "block";
                string account = Session["AccountNo"].ToString();
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SharzulConnect"].ConnectionString);
                string userdata = "select * from [Table] where Account_no = '" + account + "'";
                SqlCommand cmd = new SqlCommand(userdata, con);
                if (con.State != ConnectionState.Open)
                    con.Open();
                SqlDataReader data = cmd.ExecuteReader();
                while (data.Read()) {
                    Name.InnerHtml = data["Name"].ToString();
                    Branch.InnerHtml = data["Branch"].ToString();
                    Amount.InnerHtml = data["Balance"].ToString();
                }
            }
            else
            {
                loginContainer.Style["display"] = "block";
                DetailsContainer.Style["display"] = "none";
            }
        }
        protected void Login(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SharzulConnect"].ConnectionString);
            string insertion = "select count(*) from [Account] where Email= '" + Email.Value + "' and Password = '" + Password.Value + "'";
            SqlCommand cmd = new SqlCommand(insertion, con);
            if (con.State != ConnectionState.Open)
                con.Open();
            try
            {
                int output = (int)cmd.ExecuteScalar();
                if (output > 0)
                {
                    string accno = "select Account_No from [Account] where Email= '" + Email.Value + "' and Password = '" + Password.Value + "'";
                    SqlCommand acc = new SqlCommand(accno, con);
                    if (con.State != ConnectionState.Open)
                        con.Open();
                    string AccNo = acc.ExecuteScalar().ToString();
                    Session["AccountNo"] = AccNo;
                    loginContainer.Style["display"] = "none";
                    DetailsContainer.Style["display"] = "Block";
                    string userdata = "select * from [Table] where Account_no = '" + AccNo + "'";
                    SqlCommand cmddata = new SqlCommand(userdata, con);
                    if (con.State != ConnectionState.Open)
                        con.Open();
                    SqlDataReader data = cmddata.ExecuteReader();
                    while (data.Read())
                    {
                        Name.InnerHtml = data["Name"].ToString();
                        Branch.InnerHtml = data["Branch"].ToString();
                        Amount.InnerHtml = data["Balance"].ToString();
                    }
                }
            }
            catch (Exception exeption)
            {
                Invalid.Style["display"] = "block";
            }
        }

        protected void Logout(object sender, EventArgs e)
        {
            Session["AccountNo"] = null;
            loginContainer.Style["display"] = "block";
            DetailsContainer.Style["display"] = "none";
        }
    }
}