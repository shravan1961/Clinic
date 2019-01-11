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
    protected void Page_Load(object sender, EventArgs e)
    {
         if (Request.QueryString["pid"] != null)
        {
             SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-IQHJI1V;Initial Catalog=clinic;Integrated Security=True");
            string query = "select * from registration where pid =" + Request.QueryString["pid"].ToString();
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtid.Text = ds.Tables[0].Rows[0]["pid"].ToString();
                txtname.Text = ds.Tables[0].Rows[0]["pname"].ToString();
                Txtlname.Text = ds.Tables[0].Rows[0]["plname"].ToString();
                DropDownList1.Text= ds.Tables[0].Rows[0]["gender"].ToString();
                txtoccu.Text = ds.Tables[0].Rows[0]["occupation"].ToString();
                txtage.Text = ds.Tables[0].Rows[0]["age"].ToString();
                txtbg.Text= ds.Tables[0].Rows[0]["blood_group"].ToString();
                DropDownList2.Text = ds.Tables[0].Rows[0]["mar_status"].ToString();
                txtad.Text= ds.Tables[0].Rows[0]["adress"].ToString();
                txtcnum.Text = ds.Tables[0].Rows[0]["cnum"].ToString();
                txtcity.Text = ds.Tables[0].Rows[0]["city"].ToString();
                txtpin.Text = ds.Tables[0].Rows[0]["pin"].ToString();

            }

            else
            {

                Label13.Text = "particular id not found";
            }
            con.Close();
        }
        else
        {
            Label13.Text = "No patient id found in querry string";
        }
    }
   

    
    protected void Button1_Click(object sender, EventArgs e)
    {

        Response.Redirect("medical.aspx");
    }
}
