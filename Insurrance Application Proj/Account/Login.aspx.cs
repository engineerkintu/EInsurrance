using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Insurrance_Application_Proj.Models;
using System.Web.Security;

namespace Insurrance_Application_Proj.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Validate the user password
              
            }
            if(Membership.ValidateUser(UserName.Text, Password.Text))
            
                FormsAuthentication.RedirectFromLoginPage(UserName.Text, RememberMe.Checked);
                else
                    FailureText.Text = "Invalid username or password.";
                    ErrorMessage.Visible = true;
            
        }
    }
}