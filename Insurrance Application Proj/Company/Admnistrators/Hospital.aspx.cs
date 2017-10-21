using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insurrance_Application_Proj.Company.Admnistrators.Accounts
{
    public partial class Hospital : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                TabContainer_ActiveTabChanged(TabContainer1, null);
            }


        }

        protected void TabContainer_ActiveTabChanged(object sender, EventArgs e)
        {
            try
            {
                if (TabContainer1.ActiveTabIndex == 0)
                {
                    HospitalBillsGridView.Visible = true;
                    HospitalBillsGridView.Visible = false;
                    PaymentGridView.Visible = false;
                    


                }

                if (TabContainer1.ActiveTabIndex == 1)
                {
                    HospitalBillsGridView.Visible = false;
                    HospitalBillsGridView.Visible = true;
                    PaymentGridView.Visible = false;
                }

                if (TabContainer1.ActiveTabIndex == 2)
                {
                    HospitalBillsGridView.Visible = false;
                    HospitalBillsGridView.Visible = false;
                    PaymentGridView.Visible = true;
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
    }
}