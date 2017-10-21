using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insurrance_Application_Proj.Hospital
{
    public partial class TreatmentBill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomerCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
           // string cmdText = "SELECT COUNT(*) FROM RegCustomer WHERE Id = @Id";


          
        }

        protected void PatientsDetailsView_Load(object sender, EventArgs e)
        {
           
        }

       

        protected void SearchButton_DataBinding(object sender, EventArgs e)
        {
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TreatmentDetailsView.Visible = true;
            
           
           
        }

        protected void TreatmentDetailsView_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            TreatmentDetailsView.Visible = false;
            PatientsDetailsView.Visible = false;
            ConfirmLabel.Visible = true;
        }

        protected void TreatmentTabContainer_ActiveTabChanged(object sender, EventArgs e)
        {
            try
            {
                if (TreatmentTabContainer.ActiveTabIndex == 0)
                {
                    TreatmentDetailsView.Visible = false;
                    
                    PatientTreatmentListView.Visible = false;
                                    

                }

                if (TreatmentTabContainer.ActiveTabIndex == 1)
                {
                    PatientsDetailsView.Visible = false;

                    
                    PatientTreatmentListView.Visible = true;
                   

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

        protected void TreatmentDetailsView_Load(object sender, EventArgs e)
        {
            
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            PatientsDetailsView.Visible = true;
            ConfirmLabel.Visible = false;
        }


        
    }
}