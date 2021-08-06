using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using UserProfile;
using UserProfile.Models;

namespace UserProfile.Controllers
{
    public class HomeController : Controller
    {
        private PersonalInfoEntities1 db = new PersonalInfoEntities1();
        public ActionResult Index()
        {
            var userProfileHeaders = db.UserProfileHeaders;
            return View(userProfileHeaders.ToList());
        }

        public ActionResult Create()
        {
            UserProfileData upData = new UserProfileData();
            return View(upData);
        }


        [HttpPost]
        public ActionResult Create(UserProfileData userProfileHeader)
        {
            if (ModelState.IsValid)
            {
                var header = new UserProfileHeader
                {
                    Address = userProfileHeader.Address,
                    Name = userProfileHeader.Name,
                    Age = userProfileHeader.Age,
                    Country = userProfileHeader.Country,
                    State = userProfileHeader.State,
                    City = userProfileHeader.City,
                    Gender = userProfileHeader.Gender

                };



                db.UserProfileHeaders.Add(header);
                db.SaveChanges();
                if (header.UserId > 0)
                {
                    if (userProfileHeader.UserProfileDetails.ExperianceCompany != null || userProfileHeader.UserProfileDetails.CompanyName != null || userProfileHeader.UserProfileDetails.Designation != null)
                    {
                        var detail = new UserProfileDetail
                        {
                            UserId = header.UserId,
                            ExperianceCompany = userProfileHeader.UserProfileDetails.ExperianceCompany,
                            CompanyName = userProfileHeader.UserProfileDetails.CompanyName,
                            Designation = userProfileHeader.UserProfileDetails.Designation
                        };
                        db.UserProfileDetails.Add(detail);
                        db.SaveChanges();
                    }
                    ViewBag.Success = "Inserted";

                }
                ModelState.Clear();
            }
            return View();
        }

        public JsonResult GetSearchingData(string SearchBy, string SearchValue)
        {
            List<UserProfileHeader> userList = new List<UserProfileHeader>();
            if (SearchBy == "ID")
            {
                try
                {
                    int Id = Convert.ToInt32(SearchValue);
                    userList = db.UserProfileHeaders.Where(x => x.UserId == Id || SearchValue == null).ToList();
                }
                catch (FormatException)
                {
                    Console.WriteLine("{0} Is Not A ID ", SearchValue);
                }
                return Json(userList, JsonRequestBehavior.AllowGet);
            }
            else
            {
                userList = db.UserProfileHeaders.Where(x => x.Name.StartsWith(SearchValue) || SearchValue == null).ToList();
                return Json(userList, JsonRequestBehavior.AllowGet);
            }
        }
    }
}