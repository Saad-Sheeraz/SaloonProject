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
    public partial class Settings : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Al-FAIMAConnectionString"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                conn.Open();
                showgvdetails();              
                conn.Close();
            }

        }
       

     
        void showgvdetails()
        {
            SqlCommand cmd = new SqlCommand("select * from table_InvoiceOfProduct", conn);
             SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                gvdetails.DataSource = dt;
                gvdetails.DataBind();

        }

       
        protected void gvdetails_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt16(gvdetails.DataKeys[e.RowIndex].Values["id"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete from table_InvoiceOfProduct where id=@id", conn);
            cmd.Parameters.AddWithValue("id", id);
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            showgvdetails();
        }
    }
}