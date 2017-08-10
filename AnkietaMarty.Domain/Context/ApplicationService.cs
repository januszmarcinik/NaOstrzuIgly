using AnkietaMarty.Domain.Entities;
using AnkietaMarty.Domain.Queries;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

namespace AnkietaMarty.Domain.Context
{
    public class ApplicationService
    {
        #region TrySaveData()
        public bool TrySaveData(User user, List<Answer> answers)
        {
            using (var context = new EFDbContext())
            {
                var basicQuestionAnswered = answers.Where(x => x.QuestionId <= 7).All(x => x.AvalivableAnswerId > 0);

                if (basicQuestionAnswered)
                {
                    var avalivableAnswerId = answers[6].AvalivableAnswerId;
                    var selectedAnswer_6 = context.AvalivableAnswers.FirstOrDefault(x => x.AvalivableAnswerId == avalivableAnswerId);
                    if (selectedAnswer_6 != null && selectedAnswer_6.Text == "Nie")
                    {
                        answers[7].AvalivableAnswerId = 0;
                        answers[7].AnswerText = "";

                        answers[8].AvalivableAnswerId = 0;
                        answers[8].AnswerText = "";

                        answers[9].AvalivableAnswerId = 0;
                        answers[9].AnswerText = "";

                        answers[10].AvalivableAnswerId = 0;
                        answers[10].AnswerText = "";

                        answers[11].AvalivableAnswerId = 0;
                        answers[11].AnswerText = "";
                    }
                    else
                    {
                        if (answers[7].AvalivableAnswerId > 0 && answers[8].AvalivableAnswerId > 0 && answers[9].AvalivableAnswerId > 0)
                        {
                            avalivableAnswerId = answers[9].AvalivableAnswerId;
                            var selectedAnswer_9 = context.AvalivableAnswers.FirstOrDefault(x => x.AvalivableAnswerId == avalivableAnswerId);
                            if (selectedAnswer_9 != null && selectedAnswer_9.Text == "Tak, (komu?)")
                            {
                                answers[10].AvalivableAnswerId = 0;
                                answers[10].AnswerText = "";

                                if (answers[11].AvalivableAnswerId == 0)
                                {
                                    return false;
                                }
                            }
                            else
                            {
                                answers[11].AvalivableAnswerId = 0;
                                answers[11].AnswerText = "";

                                if (answers[10].AvalivableAnswerId == 0)
                                {
                                    return false;
                                }
                            }
                        }
                        else
                        {
                            return false;
                        }
                    }
                }
                else
                {
                    return false;
                }

                user.Major = context.Majors.FirstOrDefault(x => x.MajorId == user.MajorId).Description;
                user.StudyYear = context.StudyYears.FirstOrDefault(x => x.StudyYearId == user.StudyYearId).Description;
                user.UserSex = context.UserSexes.FirstOrDefault(x => x.UserSexId == user.UserSexId).Description;

                context.Users.Add(user);
                context.SaveChanges();

                foreach (var answer in answers)
                {
                    answer.UserId = user.UserId;
                }
                context.Answers.AddRange(answers);
                context.SaveChanges();

                return true;
            }
        }
        #endregion


        #region GetUsers()
        public List<User> GetUsers()
        {
            using (var context = new EFDbContext())
            {
                return context.Users.ToList();
            }
        }
        #endregion

        #region GetAnswers()
        public List<Answer> GetAnswers()
        {
            using (var context = new EFDbContext())
            {
                return context.Answers.ToList();
            }
        }
        #endregion


        #region GetQuestions()
        public List<Question> GetQuestions()
        {
            using (var context = new EFDbContext())
            {
                return context.Questions.ToList();
            }
        }
        #endregion

        #region GetAvalivableAnswers()
        public List<AvalivableAnswer> GetAvalivableAnswers()
        {
            using (var context = new EFDbContext())
            {
                return context.AvalivableAnswers.ToList();
            }
        }
        #endregion


        #region GetMajors()
        public List<Major> GetMajors()
        {
            using (var context = new EFDbContext())
            {
                return context.Majors.ToList();
            }
        }
        #endregion

        #region GetStudyYears()
        public List<StudyYear> GetStudyYears()
        {
            using (var context = new EFDbContext())
            {
                return context.StudyYears.ToList();
            }
        }
        #endregion

        #region GetUserSexes()
        public List<UserSex> GetUserSexes()
        {
            using (var context = new EFDbContext())
            {
                return context.UserSexes.ToList();
            }
        }
        #endregion


