using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insurrance_Application_Proj.Customers
{
    public partial class Customer : System.Web.UI.Page
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
                    RegHospitalListView.Visible = true;
                    TruckTreatmentListView.Visible = false;
                    InsurranceTypeListView.Visible = false;


                }

                if (TabContainer1.ActiveTabIndex == 1)
                {
                    RegHospitalListView.Visible = false;
                    TruckTreatmentListView.Visible = true;
                    InsurranceTypeListView.Visible = false;

                }

                if (TabContainer1.ActiveTabIndex == 2)
                {
                    RegHospitalListView.Visible = false;
                    TruckTreatmentListView.Visible = false;
                    InsurranceTypeListView.Visible = true;

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
