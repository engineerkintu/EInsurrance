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
    
    public partial class Funder
    {
        public Funder()
        {
            this.ClearInsurrances = new HashSet<ClearInsurrance>();
        }
    
        public string Id { get; set; }
        public string Name { get; set; }
        public string Telephone { get; set; }
        public string Location { get; set; }
        public string OtherDetails { get; set; }
    
        public virtual ICollection<ClearInsurrance> ClearInsurrances { get; set; }
    }
}
