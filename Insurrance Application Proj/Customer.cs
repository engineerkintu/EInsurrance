using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Insurrance_Application_Proj
{
    [MetadataType(typeof(CustomerMetadata))]
    public class Customer
    {
        
    }
    public class CustomerMetadata
    {
        [StringLength(30, ErrorMessage = "First name must be 30 characters or less in length.")]
        [Required(ErrorMessage = "First name is required.")]
        public String FName { get; set; }

        [StringLength(30, ErrorMessage = "Surname name must be 30 characters or less in length.")]
        [Required(ErrorMessage = "Surname is required.")]
        public String Sname { get; set; }

        [StringLength(30, ErrorMessage = "Other name must be 30 characters or less in length.")]
        public String OName { get; set; }

        
    }
}