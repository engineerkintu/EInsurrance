using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insurrance_Application_Proj.Company.Admnistrators
{
    public partial class Customers : System.Web.UI.Page
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
           
        }

        protected void TabContainer_ActiveTabChanged(object sender, EventArgs e)
        {
            try
            {
                if (TabContainer1.ActiveTabIndex == 0)
                {
                    EditRegCustomersGridView.Visible = true;
                    ClearedInsurranceGridView.Visible = false;


                }

                if (TabContainer1.ActiveTabIndex == 1)
                {


                }

                if (TabContainer1.ActiveTabIndex == 2)
                {
                    EditRegCustomersGridView.Visible = false;
                    ClearedInsurranceGridView.Visible = true;
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