using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class _Default : System.Web.UI.Page
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
            string pid = txtid.Text;
            string pname = txtname.Text;
            string plname = Txtlname.Text;
            string gender = DropDownList1.SelectedItem.ToString();
            string occupation = txtoccu.Text;
            string blood_group = txtbg.Text;
            string mar_status = DropDownList2.SelectedItem.ToString();
            string adress = txtad.Text;
            int cnum = Int32.Parse(txtcnum.Text);
            string city = txtcity.Text;
            int pin = Int32.Parse(txtpin.Text);
            int age = Int32.Parse(txtage.Text);

            string sql = "insert into registration values('" + pid + "','" + pname + "','" + plname + "','" + gender + "','" + occupation + "','" + age + "','" + blood_group + "','" + mar_status + "','" + adress + "','" + cnum + "','" + city + "','" + pin + "')";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert(' Record inserted');", true);

            con.Close();
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert(' " + ex.Message + " ');", true);
            //Response.Redirect("medical.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("pinfo.aspx?pid=" + txtid.Text);

    }
}