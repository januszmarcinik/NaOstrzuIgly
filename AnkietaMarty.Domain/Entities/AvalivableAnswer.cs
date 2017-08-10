namespace AnkietaMarty.Domain.Entities
{
    public class AvalivableAnswer
    {
        public int AvalivableAnswerId { get; set; }
        public int QuestionId { get; set; }
        public string Text { get; set; }
    }
}