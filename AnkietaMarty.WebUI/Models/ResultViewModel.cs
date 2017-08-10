using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AnkietaMarty.WebUI.Models
{
    public class ResultViewModel
    {
        public ResultViewModel()
        {
            this.AnswersResults = new List<AnswerResultViewModel>();
        }

        public int QuestionNumber { get; set; }
        public string Question { get; set; }
        public List<AnswerResultViewModel> AnswersResults { get; set; }
    }

    public class AnswerResultViewModel
    {
        public int AvalivableAnswerId { get; set; }
        public string AvalivableAnswerText { get; set; }
        public int Quantity { get; set; }
        public decimal Percentage { get; set; }
    }
}