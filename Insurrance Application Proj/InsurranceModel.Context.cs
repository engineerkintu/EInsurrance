﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class InsurranceDatabaseEntities : DbContext
    {
        public InsurranceDatabaseEntities()
            : base("name=InsurranceDatabaseEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<ClearInsurrance> ClearInsurrances { get; set; }
        public virtual DbSet<Funder> Funders { get; set; }
        public virtual DbSet<Insurrance> Insurrances { get; set; }
        public virtual DbSet<PayHospital> PayHospitals { get; set; }
        public virtual DbSet<RegCustomer> RegCustomers { get; set; }
        public virtual DbSet<RegHospital> RegHospitals { get; set; }
        public virtual DbSet<TreatCustomer> TreatCustomers { get; set; }
    }
}
