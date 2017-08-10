namespace AnkietaMarty.Domain.Entities
{
    public class User
    {
        public int UserId { get; set; }

        public int UserSexId { get; set; }
        public string UserSex { get; set; }

        public int MajorId { get; set; }
        public string Major { get; set; }

        public int StudyYearId { get; set; }
        public string StudyYear { get; set; }
    }
}