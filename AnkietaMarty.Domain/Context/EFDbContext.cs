using AnkietaMarty.Domain.Entities;
using System.Data.Entity;

namespace AnkietaMarty.Domain.Context
{
    public class EFDbContext : DbContext
    {
        public DbSet<Question> Questions { get; set; }
        public DbSet<AvalivableAnswer> AvalivableAnswers { get; set; }
        public DbSet<Answer> Answers { get; set; }
        public DbSet<User> Users { get; set; }
        public DbSet<UserSex> UserSexes { get; set; }
        public DbSet<Major> Majors { get; set; }
        public DbSet<StudyYear> StudyYears { get; set; }
    }
}