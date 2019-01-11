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
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            string userid = txtuser.Text;
            string password = txtpwd.Text;
            string sql = "insert into Login values('" + userid + "','" + password + "')";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('inserted');", true);
           con.Close();
        }
        catch (Exception ex)
        {
            Response.Redirect("Registration.aspx");

            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert(' " + ex.Message + " ');", true);
        }

    }
}