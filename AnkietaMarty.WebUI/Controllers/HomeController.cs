using AnkietaMarty.Domain.Context;
using AnkietaMarty.Domain.Entities;
using AnkietaMarty.WebUI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

namespace AnkietaMarty.WebUI.Controllers
{
    public partial class HomeController : Controller
    {
        private ApplicationService _service;

        public HomeController()
        {
            this._service = new ApplicationService();
        }

        #region Index()
        public virtual ActionResult Index()
        {
            var questions = _service.GetQuestions();
            var answers = _service.GetAvalivableAnswers();

            var model = new QuestionaireViewModel();
            model.SetQuestions(questions, answers);

            return View(model);
        }

        [HttpPost]
        public virtual ActionResult Index(QuestionaireViewModel model)
        {
            var user = new User()
            {
                MajorId = model.User.MajorId,
                StudyYearId = model.User.StudyYearId,
                UserSexId = model.User.UserSexId
            };

            var answersList = new List<Answer>();
            foreach (var question in model.Questions)
            {
                answersList.Add(new Answer()
                {
                    QuestionId = question.QuestionId,
                    AvalivableAnswerId = question.SelectedAnswerId,
                    AnswerText = question.AnswerText
                });
            }

            if (_service.TrySaveData(user, answersList))
            {
                return RedirectToAction(MVC.Home.ThankYou());
            }
            else
            {
                ModelState.AddModelError("", "Należy odpowiedzieć na wszystkie pytnia");

                var answers = _service.GetAvalivableAnswers();

                foreach (var question in model.Questions)
                {
                    foreach (var answer in answers.Where(x => x.QuestionId == question.QuestionId))
                    {
                        var item = new SelectListItem();
                        item.Text = answer.Text;
                        item.Value = answer.AvalivableAnswerId.ToString();
                        if (question.SelectedAnswerId > 0)
                        {
                            item.Selected = true;
                        }
                        question.AvalivableAnswers.Add(item);
                    }
                }
            }

            #region ToDelete
            //bool everythingOk = false;
            //var basicQuestionAnswered = model.Questions.Where(x => x.QuestionId <= 7).All(x => x.SelectedAnswerId > 0);

            //if (basicQuestionAnswered)
            //{
            //    var selectedAnswerId_6 = model.Questions[6].SelectedAnswerId;
            //    var selectedAnswer_6 = _service.GetAvalivableAnswerById(selectedAnswerId_6);

            //    if (selectedAnswer_6 != null && selectedAnswer_6.Text == "Nie")
            //    {
            //        model.Questions[7].SelectedAnswerId = 0;
            //        model.Questions[7].AnswerText = "";

            //        model.Questions[8].SelectedAnswerId = 0;
            //        model.Questions[8].AnswerText = "";

            //        model.Questions[9].SelectedAnswerId = 0;
            //        model.Questions[9].AnswerText = "";

            //        model.Questions[10].SelectedAnswerId = 0;
            //        model.Questions[10].AnswerText = "";

            //        model.Questions[11].SelectedAnswerId = 0;
            //        model.Questions[11].AnswerText = "";

            //        everythingOk = true;
            //    }
            //    else
            //    {
            //        if (model.Questions[7].SelectedAnswerId > 0 && model.Questions[8].SelectedAnswerId > 0 && model.Questions[9].SelectedAnswerId > 0 && model.Questions[11].SelectedAnswerId > 0)
            //        {
            //            var selectedAnswerId_9 = model.Questions[9].SelectedAnswerId;
            //            var selectedAnswer_9 = _service.GetAvalivableAnswerById(selectedAnswerId_9);

            //            if (selectedAnswer_9 != null && selectedAnswer_9.Text == "Tak, (komu?)")
            //            {
            //                model.Questions[10].SelectedAnswerId = 0;
            //                model.Questions[10].AnswerText = "";

            //                everythingOk = true;
            //            }
            //            else
            //            {
            //                if (model.Questions[10].SelectedAnswerId == 0)
            //                {
            //                    everythingOk = false;
            //                }
            //                else
            //                {
            //                    everythingOk = true;
            //                }
            //            }
            //        }
            //        else
            //        {
            //            everythingOk = false;
            //        }
            //    }
            //}
            //else
            //{
            //    everythingOk = false;
            //}

            //if (everythingOk)
            //{
            //    var major = _service.GetMajorById(model.User.MajorId);
            //    var studyYear = _service.GetStudyYearById(model.User.StudyYearId);
            //    var userSex = _service.GetUserSexById(model.User.UserSexId);

            //    var user = new User()
            //    {
            //        MajorId = major.MajorId,
            //        Major = major.Description,
            //        StudyYearId = studyYear.StudyYearId,
            //        StudyYear = studyYear.Description,
            //        UserSexId = userSex.UserSexId,
            //        UserSex = userSex.Description
            //    };

            //    var userId = _service.CreateUser(user).UserId;

            //    var answersList = new List<Answer>();
            //    foreach(var question in model.Questions)
            //    {
            //        answersList.Add(new Answer()
            //        {
            //            QuestionId = question.QuestionId,
            //            AvalivableAnswerId = question.SelectedAnswerId,
            //            AnswerText = question.AnswerText,
            //            UserId = userId
            //        });
            //    }
            //    _service.AddAnswers(answersList);

            //    return RedirectToAction(MVC.Home.ThankYou());
            //}
            //else
            //{
            //    ModelState.AddModelError("", "Należy odpowiedzieć na wszystkie pytnia");

            //    var answers = _service.GetAvalivableAnswers();

            //    foreach (var question in model.Questions)
            //    {
            //        foreach (var answer in answers.Where(x => x.QuestionId == question.QuestionId))
            //        {
            //            var item = new SelectListItem();
            //            item.Text = answer.Text;
            //            item.Value = answer.AvalivableAnswerId.ToString();
            //            if (question.SelectedAnswerId > 0)
            //            {
            //                item.Selected = true;
            //            }
            //            question.AvalivableAnswers.Add(item);
            //        }
            //    }
            //}
#endregion

            return View(model);
        }
        #endregion

