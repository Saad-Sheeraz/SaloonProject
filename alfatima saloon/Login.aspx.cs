using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace al_fatima_saloon
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Al-FAIMAConnectionString"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //if (Session["username"] == null)
                //{
                //    Response.Write("<script> alert('your session has been expired..'); windows.location.href='SignInaspx.aspx';");
                //}

                

            }
            //Response.Cache.SetCacheability(HttpCacheability.NoCache);
            //Response.Cache.SetExpires(DateTime.Now);

        }


        protected void btnAdminC_Click(object sender, EventArgs e)
        {
            try
            {
                string txtUN = textboxName.Text;
                string passUN = textboxPass.Text;
                conn.Open();
                string query1 = "select * from Table_EmployeeLogin where userid='" + txtUN + "' and password='" + passUN + "'";
                SqlCommand cmd = new SqlCommand(query1, conn);
                cmd.Prepare();
                SqlDataReader sdr = cmd.ExecuteReader();
                bool ab = sdr.Read();
                //SqlDataAdapter sda = new SqlDataAdapter(cmd);
                //DataTable dt = new DataTable();
                //sda.Fill(dt);

                //cmd.ExecuteNonQuery();
                if (/*sdr.Read()*/ ab==true)
                {
                    Session["id"] = txtUN.ToString();
                    Response.Redirect("Productsaspx.aspx");
                   // Session.RemoveAll();

                }
                else
                {
                    lblMessage.Text = "Invalid UserName or Password";
                    lblMessage.ForeColor = System.Drawing.Color.Blue;
                }
                conn.Close();


            }
            catch (Exception ex)
            {
                lblMessage.Text = "Invalid UserName or Password";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
            finally
            {
                if (conn != null)
                    conn.Close();
            }

        }


    }
}