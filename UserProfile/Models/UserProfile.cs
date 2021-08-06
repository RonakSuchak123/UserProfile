using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace UserProfile.Models
{
    public class UserProfileData
    {

        public int UserId { get; set; }
        [Required(ErrorMessage = "Name is required")]
        [StringLength(10)]
        public string Name { get; set; }
        [Required(ErrorMessage = "Age is required")]
        public Nullable<int> Age { get; set; }
        [Required(ErrorMessage = "Gender is required")]
        public string Gender { get; set; }
        [Required(ErrorMessage = "Address is required")]
        public string Address { get; set; }
        [Required(ErrorMessage = "Country is required")]
        public string Country { get; set; }
        [Required(ErrorMessage = "State is required")]
        public string State { get; set; }
        [Required(ErrorMessage = "City is required")]
        public string City { get; set; }
        public string CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }

        public UserProfileDetailData UserProfileDetails { get; set; }
    }

    public class UserProfileDetailData
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public string ExperianceCompany { get; set; }
        public string CompanyName { get; set; }
        public string Designation { get; set; }
        public string CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
    }
}