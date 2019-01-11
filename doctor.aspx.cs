using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-IQHJI1V;Initial Catalog=clinic;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            string docname = txtdname.Text;
            string lastname = txtdlname.Text;
            string password = txtdpd.Text;
            string confirm_password = txtdcpd.Text;

            string sql = "insert into doctorregister values('" + docname + "','" + lastname + "','" + password + "','" + confirm_password + "')";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('inserted');", true);
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Redirect("dclog.aspx");
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert(' " + ex.Message + " ');", true);
        }
    }
}