using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Configuration;


namespace al_fatima_saloon
{
    public partial class Productsaspx : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Al-FAIMAConnectionString"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {

                show1();
                show2();
                show3();
                show4();
                show5();
                show6();
                show7();
                show8();
                show9();
                show10();
                show11();
            }
        }

        //gridview1
        protected void show1()
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from tableHairSSS ", conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                gvHairServicee.DataSource = dt;
                gvHairServicee.DataBind();
            }
        }

        protected void gvHairServicee_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvHairServicee.EditIndex = -1;
            show1();
        }

        protected void gvHairServicee_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvHairServicee.EditIndex = e.NewEditIndex;
            show1();
        }

        protected void gvHairServicee_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt16(gvHairServicee.DataKeys[e.RowIndex].Values["id"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete from tableHairSSS where id=@id", conn);
            cmd.Parameters.AddWithValue("id", id);
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            show1();
        }

        protected void gvHairServicee_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label id = gvHairServicee.Rows[e.RowIndex].FindControl("lblid1") as Label;
            TextBox product1 = gvHairServicee.Rows[e.RowIndex].FindControl("txtproduct1") as TextBox;
            TextBox price1 = gvHairServicee.Rows[e.RowIndex].FindControl("txtprice1") as TextBox;
            //updating the record  
            conn.Open();
            SqlCommand cmd = new SqlCommand("Update tableHairSSS set product=@prod1,price=@pr1 where id=" + Convert.ToInt32(id.Text), conn);
            cmd.Parameters.AddWithValue("@prod1", product1.Text);
            cmd.Parameters.AddWithValue("@pr1", price1.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            gvHairServicee.EditIndex = -1;
            show1();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert into tableHairSSS(product,price)values(@prod1,@prc1)", conn);
            cmd.Parameters.AddWithValue("@prod1", txtproductadd1.Text);
            cmd.Parameters.AddWithValue("@prc1", txtpriceadd1.Text);
            conn.Open();
            if (cmd.ExecuteNonQuery() > 0)
            {
               
                txtproductadd1.Text = "";
                txtpriceadd1.Text = "";
            }
            else
            {
               
            }
            show1();
        }

        //gridview2
        protected void show2()
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from tableHair_Dye ", conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                gvHairDyee.DataSource = dt;
                gvHairDyee.DataBind();
            }
        }
        protected void gvHairDyee_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvHairDyee.EditIndex = -1;
            show2();
        }

        protected void gvHairDyee_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvHairDyee.EditIndex = e.NewEditIndex;
            show2();
        }

        protected void gvHairDyee_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt16(gvHairDyee.DataKeys[e.RowIndex].Values["id"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete from tableHair_Dye where id=@id", conn);
            cmd.Parameters.AddWithValue("id", id);
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            show2();
        }

        protected void gvHairDyee_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label id = gvHairDyee.Rows[e.RowIndex].FindControl("lblid2") as Label;
            TextBox product2 = gvHairDyee.Rows[e.RowIndex].FindControl("txtproduct2") as TextBox;
            TextBox price2 = gvHairDyee.Rows[e.RowIndex].FindControl("txtprice2") as TextBox;
            //updating the record  
            conn.Open();
            SqlCommand cmd = new SqlCommand("Update tableHair_Dye set product=@prod2,price=@pr2 where id=" + Convert.ToInt32(id.Text), conn);
            cmd.Parameters.AddWithValue("@prod2", product2.Text);
            cmd.Parameters.AddWithValue("@pr2", price2.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            gvHairDyee.EditIndex = -1;
            show2();
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert into tableHair_Dye(product,price)values(@prod2,@prc2)", conn);
            cmd.Parameters.AddWithValue("@prod2", txtproductadd2.Text);
            cmd.Parameters.AddWithValue("@prc2", txtpriceadd2.Text);
            conn.Open();
            if (cmd.ExecuteNonQuery() > 0)
            {
               
                txtproductadd2.Text = "";
                txtpriceadd2.Text = "";
            }
            else
            {
                
            }
            show2();
        }

        //gridview3
        protected void show3()
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from tableHairTreat ", conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                gvhairtreatment.DataSource = dt;
                gvhairtreatment.DataBind();
            }
        }
        protected void gvhairtreatment_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvhairtreatment.EditIndex = -1;
            show3();
        }

        protected void gvhairtreatment_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvhairtreatment.EditIndex = e.NewEditIndex;
            show3();
        }

        protected void gvhairtreatment_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Double id = Convert.ToInt16(gvhairtreatment.DataKeys[e.RowIndex].Values["id"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete from tableHairTreat where id=@id", conn);
            cmd.Parameters.AddWithValue("id", id);
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            show3();
        }

        protected void gvhairtreatment_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label id = gvhairtreatment.Rows[e.RowIndex].FindControl("lblid3") as Label;
            TextBox product3 = gvhairtreatment.Rows[e.RowIndex].FindControl("txtproduct3") as TextBox;
            TextBox price3 = gvhairtreatment.Rows[e.RowIndex].FindControl("txtprice3") as TextBox;
            //updating the record  
            conn.Open();
            SqlCommand cmd = new SqlCommand("Update tableHairTreat set product=@prod3,price=@pr3 where id=" + Convert.ToInt32(id.Text), conn);
            cmd.Parameters.AddWithValue("@prod3", product3.Text);
            cmd.Parameters.AddWithValue("@pr3", price3.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            gvhairtreatment.EditIndex = -1;
            show3();
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert into tableHairTreat(product,price)values(@prod3,@prc3)", conn);
            cmd.Parameters.AddWithValue("@prod3", txtproductadd3.Text);
            cmd.Parameters.AddWithValue("@prc3", txtpriceadd3.Text);
            conn.Open();
            if (cmd.ExecuteNonQuery() > 0)
            {
               
                txtproductadd3.Text = "";
                txtpriceadd3.Text = "";
            }
            else
            {
                
            }
            show3();
        }




        //gridview4
        protected void show4()
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from tableFacialServices ", conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                gvfacialServices.DataSource = dt;
                gvfacialServices.DataBind();
            }
        }
        protected void gvfacialServices_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvfacialServices.EditIndex = -1;
            show4();
        }

        protected void gvfacialServices_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvfacialServices.EditIndex = e.NewEditIndex;
            show4();
        }

        protected void gvfacialServices_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt16(gvfacialServices.DataKeys[e.RowIndex].Values["id"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete from tableFacialServices where id=@id", conn);
            cmd.Parameters.AddWithValue("id", id);
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            show4();
        }

        protected void gvfacialServices_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label id = gvfacialServices.Rows[e.RowIndex].FindControl("lblid4") as Label;
            TextBox product4 = gvfacialServices.Rows[e.RowIndex].FindControl("txtproduct4") as TextBox;
            TextBox price4 = gvfacialServices.Rows[e.RowIndex].FindControl("txtprice4") as TextBox;
            //updating the record  
            conn.Open();
            SqlCommand cmd = new SqlCommand("Update tableFacialServices set product=@prod4,price=@pr4 where id=" + Convert.ToInt32(id.Text), conn);
            cmd.Parameters.AddWithValue("@prod4", product4.Text);
            cmd.Parameters.AddWithValue("@pr4", price4.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            gvfacialServices.EditIndex = -1;
            show4();

        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert into tableFacialServices(product,price)values(@prod4,@prc4)", conn);
            cmd.Parameters.AddWithValue("@prod4", txtproductadd4.Text);
            cmd.Parameters.AddWithValue("@prc4", txtpriceadd4.Text);
            conn.Open();
            if (cmd.ExecuteNonQuery() > 0)
            {
              
                txtproductadd4.Text = "";
                txtpriceadd4.Text = "";
            }
            else
            {
               
            }
            show4();
        }




        //gridview5

        protected void show5()
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from TableHenaServicee ", conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                gvhennaService.DataSource = dt;
                gvhennaService.DataBind();
            }

        }
        protected void gvhennaService_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvhennaService.EditIndex = -1;
            show5();
        }

        protected void gvhennaService_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvhennaService.EditIndex = e.NewEditIndex;
            show5();
        }

        protected void gvhennaService_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt16(gvhennaService.DataKeys[e.RowIndex].Values["id"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete from TableHenaServicee where id=@id", conn);
            cmd.Parameters.AddWithValue("id", id);
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            show5();
        }
        protected void gvhennaService_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label id = gvhennaService.Rows[e.RowIndex].FindControl("lblid5") as Label;
            TextBox product5 = gvhennaService.Rows[e.RowIndex].FindControl("txtproduct5") as TextBox;
            TextBox price5 = gvhennaService.Rows[e.RowIndex].FindControl("txtprice5") as TextBox;
            //updating the record  
            conn.Open();
            SqlCommand cmd = new SqlCommand("Update TableHenaServicee set product=@prod5,price=@pr5 where id=" + Convert.ToInt32(id.Text), conn);
            cmd.Parameters.AddWithValue("@prod5", product5.Text);
            cmd.Parameters.AddWithValue("@pr5", price5.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            gvhennaService.EditIndex = -1;
            show5();
        }

        protected void Button5_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert into TableHenaServicee(product,price)values(@prod5,@prc5)", conn);
            cmd.Parameters.AddWithValue("@prod5", txtproductadd5.Text);
            cmd.Parameters.AddWithValue("@prc5", txtpriceadd5.Text);
            conn.Open();
            if (cmd.ExecuteNonQuery() > 0)
            {
                txtproductadd5.Text = "";
                txtpriceadd5.Text = "";
            }
            else
            {
                
            }
            show5();
        }


        //gridview6

        protected void show6()
        {
          
            SqlDataAdapter sda = new SqlDataAdapter("select * from tableFACEHAIR ",conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                gvfacehairRemoval.DataSource = dt;
                gvfacehairRemoval.DataBind();
            }
            
        }
        protected void gvfacehairRemoval_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

            gvfacehairRemoval.EditIndex = -1;
            show6();
        }

        protected void gvfacehairRemoval_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvfacehairRemoval.EditIndex = e.NewEditIndex;
            show6();
        }

        protected void gvfacehairRemoval_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label id = gvfacehairRemoval.Rows[e.RowIndex].FindControl("lblid6") as Label;
            TextBox product6 = gvfacehairRemoval.Rows[e.RowIndex].FindControl("txtproduct6") as TextBox;
            TextBox price6 = gvfacehairRemoval.Rows[e.RowIndex].FindControl("txtprice6") as TextBox;
            //updating the record  
            conn.Open();
            SqlCommand cmd = new SqlCommand("Update tableFACEHAIR set productname=@prod6,price=@pr6 where id=" + Convert.ToInt32(id.Text), conn);
            cmd.Parameters.AddWithValue("@prod6", product6.Text);
            cmd.Parameters.AddWithValue("@pr6",  price6.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            gvfacehairRemoval.EditIndex = -1;
            show6();
        }

        protected void gvfacehairRemoval_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt16(gvfacehairRemoval.DataKeys[e.RowIndex].Values["id"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete from tableFACEHAIR where id=@id", conn);
            cmd.Parameters.AddWithValue("id", id);
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            show6();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert into tableFACEHAIR(productname,price)values(@prod6,@prc6)", conn);
            cmd.Parameters.AddWithValue("@prod6", txtproductadd6.Text);
            cmd.Parameters.AddWithValue("@prc6", txtpriceadd6.Text);
            conn.Open();
            if (cmd.ExecuteNonQuery() > 0)
            {
                
                txtproductadd6.Text = "";
                txtpriceadd6.Text = "";
            }
            else
            {
               
            }
            show6();
        }


        //gridview7

            protected void show7()
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from tableFACEBLEACH", conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                gvFaceBleach.DataSource = dt;
                gvFaceBleach.DataBind();
            }


        }

        protected void gvFaceBleach_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

            gvFaceBleach.EditIndex = -1;
            show7();
        }

        protected void gvFaceBleach_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvFaceBleach.EditIndex = e.NewEditIndex;
            show7();
        }

        protected void gvFaceBleach_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label id = gvFaceBleach.Rows[e.RowIndex].FindControl("lblid7") as Label;
            TextBox product7 = gvFaceBleach.Rows[e.RowIndex].FindControl("txtproduct7") as TextBox;
            TextBox price7 = gvFaceBleach.Rows[e.RowIndex].FindControl("txtprice7") as TextBox;
            //updating the record  
            conn.Open();
            SqlCommand cmd = new SqlCommand("Update tableFACEBLEACH set product=@prod7,price=@pr7 where id=" + Convert.ToInt32(id.Text), conn);
            cmd.Parameters.AddWithValue("@prod7", product7.Text);
            cmd.Parameters.AddWithValue("@pr7", price7.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            gvFaceBleach.EditIndex = -1;
            show7();
        }

        protected void gvFaceBleach_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt16(gvFaceBleach.DataKeys[e.RowIndex].Values["id"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete from tableFACEBLEACH where id=@id", conn);
            cmd.Parameters.AddWithValue("id", id);
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            show7();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert into  tableFACEBLEACH(product,price)values(@prod7,@prc7)", conn);
            cmd.Parameters.AddWithValue("@prod7", txtproductadd7.Text);
            cmd.Parameters.AddWithValue("@prc7", txtpriceadd7.Text);
            conn.Open();
            if (cmd.ExecuteNonQuery() > 0)
            {
               
                txtproductadd7.Text = "";
                txtpriceadd7.Text = "";
            }
            else
            {
               
            }
            show7();
        }

        //gridview8

            protected void show8()
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from tableBodyBleach", conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                gvBodyBleach.DataSource = dt;
                gvBodyBleach.DataBind();
            }

        }


        protected void gvBodyBleach_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

            gvBodyBleach.EditIndex = -1;
            show8();
        }

        protected void gvBodyBleach_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvBodyBleach.EditIndex = e.NewEditIndex;
            show8();
        }

        protected void gvBodyBleach_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label id = gvBodyBleach.Rows[e.RowIndex].FindControl("lblid8") as Label;
            TextBox product8 = gvBodyBleach.Rows[e.RowIndex].FindControl("txtproduct8") as TextBox;
            TextBox price8 = gvBodyBleach.Rows[e.RowIndex].FindControl("txtprice8") as TextBox;
            //updating the record  
            conn.Open();
            SqlCommand cmd = new SqlCommand("Update tableBodyBleach set product=@prod8,price=@pr8 where id=" + Convert.ToInt32(id.Text), conn);
            cmd.Parameters.AddWithValue("@prod8", product8.Text);
            cmd.Parameters.AddWithValue("@pr8", price8.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            gvBodyBleach.EditIndex = -1;
            show8();
        }

        protected void gvBodyBleach_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt16(gvBodyBleach.DataKeys[e.RowIndex].Values["id"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete from tableBodyBleach where id=@id", conn);
            cmd.Parameters.AddWithValue("id", id);
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            show8();
        }


        protected void Button8_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert into  tableBodyBleach(product,price)values(@prod8,@prc8)", conn);
            cmd.Parameters.AddWithValue("@prod8", txtproductadd8.Text);
            cmd.Parameters.AddWithValue("@prc8", txtpriceadd8.Text);
            conn.Open();
            if (cmd.ExecuteNonQuery() > 0)
            {
              
                txtproductadd8.Text = "";
                txtpriceadd8.Text = "";
            }
            else
            {
                
            }
            show8();
        }


        //gridview9
        protected void show9()
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from tableB_H_Remov", conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                gvBodyHairRemoval.DataSource = dt;
                gvBodyHairRemoval.DataBind();
            }

        }

        protected void gvBodyHairRemoval_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvBodyHairRemoval.EditIndex = -1;
            show9();
        }

        protected void gvBodyHairRemoval_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvBodyHairRemoval.EditIndex = e.NewEditIndex;
            show9();
        }

        protected void gvBodyHairRemoval_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt16(gvBodyHairRemoval.DataKeys[e.RowIndex].Values["id"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete from tableB_H_Remov where id=@id", conn);
            cmd.Parameters.AddWithValue("id", id);
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            show9();
        }

        protected void gvBodyHairRemoval_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label id = gvBodyHairRemoval.Rows[e.RowIndex].FindControl("lblid9") as Label;
            TextBox product9 = gvBodyHairRemoval.Rows[e.RowIndex].FindControl("txtproduct9") as TextBox;
            TextBox price9 = gvBodyHairRemoval.Rows[e.RowIndex].FindControl("txtprice9") as TextBox;
            //updating the record  
            conn.Open();
            SqlCommand cmd = new SqlCommand("Update tableB_H_Remov set product=@prod9,price=@pr9 where id=" + Convert.ToInt32(id.Text), conn);
            cmd.Parameters.AddWithValue("@prod9", product9.Text);
            cmd.Parameters.AddWithValue("@pr9", price9.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            gvBodyHairRemoval.EditIndex = -1;
            show9();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert into  tableB_H_Remov(product,price)values(@prod9,@prc9)", conn);
            cmd.Parameters.AddWithValue("@prod9", txtproductadd9.Text);
            cmd.Parameters.AddWithValue("@prc9", txtpriceadd9.Text);
            conn.Open();
            if (cmd.ExecuteNonQuery() > 0)
            {
               
                txtproductadd9.Text = "";
                txtpriceadd9.Text = "";
            }
            else
            {
               
            }
            show9();
        }


        //gridview10
        protected void show10()
        {

            SqlDataAdapter sda = new SqlDataAdapter("select * from tableNailCare", conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                gvnailcare.DataSource = dt;
                gvnailcare.DataBind();
            }

        }
        protected void gvnailcare_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvnailcare.EditIndex = -1;
            show10();
        }

        protected void gvnailcare_RowEditing(object sender, GridViewEditEventArgs e)
        {

            gvnailcare.EditIndex = e.NewEditIndex;
            show10();
        }

        protected void gvnailcare_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt16(gvnailcare.DataKeys[e.RowIndex].Values["id"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete from tableNailCare where id=@id", conn);
            cmd.Parameters.AddWithValue("id", id);
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            show10();
        }

        protected void gvnailcare_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label id = gvnailcare.Rows[e.RowIndex].FindControl("lblid10") as Label;
            TextBox product10= gvnailcare.Rows[e.RowIndex].FindControl("txtproduct10") as TextBox;
            TextBox price10 = gvnailcare.Rows[e.RowIndex].FindControl("txtprice10") as TextBox;
            //updating the record  
            conn.Open();
            SqlCommand cmd = new SqlCommand("Update tableNailCare set product=@prod10,price=@pr10 where id=" + Convert.ToInt32(id.Text), conn);
            cmd.Parameters.AddWithValue("@prod10", product10.Text);
            cmd.Parameters.AddWithValue("@pr10", price10.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            gvnailcare.EditIndex = -1;
            show10();
        }

        protected void Button10_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("Insert into  tableNailCare(product,price)values(@prod10,@prc10)", conn);
            cmd.Parameters.AddWithValue("@prod10", txtproductadd10.Text);
            cmd.Parameters.AddWithValue("@prc10", txtpriceadd10.Text);
            conn.Open();
            if (cmd.ExecuteNonQuery() > 0)
            {
               
                txtproductadd10.Text = "";
                txtpriceadd10.Text = "";
            }
            else
            {
               
            }
            show10();

            //gv11
          

        }
        //gridview11

            protected void show11()
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from tableProducts", conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                gvProducts.DataSource = dt;
                gvProducts.DataBind();
            }

        }
        protected void gvProducts_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvProducts.EditIndex = -1;
            show11();
        }

        protected void gvProducts_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt16(gvProducts.DataKeys[e.RowIndex].Values["id"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete from tableProducts where id=@id", conn);
            cmd.Parameters.AddWithValue("id", id);
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            show11();
        }

        protected void gvProducts_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvProducts.EditIndex = e.NewEditIndex;
            show11();
        }

        protected void gvProducts_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label id = gvProducts.Rows[e.RowIndex].FindControl("lblid11") as Label;
            TextBox product11 = gvProducts.Rows[e.RowIndex].FindControl("txtproduct11") as TextBox;
            TextBox price11 = gvProducts.Rows[e.RowIndex].FindControl("txtprice11") as TextBox;
            //updating the record  
            conn.Open();
            SqlCommand cmd = new SqlCommand("Update tableProducts set productname=@prod11,price=@pr11 where id=" + Convert.ToInt32(id.Text), conn);
            cmd.Parameters.AddWithValue("@prod11", product11.Text);
            cmd.Parameters.AddWithValue("@pr11", price11.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            gvProducts.EditIndex = -1;
            show11();
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert into  tableProducts(productname,price)values(@prod11,@prc11)", conn);
            cmd.Parameters.AddWithValue("@prod11", txtproductadd11.Text);
            cmd.Parameters.AddWithValue("@prc11", txtpriceadd11.Text);
            conn.Open();
            if (cmd.ExecuteNonQuery() > 0)
            {

                txtproductadd11.Text = "";
                txtpriceadd11.Text = "";
            }
            else
            {

            }
            show11();

        }
















        //gv5



        //gridview8




    }



}