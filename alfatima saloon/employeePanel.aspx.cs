using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;


namespace al_fatima_saloon
{
    public partial class employeePanel : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Al-FAIMAConnectionString"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            if (Session["Username"]==null)
            {
                Response.Redirect("LoginasEmployees.aspx");
            }
            if (!IsPostBack)
            {
                showtableone();
                showtabletwo();
                showtablethree();
                showtablefour();
                showtablefive();
                showtablesix();
                showtableseven();
                showtableeight();
                showtablenine();
                showtableten();
                showtable11();
            }
            conn.Close();
        }

        string empidstr = string.Empty;
        string empnamestr = string.Empty;
        string sprice = string.Empty;
        double grandtotal = 0;
       

        void showtableone()
        {

            SqlCommand cmd = new SqlCommand("select * from tableHairSSS", conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            gvHairService.DataSource = dt;
            gvHairService.DataBind();


        }

        void showtabletwo()
        {

            SqlCommand cmd = new SqlCommand("select * from tableHair_Dye", conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            gvHairDye.DataSource = dt;
            gvHairDye.DataBind();


        }
        void showtablethree()
        {

            SqlCommand cmd = new SqlCommand("select * from tableHairTreat", conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            gvHairTreatment.DataSource = dt;
            gvHairTreatment.DataBind();


        }


        void showtablefour()
        {

            SqlCommand cmd = new SqlCommand("select * from tableFacialServices", conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            gvFacialService.DataSource = dt;
            gvFacialService.DataBind();


        }

        void showtablefive()
        {

            SqlCommand cmd = new SqlCommand("select * from TableHenaServicee", conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            gvHennaService.DataSource = dt;
            gvHennaService.DataBind();


        }

        void showtablesix()
        {

            SqlCommand cmd = new SqlCommand("select * from tableFACEHAIR", conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            gvfacehairRem.DataSource = dt;
            gvfacehairRem.DataBind();


        }

        void showtableseven()
        {

            SqlCommand cmd = new SqlCommand("select * from tableFACEBLEACH", conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            gvfaceBleach.DataSource = dt;
            gvfaceBleach.DataBind();


        }

        void showtableeight()
        {

            SqlCommand cmd = new SqlCommand("select * from tableBodyBleach", conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            gvbodybleach.DataSource = dt;
            gvbodybleach.DataBind();


        }


        void showtablenine()
        {

            SqlCommand cmd = new SqlCommand("select * from tableB_H_Remov", conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            gvBodyHairRem.DataSource = dt;
            gvBodyHairRem.DataBind();


        }

        void showtableten()
        {

            SqlCommand cmd = new SqlCommand("select * from tableNailCare", conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            gvnaicareS.DataSource = dt;
            gvnaicareS.DataBind();


        }

        void showtable11()
        {

            SqlCommand cmd = new SqlCommand("select * from tableProducts", conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            gvproducts.DataSource = dt;
            gvproducts.DataBind();


        }


        protected void btnAddtoCart_Click(object sender, EventArgs e)
        {
            //lblname.Text = txtboxCustomerN.Text;          
            string empidstr = string.Empty;
            string empnamestr = string.Empty;
            string sprice = string.Empty;         
            double grandtotal = 0;
            

            //gv1

            foreach (GridViewRow gridrows in gvHairService.Rows)

            {
                CheckBox chkbox = (CheckBox)gridrows.FindControl("cbs");
                if (chkbox != null && chkbox.Checked == true)
                {

                    empidstr += gvHairService.DataKeys[gridrows.RowIndex].Value.ToString() + ',';
                    empnamestr += ((Label)gridrows.FindControl("lblnameS1")).Text.ToString() + ',';
                    sprice += ((Label)gridrows.FindControl("lblpriceS1")).Text.ToString() + ',';
                   // price += Int32.Parse(((Label)gridrows.FindControl("lblpriceS1")).Text.ToString());                                     //empnamestr += gridrows.Cells[2].Text + ',';
                   grandtotal += Int32.Parse(((Label)gridrows.FindControl("lblpriceS1")).Text.ToString());
                }
                gridrows.CssClass = "lnknew";
            }
          //  grandtotal += price;
            //gv2
            foreach (GridViewRow gridrows in gvHairDye.Rows)
            {
                CheckBox chkbox = (CheckBox)gridrows.FindControl("cbSelect2");
                if (chkbox != null && chkbox.Checked == true)
                {
                    empidstr += gvHairDye.DataKeys[gridrows.RowIndex].Value.ToString() + ',';
                    empnamestr += ((Label)gridrows.FindControl("lblnameS2")).Text.ToString() + ',';
                    sprice += ((Label)gridrows.FindControl("lblpriceS2")).Text.ToString() + ',';
                    //price += Int32.Parse(((Label)gridrows.FindControl("lblpriceS2")).Text.ToString());                                     //empnamestr += gridrows.Cells[2].Text + ',';
                    grandtotal += Int32.Parse(((Label)gridrows.FindControl("lblpriceS2")).Text.ToString());

                }
                gridrows.CssClass = "lnknew";
            }
          //  grandtotal += price;

            //gv3

            foreach (GridViewRow gridrows in gvHairTreatment.Rows)

            {
                CheckBox chkbox = (CheckBox)gridrows.FindControl("cbSelect3");
                if (chkbox != null && chkbox.Checked == true)
                {
                    empidstr += gvHairTreatment.DataKeys[gridrows.RowIndex].Value.ToString() + ',';
                    empnamestr += ((Label)gridrows.FindControl("lblnameS3")).Text.ToString() + ',';
                    sprice += ((Label)gridrows.FindControl("lblpriceS3")).Text.ToString() + ',';
                    //price += Int32.Parse(((Label)gridrows.FindControl("lblpriceS2")).Text.ToString());                                     //empnamestr += gridrows.Cells[2].Text + ',';
                    grandtotal += Int32.Parse(((Label)gridrows.FindControl("lblpriceS3")).Text.ToString());
                    
                }
                gridrows.CssClass = "lnknew";
            }

            //gv4
            foreach (GridViewRow gridrows in gvFacialService.Rows)

            {
                CheckBox chkbox = (CheckBox)gridrows.FindControl("cbSelect4");
                if (chkbox != null && chkbox.Checked == true)
                {
                    empidstr += gvFacialService.DataKeys[gridrows.RowIndex].Value.ToString() + ',';
                    empnamestr += ((Label)gridrows.FindControl("lblnameS4")).Text.ToString() + ',';
                    //     price += ((Label)gridrows.FindControl("lblpriceS4")).Text.ToString() + ',';
                    sprice += ((Label)gridrows.FindControl("lblpriceS4")).Text.ToString() + ',';
                    //price += Int32.Parse(((Label)gridrows.FindControl("lblpriceS2")).Text.ToString());                                     //empnamestr += gridrows.Cells[2].Text + ',';
                    grandtotal += Int32.Parse(((Label)gridrows.FindControl("lblpriceS4")).Text.ToString());


                }
                gridrows.CssClass = "lnknew";
            }

            //gv5
            foreach (GridViewRow gridrows in gvHennaService.Rows)

            {
                CheckBox chkbox = (CheckBox)gridrows.FindControl("cbSelect5");
                if (chkbox != null && chkbox.Checked == true)
                {
                    empidstr += gvHennaService.DataKeys[gridrows.RowIndex].Value.ToString() + ',';
                    empnamestr += ((Label)gridrows.FindControl("lblnameS5")).Text.ToString() + ',';
                    //     price += ((Label)gridrows.FindControl("lblpriceS5")).Text.ToString() + ',';
                    sprice += ((Label)gridrows.FindControl("lblpriceS5")).Text.ToString() + ',';
                    //price += Int32.Parse(((Label)gridrows.FindControl("lblpriceS2")).Text.ToString());                                     //empnamestr += gridrows.Cells[2].Text + ',';
                    grandtotal += Int32.Parse(((Label)gridrows.FindControl("lblpriceS5")).Text.ToString());

                    
                }
                gridrows.CssClass = "lnknew";
            }

            //gv6
            foreach (GridViewRow gridrows in gvfacehairRem.Rows)

            {
                CheckBox chkbox = (CheckBox)gridrows.FindControl("cbSelect6");
                if (chkbox != null && chkbox.Checked == true)
                {
                    empidstr += gvfacehairRem.DataKeys[gridrows.RowIndex].Value.ToString() + ',';
                    empnamestr += ((Label)gridrows.FindControl("lblnameS6")).Text.ToString() + ',';
                    //     price += ((Label)gridrows.FindControl("lblpriceS6")).Text.ToString() + ',';
                    sprice += ((Label)gridrows.FindControl("lblpriceS6")).Text.ToString() + ',';
                    //price += Int32.Parse(((Label)gridrows.FindControl("lblpriceS2")).Text.ToString());                                     //empnamestr += gridrows.Cells[2].Text + ',';
                    grandtotal += Int32.Parse(((Label)gridrows.FindControl("lblpriceS6")).Text.ToString());

                   
                }
                gridrows.CssClass = "lnknew";
            }

            //gv7
            foreach (GridViewRow gridrows in gvfaceBleach.Rows)

            {
                CheckBox chkbox = (CheckBox)gridrows.FindControl("cbSelect7");
                if (chkbox != null && chkbox.Checked == true)
                {
                    empidstr += gvfaceBleach.DataKeys[gridrows.RowIndex].Value.ToString() + ',';
                    empnamestr += ((Label)gridrows.FindControl("lblnameS7")).Text.ToString() + ',';
                    //   price += ((Label)gridrows.FindControl("lblpriceS7")).Text.ToString() + ',';
                    sprice += ((Label)gridrows.FindControl("lblpriceS7")).Text.ToString() + ',';
                    //price += Int32.Parse(((Label)gridrows.FindControl("lblpriceS2")).Text.ToString());                                     //empnamestr += gridrows.Cells[2].Text + ',';
                    grandtotal += Int32.Parse(((Label)gridrows.FindControl("lblpriceS7")).Text.ToString());


                }
                gridrows.CssClass = "lnknew";
            }

            //gv8
            foreach (GridViewRow gridrows in gvbodybleach.Rows)

            {
                CheckBox chkbox = (CheckBox)gridrows.FindControl("cbSelect8");
                if (chkbox != null && chkbox.Checked == true)
                {
                    empidstr += gvbodybleach.DataKeys[gridrows.RowIndex].Value.ToString() + ',';
                    empnamestr += ((Label)gridrows.FindControl("lblnameS8")).Text.ToString() + ',';
                    //  price += ((Label)gridrows.FindControl("lblpriceS8")).Text.ToString() + ',';
                    sprice += ((Label)gridrows.FindControl("lblpriceS8")).Text.ToString() + ',';
                    //price += Int32.Parse(((Label)gridrows.FindControl("lblpriceS2")).Text.ToString());                                     //empnamestr += gridrows.Cells[2].Text + ',';
                    grandtotal += Int32.Parse(((Label)gridrows.FindControl("lblpriceS8")).Text.ToString());
                  
                }
                gridrows.CssClass = "lnknew";
            }

            //gv9
            foreach (GridViewRow gridrows in gvBodyHairRem.Rows)

            {
                CheckBox chkbox = (CheckBox)gridrows.FindControl("cbSelect9");
                if (chkbox != null && chkbox.Checked == true)
                {
                    empidstr += gvBodyHairRem.DataKeys[gridrows.RowIndex].Value.ToString() + ',';
                    empnamestr += ((Label)gridrows.FindControl("lblnameS9")).Text.ToString() + ',';
                    //  price += ((Label)gridrows.FindControl("lblpriceS9")).Text.ToString() + ',';

                    sprice += ((Label)gridrows.FindControl("lblpriceS9")).Text.ToString() + ',';
                    //price += Int32.Parse(((Label)gridrows.FindControl("lblpriceS2")).Text.ToString());                                     //empnamestr += gridrows.Cells[2].Text + ',';
                    grandtotal += Int32.Parse(((Label)gridrows.FindControl("lblpriceS9")).Text.ToString());
                   
                }
                gridrows.CssClass = "lnknew";
            }

            //gv10
            foreach (GridViewRow gridrows in gvnaicareS.Rows)

            {
                CheckBox chkbox = (CheckBox)gridrows.FindControl("cbSelect10");
                if (chkbox != null && chkbox.Checked == true)
                {
                    empidstr += gvnaicareS.DataKeys[gridrows.RowIndex].Value.ToString() + ',';
                    empnamestr += ((Label)gridrows.FindControl("lblnameS10")).Text.ToString() + ',';
                    //  price += ((Label)gridrows.FindControl("lblpriceS10")).Text.ToString() + ',';
                    sprice += ((Label)gridrows.FindControl("lblpriceS10")).Text.ToString() + ',';
                    //price += Int32.Parse(((Label)gridrows.FindControl("lblpriceS2")).Text.ToString());                                     //empnamestr += gridrows.Cells[2].Text + ',';
                    grandtotal += Int32.Parse(((Label)gridrows.FindControl("lblpriceS10")).Text.ToString());

                }
                gridrows.CssClass = "lnknew";
            }

            //gv11

            foreach (GridViewRow gridrows in gvproducts.Rows)

            {
                CheckBox chkbox = (CheckBox)gridrows.FindControl("cbSelect11");
                if (chkbox != null && chkbox.Checked == true)
                {
                    empidstr += gvproducts.DataKeys[gridrows.RowIndex].Value.ToString() + ',';
                    empnamestr += ((Label)gridrows.FindControl("lblnameS11")).Text.ToString() + ',';
                    sprice += ((Label)gridrows.FindControl("lblpriceS11")).Text.ToString() + ',';
                    // price += Int32.Parse(((Label)gridrows.FindControl("lblpriceS1")).Text.ToString());                                     //empnamestr += gridrows.Cells[2].Text + ',';
                    grandtotal += Int32.Parse(((Label)gridrows.FindControl("lblpriceS11")).Text.ToString());
                }
                gridrows.CssClass = "lnknew";
            }
            //gv ends






            lbl_dateshow.Text = DateTime.Now.ToLongDateString();
            System.Globalization.CultureInfo.CurrentCulture.ClearCachedData();
            //lbl_timeshow.Text = DateTime.Now.ToLongTimeString();
            //lbl_timeshow.Text = DateTime.ToUniversalTime();

            empidstr = empidstr.Trim(",".ToCharArray());
            empnamestr = empnamestr.Trim(",".ToCharArray());
            lblmsg.Text = /*"Customer Id: <b>" + empidstr + "</b><br/>"*/  "Product Name: <b>" + empnamestr + "</b><br/>" + "Price: <b>" + sprice + "</b><br/>" + "Total Amount: <b>" + grandtotal + "</b><br/>";
            lblnamemsg.Text = txtboxCustomerN.Text;

            //adding in database
            conn.Open();
            SqlCommand cmd = new SqlCommand("Insert into table_InvoiceOfProduct(name,price,time,date,productname)values(@prod1,@prod2,@prod3,@prod4,@prod5)", conn);
            cmd.Parameters.AddWithValue("@prod1", txtboxCustomerN.Text);
            cmd.Parameters.AddWithValue("@prod2", grandtotal.ToString());
            cmd.Parameters.AddWithValue("@prod3", lbl_timeshow.Text);
            cmd.Parameters.AddWithValue("@prod4", lbl_dateshow.Text);          
            cmd.Parameters.AddWithValue("@prod5", empnamestr.ToString());   
           
            cmd.ExecuteNonQuery();
            conn.Close();



        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            //gv1
            foreach (GridViewRow gridrows in gvHairService.Rows)

            {
                CheckBox chkbox = (CheckBox)gridrows.FindControl("cbs");
                if (chkbox != null && chkbox.Checked == true)
                {
                    chkbox.Checked = false;       
                }
            }
            //gv2
            foreach (GridViewRow gridrows in gvHairDye.Rows)
            {
                CheckBox chkbox = (CheckBox)gridrows.FindControl("cbSelect2");
                if (chkbox != null && chkbox.Checked == true)
                {
                    chkbox.Checked = false;
                }
            }
            //gv3
            foreach (GridViewRow gridrows in gvHairTreatment.Rows)

            {
                CheckBox chkbox = (CheckBox)gridrows.FindControl("cbSelect3");
                if (chkbox != null && chkbox.Checked == true)
                {
                    chkbox.Checked = false;
                }
            }
            //gv4
            foreach (GridViewRow gridrows in gvFacialService.Rows)

            {
                CheckBox chkbox = (CheckBox)gridrows.FindControl("cbSelect4");
                if (chkbox != null && chkbox.Checked == true)
                {
                    chkbox.Checked = false;

                }
            }
            //gv5
            foreach (GridViewRow gridrows in gvHennaService.Rows)

            {
                CheckBox chkbox = (CheckBox)gridrows.FindControl("cbSelect5");
                if (chkbox != null && chkbox.Checked == true)
                {

                    chkbox.Checked = false;

                }
            }
            //gv6
            foreach (GridViewRow gridrows in gvfacehairRem.Rows)

            {
                CheckBox chkbox = (CheckBox)gridrows.FindControl("cbSelect6");
                if (chkbox != null && chkbox.Checked == true)
                {
                    chkbox.Checked = false;


                }
            }
            //gv7
            foreach (GridViewRow gridrows in gvfaceBleach.Rows)

            {
                CheckBox chkbox = (CheckBox)gridrows.FindControl("cbSelect7");
                if (chkbox != null && chkbox.Checked == true)
                {
                    chkbox.Checked = false;


                }
            }
            //gv8
            foreach (GridViewRow gridrows in gvbodybleach.Rows)

            {
                CheckBox chkbox = (CheckBox)gridrows.FindControl("cbSelect8");
                if (chkbox != null && chkbox.Checked == true)
                {
                    chkbox.Checked = false;

                }
            }
            //gv9
            foreach (GridViewRow gridrows in gvBodyHairRem.Rows)

            {
                CheckBox chkbox = (CheckBox)gridrows.FindControl("cbSelect9");
                if (chkbox != null && chkbox.Checked == true)
                {

                    chkbox.Checked = false;

                }
            }
            //gv10
            foreach (GridViewRow gridrows in gvnaicareS.Rows)

            {
                CheckBox chkbox = (CheckBox)gridrows.FindControl("cbSelect10");
                if (chkbox != null && chkbox.Checked == true)
                {
                    chkbox.Checked = false;

                }
            }
            //gv11

            foreach (GridViewRow gridrows in gvnaicareS.Rows)

            {
                CheckBox chkbox = (CheckBox)gridrows.FindControl("cbSelect11");
                if (chkbox != null && chkbox.Checked == true)
                {
                    chkbox.Checked = false;

                }
            }

            lbl_dateshow.Text = null;
            lbl_timeshow.Text = null;
            empidstr = null;
            empnamestr = null;
            lblmsg.Text = null;
            lblnamemsg.Text = null;
            txtboxCustomerN.Text = null;
        }
    }
}