//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Insurrance_Application_Proj
{
    using System;
    using System.Collections.Generic;
    
    public partial class RegCustomer
    {
        public RegCustomer()
        {
            this.ClearInsurrances = new HashSet<ClearInsurrance>();
            this.TreatCustomers = new HashSet<TreatCustomer>();
        }
    
        public string Id { get; set; }
        public string FName { get; set; }
        public string Sname { get; set; }
        public string OName { get; set; }
        public string Gender { get; set; }
        public Nullable<int> DOBDay { get; set; }
        public string DOBMonth { get; set; }
        public Nullable<int> DOBYear { get; set; }
        public Nullable<int> RegDay { get; set; }
        public string RegMonth { get; set; }
        public Nullable<int> RegYear { get; set; }
        public string District { get; set; }
        public string Mobile { get; set; }
        public string Email { get; set; }
        public byte[] Photo { get; set; }
    
        public virtual ICollection<ClearInsurrance> ClearInsurrances { get; set; }
        public virtual ICollection<TreatCustomer> TreatCustomers { get; set; }
    }
}