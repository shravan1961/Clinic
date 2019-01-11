using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-IQHJI1V;Initial Catalog=clinic;Integrated Security=True");
 
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {

        con.Open();
        string docname = "select count(*) from doctorregister where docname='" + txtname.Text + "'";
        SqlCommand cmd = new SqlCommand(docname, con);
        int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        con.Close();
        if (temp == 1)
        {
            con.Open();
            string passwordquery = "select password from doctorregister where docname='" + txtname.Text + "'";
            SqlCommand cm = new SqlCommand(passwordquery, con);
            string password = cm.ExecuteScalar().ToString();
            if (password == txtpd.Text)
            {
                Session["New"] = txtname.Text;
                Response.Redirect("medical.aspx");
                Response.Write("password is correct");

            }
            else
            {
                Response.Write("password is not correct");
            }

        }
        else
        {
            Response.Write("username is not correct");

        }


    }
}