        #region RepairTenthQuestion()
        public void RepairTenthQuestion()
        {
            using (var context = new EFDbContext())
            {
                var answers = context.Answers;
                var usersIdList = context.Users.Select(x => x.UserId).Distinct().ToList();

                var list = new List<GroupAnswers>();
                foreach (var userId in usersIdList)
                {
                    list.Add(new GroupAnswers()
                    {
                        UserId = userId,
                        Answers = answers.Where(x => x.UserId == userId)
                    });
                }

                foreach (var group in list)
                {
                    var answer_10 = group.Answers.FirstOrDefault(x => x.QuestionId == 10);
                    var answer_12 = group.Answers.FirstOrDefault(x => x.QuestionId == 12);

                    if (answer_10.AvalivableAnswerId == 74)
                    {
                        context.Answers.FirstOrDefault(x => x.AnswerId == answer_12.AnswerId).AvalivableAnswerId = 0;
                    }
                }

                context.SaveChanges();
            }
        }
        #endregion

        #region RepairDatabase()
        public void RepairDatabase()
        {
            using (var context = new EFDbContext())
            {
                var answers = context.Answers;

                int userId = 3;
                foreach (var answer in answers)
                {
                    if (answer.QuestionId == 1)
                    {
                        userId++;
                    }

                    answer.UserId = userId;
                }

                context.Answers = answers;
                context.SaveChanges();
            }
        }
        #endregion


