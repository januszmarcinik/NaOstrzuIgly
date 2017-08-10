namespace AnkietaMarty.Domain.Entities
{
    public class Answer
    {
        public int AnswerId { get; set; }
        public int QuestionId { get; set; }
        public int AvalivableAnswerId { get; set; }
        public string AnswerText { get; set; }
        public int UserId { get; set; }
    }
}