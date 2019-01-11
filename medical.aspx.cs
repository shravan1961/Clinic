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

    protected void Page_Load(object sender, EventArgs e)
    {

        //SqlConnection co = new SqlConnection(@"Data Source=DESKTOP-IQHJI1V;Initial Catalog=clinic;Integrated Security=True");
        //string s = "select  pid from registration orderby pid  desc limit 1 ";
        //SqlCommand comd = new SqlCommand(s,co);

        if (IsPostBack == false)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-IQHJI1V;Initial Catalog=clinic;Integrated Security=True");
            {
                SqlCommand cmd = new SqlCommand("select mid from medicine", con);
                con.Open();
                DropDownList4.DataSource = cmd.ExecuteReader();
                DropDownList4.DataTextField = "mid";
                DropDownList4.DataBind();
                con.Close();



                SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-IQHJI1V;Initial Catalog=clinic;Integrated Security=True");
                con.Open();
                SqlCommand cm = new SqlCommand("select pid from registration", cn);


            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-IQHJI1V;Initial Catalog=clinic;Integrated Security=True");
        try
        {
            con.Open();
            string pid = txtpid.Text;
            string test = DropDownList1.SelectedItem.Text;
            string med_cat = DropDownList2.SelectedItem.ToString();
            string mid = DropDownList4.SelectedItem.ToString();
            string mname = txtmd.Text;
            int mdos = Int32.Parse(DropDownList3.SelectedItem.ToString());
            string description = txtds.Text;

            string sql = "insert into med values('" + pid + "','" + test + "','" + med_cat + "','" + mid + "','" + mname + "','" + mdos + "','"+description+"')";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('inserted');", true);

            con.Close();

        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('"+ex.Message+"');", true);

        }
        
        
        
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-IQHJI1V;Initial Catalog=clinic;Integrated Security=True");
        con.Open();
        
        
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select mname from medicine where mid='"+DropDownList4.SelectedItem.Text+"'";
           
       //cmd.Parameters.AddWithValue("mid",DropDownList4.SelectedValue);
       cmd.Connection = con;
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            txtmd.Text = rd[0].ToString();
        }
        rd.Close();
        con.Close();

        
      









        //    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-IQHJI1V;Initial Catalog=clinic;Integrated Security=True");

        //    string query =" select * from medicine";
        //    SqlCommand cmd = new SqlCommand(query, con);
        //    SqlDataReader myreader= new SqlDataReader();
        //    try
        //    {

        //        con.Open();
        //        myreader = cmd.ExecuteReader();

        //        while (myreader.Read())
        //        {
        //            string mname;

        //            con.Close();
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write(ex.Message);
        //    }
        //}
    }


    protected void Dropdown4(object sender, EventArgs e)
    {
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Billing.aspx?mid=" + DropDownList4.SelectedItem.Text);

    }
}