using System.Collections.Generic;

namespace AnkietaMarty.Domain.Entities
{
    public class Question
    {
        public Question()
        {
            this.AvalivableAnswers = new List<AvalivableAnswer>();
        }

        public int QuestionId { get; set; }
        public int Number { get; set; }
        public string Text { get; set; }
        public bool WithAnswerText { get; set; }
        public string AnswerText { get; set; }

        public virtual ICollection<AvalivableAnswer> AvalivableAnswers { get; set; }
    }
}