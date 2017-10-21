using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insurrance_Application_Proj.Company.Admnistrators.Accounts
{
    public partial class Hospital_Management : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                TabContainer_ActiveTabChanged(TabContainer1, null);
            }
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            RegHospitalDetailsView.EnableDynamicData(typeof(RegHospital));
            PayHospitalDetailsView.EnableDynamicData(typeof(PayHospital));
        }
        protected void TabContainer_ActiveTabChanged(object sender, EventArgs e)
        {
            try
            {
                if (TabContainer1.ActiveTabIndex == 0)
                {
                    RegHospitalDetailsView.Visible = true;
                    PayHospitalDetailsView.Visible = false;
                    ManageHospitalGridView.Visible = false;
                   

                }

                if (TabContainer1.ActiveTabIndex == 1)
                {
                    ManageHospitalGridView.Visible = true;
                    PayHospitalDetailsView.Visible = false ;
                    RegHospitalDetailsView.Visible = false;
                   

                }

                if (TabContainer1.ActiveTabIndex == 2)
                {
                    ManageHospitalGridView.Visible = false;
                    PayHospitalDetailsView.Visible = true;
                    RegHospitalDetailsView.Visible = false;
                }
            }

            catch
            {
                throw;
            }

            finally
            {

            }

        }

        protected void IDCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            TextBox customerNumber = (TextBox)RegHospitalDetailsView.FindControl("HospitalTextBox");
            long kl = CountCharsWithoutSpace(customerNumber.Text);
            if (kl != 12)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

        protected void NameCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            TextBox customerNumber = (TextBox)RegHospitalDetailsView.FindControl("NameTextBox");
            long kl = CountCharsWithoutSpace(customerNumber.Text);
            if (kl > 50)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

        protected void TelephoneCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            TextBox customerNumber = (TextBox)RegHospitalDetailsView.FindControl("TextBox6");
            long kl = CountCharsWithoutSpace(customerNumber.Text);
            if (kl > 10)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }
        private long CountCharsWithoutSpace(string strInput)
        {
            long intCount = 0;
            foreach (char ch in strInput)
            {
                if (!char.IsWhiteSpace(ch))
                {
                    intCount++;
                }
            }
            return intCount;
        }

        protected void AccountSizeCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            TextBox customerNumber = (TextBox)RegHospitalDetailsView.FindControl("AccountTextBox");
            long kl = CountCharsWithoutSpace(customerNumber.Text);
            if (kl != 12)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

        protected void BankCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            TextBox customerNumber = (TextBox)RegHospitalDetailsView.FindControl("BankTextBox");
            long kl = CountCharsWithoutSpace(customerNumber.Text);
            if (kl > 50)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

    }
}