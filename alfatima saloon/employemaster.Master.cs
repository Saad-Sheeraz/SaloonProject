using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace al_fatima_saloon
{
    public partial class employemaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Logo()
        {
            Session["UserName"] = null;
            Response.Redirect("LoginasEmployees.aspx");

        }
    }
}