        #region ThankYou()
        public virtual ActionResult ThankYou()
        {
            return View();
        }
        #endregion

        #region Results()
        public virtual ActionResult Results()
        {
            var model = new List<ResultViewModel>();

            var answers = _service.GetAnswers();
            var allAvalivableAnswers = _service.GetAvalivableAnswers();
            var questions = _service.GetQuestions();
            var users = _service.GetUsers();

            var answersCount = users.Count();
            if (answersCount == 0)
            {
                return RedirectToAction(MVC.Home.Index());
            }

            foreach(var question in questions)
            {
                var item = new ResultViewModel();
                item.Question = question.Text;
                item.QuestionNumber = question.Number;

                foreach(var avalivableAnswer in allAvalivableAnswers.Where(x => x.QuestionId == question.QuestionId))
                {
                    item.AnswersResults.Add(new AnswerResultViewModel()
                    {
                        AvalivableAnswerId = avalivableAnswer.AvalivableAnswerId,
                        AvalivableAnswerText = avalivableAnswer.Text,
                        Quantity = 0,
                        Percentage = 0
                    });
                }

                foreach(var answer in answers.Where(x => x.QuestionId == question.QuestionId))
                {
                    var index = item.AnswersResults.FindIndex(x => x.AvalivableAnswerId == answer.AvalivableAnswerId);
                    if (index >= 0)
                    {
                        item.AnswersResults[index].Quantity++;
                    }
                }

                var itemAnswersCount = item.AnswersResults.Sum(x => x.Quantity);
                foreach(var answerItem in item.AnswersResults)
                {
                    if (itemAnswersCount == 0)
                    {
                        answerItem.Percentage = 0;
                    }
                    else
                    {
                        var percentage = (decimal)answerItem.Quantity / (decimal)itemAnswersCount;
                        answerItem.Percentage = Math.Round(percentage, 2, MidpointRounding.AwayFromZero);
                    }
                }

                model.Add(item);
            }

            return View(model);
        }
        #endregion

        #region QuestionaireDetails()
        public virtual ActionResult QuestionaireDetails()
        {
            var results = _service.GetResults();
            return View(results);
        }
        #endregion
    }
}