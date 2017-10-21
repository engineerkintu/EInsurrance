using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insurrance_Application_Proj.Sponsors
{
    public partial class Sponsors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                TabContainer1_ActiveTabChanged(TabContainer1, null);
            }
        }

        protected void TabContainer1_ActiveTabChanged(object sender, EventArgs e)
        {
            try
            {
                if (TabContainer1.ActiveTabIndex == 0)
                {
                    RegHospitalListView.Visible = false;
                    TruckTreatmentListView.Visible = false;
                    CustomerGridView.Visible = true;


                }

                if (TabContainer1.ActiveTabIndex == 1)
                {
                    RegHospitalListView.Visible = false;
                    TruckTreatmentListView.Visible = true;
                    CustomerGridView.Visible = false;

                }

                if (TabContainer1.ActiveTabIndex == 2)
                {
                    RegHospitalListView.Visible = true;
                    TruckTreatmentListView.Visible = false;
                    CustomerGridView.Visible = false;

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