using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace AnkietaMarty.WebUI.Models
{
    public class QuestionViewModel
    {
        public QuestionViewModel()
        {
            this.AvalivableAnswers = new List<SelectListItem>();
        }

        [Required]
        public int QuestionId { get; set; }
        public int Number { get; set; }
        public string Text { get; set; }
        public bool WithAnswerText { get; set; }
        public string AnswerText { get; set; }

        [Required]
        public int SelectedAnswerId { get; set; }
        public List<SelectListItem> AvalivableAnswers { get; set; }
    }
}