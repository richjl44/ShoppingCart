using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace ShoppingCart.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string LoginID = GetApplicationSettings("AdminLoginID");
            string Password = GetApplicationSettings("AdminPassword");

            if(txtLoginID.Text == LoginID && txtPassword.Text == Password)
            {
                Session["ShoppingCartAdmin"] = "ShoppingCartAdmin";
                Response.Redirect("~/Admin/AddNewProducts.aspx");

            }

            lblAlert.Text = "Incorrect Login/Password";



        }


        protected static string GetApplicationSettings(string sKey)
        {
            string sValue = null;
            System.Configuration.Configuration rootWebConfig =
               System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/ShoppingCart");
            //check if the AppSettings section has items
            if (rootWebConfig.AppSettings.Settings.Count > 0)
            {
                sValue = rootWebConfig.AppSettings.Settings[sKey].Value;
            }
            return sValue;
        }



    }
}