        #region GetResults()
        public List<Result> GetResults()
        {
            var results = new List<Result>();

            using (var context = new EFDbContext())
            {
                var users = context.Users.AsEnumerable();
                var answers = context.Answers.AsEnumerable();

                var usersCount = users.Count();
                var answersCount = answers.Where(x => x.QuestionId == 1).Count();

                results.Add(new Result()
                {
                    GroupName = string.Format("Ilość osób: {0}", users.Count()),
                    TotalQuantity = usersCount,
                    Items = new List<ResultItem>()
                    {
                        new ResultItem() { Name = "Kobiety", Quantity = users.Where(x => x.UserSexId == 2).Count() },
                        new ResultItem() { Name = "Mężczyźni", Quantity = users.Where(x => x.UserSexId == 1).Count() }
                    }
                });

                results.Add(new Result()
                {
                    TotalQuantity = usersCount,
                    Items = new List<ResultItem>()
                    {
                        new ResultItem() { Name = "Medycyna", Quantity = users.Where(x => x.MajorId == 1).Count() },
                        new ResultItem() { Name = "Pielęgniarstwo / położnictwo", Quantity = users.Where(x => x.MajorId == 2).Count() },
                        new ResultItem() { Name = "Ratownictwo medyczne", Quantity = users.Where(x => x.MajorId == 3).Count() }
                    }
                });

                results.Add(new Result()
                {
                    TotalQuantity = usersCount,
                    Items = new List<ResultItem>()
                    {
                        new ResultItem() { Name = "I", Quantity = users.Where(x => x.StudyYearId == 3).Count() },
                        new ResultItem() { Name = "II", Quantity = users.Where(x => x.StudyYearId == 4).Count() },
                        new ResultItem() { Name = "III", Quantity = users.Where(x => x.StudyYearId == 5).Count() },
                        new ResultItem() { Name = "IV", Quantity = users.Where(x => x.StudyYearId == 6).Count() },
                        new ResultItem() { Name = "V", Quantity = users.Where(x => x.StudyYearId == 7).Count() },
                        new ResultItem() { Name = "VI", Quantity = users.Where(x => x.StudyYearId == 8).Count() },
                    }
                });

                results.Add(new Result()
                {
                    TotalQuantity = answersCount,
                    Items = new List<ResultItem>()
                    {
                        new ResultItem() { Name = "Osoby, u których doszło do zakłucia", Quantity = answers.Where(x => x.AvalivableAnswerId == 63).Count() }
                    }
                });

                int kobiety = 0;
                int mezczyzni = 0;
                int medycyna = 0;
                int ratownictwo = 0;
                int pielegniarstwo = 0;
                int pierwszy = 0;
                int drugi = 0;
                int trzeci = 0;
                int czwarty = 0;
                int piaty = 0;
                int szosty = 0;
                var answersZakluci = answers.Where(x => x.AvalivableAnswerId == 63).Count();

                foreach (var answer in answers.Where(x => x.AvalivableAnswerId == 63))
                {
                    var user = users.FirstOrDefault(x => x.UserId == answer.UserId);

                    if (user.UserSexId == 1)
                    {
                        mezczyzni++;
                    }
                    else if (user.UserSexId == 2)
                    {
                        kobiety++;
                    }

                    if (user.MajorId == 1)
                    {
                        medycyna++;
                    }
                    else if (user.MajorId == 2)
                    {
                        pielegniarstwo++;
                    }
                    else if (user.MajorId == 3)
                    {
                        ratownictwo++;
                    }

                    if (user.StudyYearId == 3)
                    {
                        pierwszy++;
                    }
                    else if (user.StudyYearId == 4)
                    {
                        drugi++;
                    }
                    else if (user.StudyYearId == 5)
                    {
                        trzeci++;
                    }
                    else if (user.StudyYearId == 6)
                    {
                        czwarty++;
                    }
                    else if (user.StudyYearId == 7)
                    {
                        piaty++;
                    }
                    else if (user.StudyYearId == 8)
                    {
                        szosty++;
                    }
                }

                results.Add(new Result()
                {
                    GroupName = "Wyszczególnienie osób, które się zakłuły",
                    TotalQuantity = answersZakluci,
                    Items = new List<ResultItem>()
                    {
                        new ResultItem() { Name = "Kobiety", Quantity = kobiety },
                        new ResultItem() { Name = "Mężczyźni", Quantity = mezczyzni }
                    }
                });

                results.Add(new Result()
                {
                    TotalQuantity = answersZakluci,
                    Items = new List<ResultItem>()
                    {
                        new ResultItem() { Name = "Medycyna", Quantity = medycyna },
                        new ResultItem() { Name = "Pielęgniarstwo", Quantity = pielegniarstwo },
                        new ResultItem() { Name = "Ratownictwo", Quantity = ratownictwo }
                    }
                });

                results.Add(new Result()
                {
                    TotalQuantity = answersZakluci,
                    Items = new List<ResultItem>()
                    {
                        new ResultItem() { Name = "I", Quantity = pierwszy },
                        new ResultItem() { Name = "II", Quantity = drugi },
                        new ResultItem() { Name = "III", Quantity = trzeci },
                        new ResultItem() { Name = "IV", Quantity = czwarty },
                        new ResultItem() { Name = "V", Quantity = piaty },
                        new ResultItem() { Name = "VI", Quantity = szosty }
                    }
                });

                var usersIdZakluci = answers.Where(x => x.AvalivableAnswerId == 63).Select(x => x.UserId);

                var szkolenieTak = 0;
                var szkolenieNie = 0;
                var zawsze = 0;
                var czesto = 0;
                var rzadko = 0;
                var nigdy = 0;

                foreach(var user in usersIdZakluci)
                {
                    var question_1 = answers.FirstOrDefault(x => x.UserId == user && x.QuestionId == 1);
                    if (question_1.AvalivableAnswerId == 42)
                    {
                        szkolenieNie++;
                    }
                    else if (question_1.AvalivableAnswerId == 43)
                    {
                        szkolenieTak++;
                    }

                    var question_3 = answers.FirstOrDefault(x => x.UserId == user && x.QuestionId == 3);
                    if (question_3.AvalivableAnswerId == 49)
                    {
                        zawsze++;
                    }
                    else if (question_3.AvalivableAnswerId == 50)
                    {
                        czesto++;
                    }
                    else if (question_3.AvalivableAnswerId == 51)
                    {
                        rzadko++;
                    }
                    else if (question_3.AvalivableAnswerId == 52)
                    {
                        nigdy++;
                    }
                }

                results.Add(new Result()
                {
                    GroupName = "Czy wśród osób zakłutych było szkolenie?",
                    TotalQuantity = answersZakluci,
                    Items = new List<ResultItem>()
                    {
                        new ResultItem() { Name = "Nie", Quantity = szkolenieNie },
                        new ResultItem() { Name = "Tak", Quantity = szkolenieTak }
                    }
                });

                results.Add(new Result()
                {
                    GroupName = "Czy osoby u których doszło do zakłucia postępowały zgodnie z zasadami?",
                    TotalQuantity = answersZakluci,
                    Items = new List<ResultItem>()
                    {
                        new ResultItem() { Name = "Zawsze", Quantity = zawsze },
                        new ResultItem() { Name = "Często", Quantity = czesto },
                        new ResultItem() { Name = "Rzadko", Quantity = rzadko },
                        new ResultItem() { Name = "Nigdy", Quantity = nigdy }
                    }
                });
            }

            foreach (var result in results)
            {
                foreach(var item in result.Items)
                {
                    item.Percentage = ((decimal)item.Quantity / (decimal)result.TotalQuantity) * 100;
                }
            }

            return results;
        }
        #endregion
    }

    public class GroupAnswers
    {
        public int UserId { get; set; }
        public IEnumerable<Answer> Answers { get; set; }
    }
}