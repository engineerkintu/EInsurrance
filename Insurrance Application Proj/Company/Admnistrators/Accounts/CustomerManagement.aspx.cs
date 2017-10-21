using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Insurrance_Application_Proj;

namespace Insurrance_Application_Proj.Company.Admnistrators.Accounts
{
    public partial class CustomerManagement : System.Web.UI.Page
    {
        private DropDownList insurranceTypeDropDownList;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                TabContainer_ActiveTabChanged(TabContainer1, null);
            }

        }

        protected void Page_Init(object sender, EventArgs e)
        {
            RegCustomerDetailsView.EnableDynamicData(typeof(RegCustomer));
            EditRegCustomersGridView.EnableDynamicData(typeof(RegCustomer));
            RegFunderDetailsView.EnableDynamicData(typeof(Funder));
        }
        protected void InsurranceTypeDropDownList_Init(object sender, EventArgs e)
        {
            insurranceTypeDropDownList = sender as DropDownList;

        }

        protected void InsurranceClearanceDetailsView_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            var insurranceTypeID = Convert.ToInt32(insurranceTypeDropDownList.SelectedValue);
            e.Values["Insurrance"] = insurranceTypeID;

           
        }
       

      
        protected void TabContainer_ActiveTabChanged(object sender, EventArgs e)
        {
            try
            {
                if (TabContainer1.ActiveTabIndex == 0)
                {
                    RegCustomerDetailsView.Visible = true;
                    RegFunderDetailsView.Visible = false;
                    InsurranceClearanceDetailsView.Visible = false;
                    EditRegCustomersGridView.Visible = false;

                }

                if (TabContainer1.ActiveTabIndex == 1)
                {
                    RegFunderDetailsView.Visible = false;
                    RegCustomerDetailsView.Visible = false;
                    InsurranceClearanceDetailsView.Visible = false;
                    RegInsurranceTypeDetailsView.Visible = false;
                    EditRegCustomersGridView.Visible = true;

                }

                if (TabContainer1.ActiveTabIndex == 2)
                {
                    RegFunderDetailsView.Visible = true;
                    RegCustomerDetailsView.Visible = false;
                    InsurranceClearanceDetailsView.Visible = false;
                    EditRegCustomersGridView.Visible = false;
                    RegInsurranceTypeDetailsView.Visible = false;
                }

                if (TabContainer1.ActiveTabIndex == 3)
                {
                    RegFunderDetailsView.Visible = false;
                    RegCustomerDetailsView.Visible = false;
                    InsurranceClearanceDetailsView.Visible = true;
                    EditRegCustomersGridView.Visible = false;
                    RegInsurranceTypeDetailsView.Visible = false;
                }

                if (TabContainer1.ActiveTabIndex == 4)
                {
                    RegFunderDetailsView.Visible = false;
                    RegCustomerDetailsView.Visible = false;
                    InsurranceClearanceDetailsView.Visible = false;
                    EditRegCustomersGridView.Visible = false;
                    RegInsurranceTypeDetailsView.Visible = true;
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

        protected void RegCustomerDetailsView_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void RegCustomerDetailsView_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
             
        }

        protected void IdTextBox_TextChanged(object sender, EventArgs e)
        {
           

        }

        private bool textContainsUnallowedCharacter(string T, char[] UnallowedCharacters)
        {
            for (int i = 0; i < UnallowedCharacters.Length; i++)
                if (T.Contains(UnallowedCharacters[i]))
                    return true;

            return false;
        }

        protected void TextBox278_TextChanged(object sender, EventArgs e)
        {

        }
       

        

        protected void ONameTextBox_TextChanged(object sender, EventArgs e)
        {
            TextBox T = (TextBox)sender;
            try
            {
                //Not Allowing Numbers
                char[] UnallowedCharacters = { '0', '1',
                                           '2', '3', 
                                           '4', '5',
                                           '6', '7',
                                           '8', '9'};

                if (textContainsUnallowedCharacter(T.Text, UnallowedCharacters))
                {
                    // int CursorIndex = T.SelectionStart - 1;
                    // T.Text = T.Text.Remove(CursorIndex, 1);
                   // ErrorLabel.Visible = true;
                   // ONameLabel1.Visible = true;
                   // ONameLabel2.Visible = true;
                    

                    //Align Cursor to same index
                    //T.SelectionStart = CursorIndex;
                    // T.SelectionLength = 0;
                }
            }
            catch (Exception) { }
        }

        protected void SnameTextBox_TextChanged(object sender, EventArgs e)
        {
            TextBox T = (TextBox)sender;
            try
            {
                //Not Allowing Numbers
                char[] UnallowedCharacters = { '0', '1',
                                           '2', '3', 
                                           '4', '5',
                                           '6', '7',
                                           '8', '9'};

                if (textContainsUnallowedCharacter(T.Text, UnallowedCharacters))
                {
                    // int CursorIndex = T.SelectionStart - 1;
                    // T.Text = T.Text.Remove(CursorIndex, 1);

                    //ErrorLabel.Visible = true;
                    //SNameLabel1.Visible = true;
                  //  SNameLabel2.Visible = true;
                    //Align Cursor to same index
                    //T.SelectionStart = CursorIndex;
                    // T.SelectionLength = 0;
                }
            }
            catch (Exception) { }
        }

        protected void FNameTextBox_TextChanged(object sender, EventArgs e)
        {
            TextBox T = (TextBox)sender;
            try
            {
                //Not Allowing Numbers
                char[] UnallowedCharacters = { '0', '1',
                                           '2', '3', 
                                           '4', '5',
                                           '6', '7',
                                           '8', '9'};

                if (textContainsUnallowedCharacter(T.Text, UnallowedCharacters))
                {
                   
                }
            }
            catch (Exception) { }
        }

        protected void IdTextBox_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void IDCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            TextBox customerNumber = (TextBox)RegCustomerDetailsView.FindControl("IdTextBox");
            long kl = CountCharsWithoutSpace(customerNumber.Text);
            if (kl != 13)
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

        protected void FNameCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            TextBox fName = (TextBox)RegCustomerDetailsView.FindControl("FNameTextBox");
            try
            {
                //Not Allowing Numbers
                char[] UnallowedCharacters = { '0', '1',
                                           '2', '3', 
                                           '4', '5',
                                           '6', '7',
                                           '8', '9', '!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '-', '_', '+', '='};

                if (textContainsUnallowedCharacter(fName.Text, UnallowedCharacters))
                {
                    args.IsValid = false;
                }
                else
                {
                    args.IsValid = true;
                }
            }
            catch (Exception) { }
        }

        protected void SnameCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            TextBox sName = (TextBox)RegCustomerDetailsView.FindControl("SnameTextBox");
            try
            {
                //Not Allowing Numbers
                char[] UnallowedCharacters = { '0', '1',
                                           '2', '3', 
                                           '4', '5',
                                           '6', '7',
                                           '8', '9', '!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '-', '_', '+', '='};

                if (textContainsUnallowedCharacter(sName.Text, UnallowedCharacters))
                {
                    args.IsValid = false;
                }
                else
                {
                    args.IsValid = true;
                }
            }
            catch (Exception) { }
        }

        protected void ONameCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            TextBox oName = (TextBox)RegCustomerDetailsView.FindControl("ONameTextBox");
            try
            {
                //Not Allowing Numbers
                char[] UnallowedCharacters = { '0', '1',
                                           '2', '3', 
                                           '4', '5',
                                           '6', '7',
                                           '8', '9', '!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '-', '_', '+', '='};

                if (textContainsUnallowedCharacter(oName.Text, UnallowedCharacters))
                {
                    args.IsValid = false; 
                }
                else
                {
                    args.IsValid = true;
                }
            }
            catch (Exception) { }
        }

        protected void FNameNumberCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            TextBox customerNumber = (TextBox)RegCustomerDetailsView.FindControl("FNameTextBox");
            long kl = CountCharsWithoutSpace(customerNumber.Text);
            if (kl > 20)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

        protected void SnameNumberCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            TextBox customerNumber = (TextBox)RegCustomerDetailsView.FindControl("SnameTextBox");
            long kl = CountCharsWithoutSpace(customerNumber.Text);
            if (kl > 20)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

        protected void ONameNumberCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            TextBox customerNumber = (TextBox)RegCustomerDetailsView.FindControl("ONameTextBox");
            long kl = CountCharsWithoutSpace(customerNumber.Text);
            if (kl > 20)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

        protected void MobileCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            TextBox customerNumber = (TextBox)RegCustomerDetailsView.FindControl("TextBox278");
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

        protected void MobileNoCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
           
        }

       

        protected void SponsorNameCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            TextBox sponsorNumber = (TextBox)RegFunderDetailsView.FindControl("NameTextBox");
            long kl = CountCharsWithoutSpace(sponsorNumber.Text);
            if (kl > 50)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

        protected void YearCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DropDownList year1 = (DropDownList)RegCustomerDetailsView.FindControl("YearDropDownList4");
            DropDownList year2 = (DropDownList)RegCustomerDetailsView.FindControl("YearDropDownList2");
            var h1 = Convert.ToInt32(year1.SelectedValue);
            var h2 = Convert.ToInt32(year2.SelectedValue);

           if ((h1 - h2) < 2)
           {
               args.IsValid = false;
           }
            else
           {
               args.IsValid = true;
           }

           
        }

        protected void IdCustomValidator_ServerValidate1(object source, ServerValidateEventArgs args)
        {
            TextBox customerNumber = (TextBox)RegFunderDetailsView.FindControl("IdTextBox");
            long kl = CountCharsWithoutSpace(customerNumber.Text);
            if (kl != 13)
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
            TextBox customerNumber = (TextBox)RegFunderDetailsView.FindControl("TelephoneTextBox");
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
    }
}