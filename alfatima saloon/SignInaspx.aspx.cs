using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace al_fatima_saloon
{
    public partial class SignInaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        
        protected void signasEmployee(object sender, EventArgs e)
        {
            Response.Redirect("LoginasEmployees.aspx");
        }

       
        protected void signasAdmin(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}