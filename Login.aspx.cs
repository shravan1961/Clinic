using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-IQHJI1V;Initial Catalog=clinic;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnnw_Click(object sender, EventArgs e)
    {
        Response.Redirect("Newuser.aspx");
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        con.Open();
        string userid = "select count(*) from Login where userid ='" + txtuser.Text + "'";
        SqlCommand cmd = new SqlCommand(userid, con);
        int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        con.Close();
        if (temp == 1)
        {
            con.Open();
            string passwordQuery = "select password from Login where userid='" + txtuser.Text + "'";
            SqlCommand cm = new SqlCommand(passwordQuery,con);
            string password = cm.ExecuteScalar().ToString();
            if (password == txtpwd.Text)
            {
                Session["New"] = txtuser.Text;
                Response.Write("Password is correct");
                Response.Redirect("Registration.aspx");
            }
            else
            {
                Response.Write("password is not correct");
            }
        }
            else
            {
            Response.Redirect("username is not correct");
            }

        }

    }
