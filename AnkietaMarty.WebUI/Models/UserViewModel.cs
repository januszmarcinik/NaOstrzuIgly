using AnkietaMarty.Domain.Context;
using AnkietaMarty.Domain.Entities;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace AnkietaMarty.WebUI.Models
{
    public class UserViewModel
    {
        public int UserId { get; set; }

        [Display(Name = "Płeć")]
        public int UserSexId { get; set; }

        [Display(Name = "Jaki kierunek aktualnie Pani/Pan studiuje:")]
        public int MajorId { get; set; }

        [Display(Name = "Na którym roku studiów aktualnie Pan/Pani pobiera naukę:")]
        public int StudyYearId { get; set; }
        public List<Answer> Answers { get; set; }

        public List<SelectListItem> AllUserSex { get; set; }
        public List<SelectListItem> AllMajors { get; set; }
        public List<SelectListItem> AllStudyYears { get; set; }

        public UserViewModel()
        {
            this.Answers = new List<Answer>();

            var _service = new ApplicationService();

            this.AllUserSex = new List<SelectListItem>();
            foreach (var sex in _service.GetUserSexes())
            {
                this.AllUserSex.Add(new SelectListItem()
                {
                    Text = sex.Description,
                    Value = sex.UserSexId.ToString()
                });
            }

            this.AllStudyYears = new List<SelectListItem>();
            foreach (var studyYear in _service.GetStudyYears())
            {
                this.AllStudyYears.Add(new SelectListItem()
                {
                    Text = studyYear.Description,
                    Value = studyYear.StudyYearId.ToString()
                });
            }

            this.AllMajors = new List<SelectListItem>();
            foreach (var major in _service.GetMajors())
            {
                this.AllMajors.Add(new SelectListItem()
                {
                    Text = major.Description,
                    Value = major.MajorId.ToString()
                });
            }
        }
    }
}