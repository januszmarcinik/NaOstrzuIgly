using AnkietaMarty.Domain.Entities;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

namespace AnkietaMarty.WebUI.Models
{
    public class QuestionaireViewModel
    {
        public QuestionaireViewModel()
        {
            this.User = new UserViewModel();
            this.Questions = new List<QuestionViewModel>();
        }

        public UserViewModel User { get; set; }
        public List<QuestionViewModel> Questions { get; set; }

        #region SetQuestions()
        public void SetQuestions(List<Question> questions, List<AvalivableAnswer> answers)
        {
            foreach (var question in questions)
            {
                var item = new QuestionViewModel();
                item.Number = question.Number;
                item.QuestionId = question.QuestionId;
                item.Text = question.Text;
                item.WithAnswerText = question.WithAnswerText;

                foreach (var answer in answers.Where(x => x.QuestionId == question.QuestionId))
                {
                    item.AvalivableAnswers.Add(new SelectListItem()
                    {
                        Value = answer.AvalivableAnswerId.ToString(),
                        Text = answer.Text,
                    });
                }

                this.Questions.Add(item);
            }
        }
        #endregion
    }
}