using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace al_fatima_saloon
{
    public partial class LoginasAdmin : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Al-FAIMAConnectionString"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            Session.RemoveAll();
        }

      
        protected void btnloginfor_emp_Click(object sender, EventArgs e)
        {
            try
            {
                string txtUNE = textboxE_Name.Text;
                string passUNE = textboxE_Pass.Text;
                conn.Open();
                string query2 = "select * from tableAdminInfo where username='" + txtUNE + "' and password='" + passUNE + "'";
                SqlCommand cmd = new SqlCommand(query2, conn);
                cmd.Prepare();
                //SqlDataReader sdr = cmd.ExecuteReader();

                SqlDataReader sdr = cmd.ExecuteReader();
                bool read = sdr.Read();


                if (sdr.Read() && read == true)
                {
                    Session["UserName"] = txtUNE;
                    Response.Redirect("employeePanel.aspx");
                }
                else
                {
                    lbladminDD.Text = "Invalid UserName or Password";
                    lbladminDD.ForeColor = System.Drawing.Color.Blue;
                }
                conn.Close();
                //if (dt.Rows.Count > 0)
                //{
                //    Response.Redirect("Productaspx.aspx");
                //}

            }
            catch (Exception ex)
            {
                lbladminDD.Text = "Invalid UserName or Password";
                lbladminDD.ForeColor = System.Drawing.Color.Red;
            }
            finally
            {
                if (conn != null)
                    conn.Close();
            }
        }
    }
}