USE [ankietamartydb]
GO
/****** Object:  Table [dbo].[Answers]    Script Date: 20.03.2017 20:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answers](
	[AnswerId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[QuestionId] [int] NOT NULL,
	[AvalivableAnswerId] [int] NOT NULL,
	[AnswerText] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Answers] PRIMARY KEY CLUSTERED 
(
	[AnswerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[AvalivableAnswers]    Script Date: 20.03.2017 20:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AvalivableAnswers](
	[AvalivableAnswerId] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](max) NULL,
	[QuestionId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.AvalivableAnswers] PRIMARY KEY CLUSTERED 
(
	[AvalivableAnswerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[Majors]    Script Date: 20.03.2017 20:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Majors](
	[MajorId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Majors] PRIMARY KEY CLUSTERED 
(
	[MajorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[Questions]    Script Date: 20.03.2017 20:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[QuestionId] [int] IDENTITY(1,1) NOT NULL,
	[Number] [int] NOT NULL,
	[Text] [nvarchar](max) NULL,
	[WithAnswerText] [bit] NOT NULL,
	[AnswerText] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Questions] PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[StudyYears]    Script Date: 20.03.2017 20:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudyYears](
	[StudyYearId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.StudyYears] PRIMARY KEY CLUSTERED 
(
	[StudyYearId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[Users]    Script Date: 20.03.2017 20:07:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserSexId] [int] NOT NULL,
	[UserSex] [nvarchar](max) NULL,
	[MajorId] [int] NOT NULL,
	[Major] [nvarchar](max) NULL,
	[StudyYearId] [int] NOT NULL,
	[StudyYear] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[UserSexes]    Script Date: 20.03.2017 20:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSexes](
	[UserSexId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.UserSexes] PRIMARY KEY CLUSTERED 
(
	[UserSexId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET IDENTITY_INSERT [dbo].[AvalivableAnswers] ON 

INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (42, N'Nie', 1)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (43, N'Tak, ile razy...', 1)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (44, N'Tak, ale często nie było do nich dostępu', 2)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (45, N'Tak, zawsze', 2)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (46, N'Zazwyczaj tak', 2)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (47, N'Rzadko', 2)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (48, N'Nigdy', 2)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (49, N'Zawsze', 3)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (50, N'Często', 3)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (51, N'Rzadko', 3)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (52, N'Nigdy', 3)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (53, N'Tak, robię to bardzo często', 4)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (54, N'Zdarza mi się', 4)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (55, N'Sporadycznie', 4)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (56, N'Nigdy tego nie robię', 4)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (57, N'Gdy nie wezmę ze sobą pudełka twardościennego', 5)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (58, N'Podczas podawania insuliny by nie wymieniać igły na nową', 5)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (59, N'Inny', 5)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (60, N'Tak, nigdy nie biorę pod uwagę stanu zapełninia pojemnika', 6)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (61, N'Tak, czasami gdy nie mam czasu wymienić pudełka na nowe', 6)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (62, N'Nie, nigdy zawsze sprawdzam w jakim stopniu zostało zapełnione pudełko, w razie potrzeby wymieniam', 6)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (63, N'Tak', 7)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (64, N'Nie', 7)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (65, N'Tylko 1 raz', 8)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (66, N'2-5 razy', 8)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (67, N'5-10 razy', 8)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (68, N'Powyżej 10', 8)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (69, N'Podczas wykonywania iniekcji', 9)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (70, N'Podczas nakładania zatyczki ochronnej na igłę po wykonanej iniekcji', 9)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (71, N'Podczas wykonywania/asystowania w trakcie zabiegu/ badania', 9)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (72, N'W trakcie wyrzucania igły do pojemnika twardościennego gdy jego objętość była zapełniona powyżej 2/3', 9)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (73, N'Inna(proszę podać jaka)', 9)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (74, N'Nie', 10)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (75, N'Tak, (komu?)', 10)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (76, N'Nie wiedziałam, ze trzeba zgłosić', 11)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (77, N'Obawiałem/am się że przez to nie zaliczę praktyk', 11)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (78, N'Z obawy przed oceną opiekuna praktyk/personelu medycznego/ koleżanek/kolegów', 11)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (79, N'Przy zgłoszeniu ekspozycji zawodowej jest dużo pracy( wypełnianie dokumentacji, przechodzenie przez badania)', 11)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (80, N'Z obawy przed przymusowym badaniem i koniecznością rezygnacji ze studiów w przypadku pozytywnego wyniku', 11)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (85, N'Tak', 12)
INSERT [dbo].[AvalivableAnswers] ([AvalivableAnswerId], [Text], [QuestionId]) VALUES (86, N'Nie', 12)
SET IDENTITY_INSERT [dbo].[AvalivableAnswers] OFF
SET IDENTITY_INSERT [dbo].[Majors] ON 

INSERT [dbo].[Majors] ([MajorId], [Description]) VALUES (1, N'Medycyna')
INSERT [dbo].[Majors] ([MajorId], [Description]) VALUES (2, N'Pielęgniarstwo / położnictwo')
INSERT [dbo].[Majors] ([MajorId], [Description]) VALUES (3, N'Ratownictwo medyczne')
SET IDENTITY_INSERT [dbo].[Majors] OFF
SET IDENTITY_INSERT [dbo].[Questions] ON 

INSERT [dbo].[Questions] ([QuestionId], [Number], [Text], [WithAnswerText], [AnswerText]) VALUES (1, 1, N'Czy uczestniczył(a) Pani/Pan w szkoleniach mających na celu zapobieganie zawodowemu narażeniu na zakażenie poprzez kontakt z materiałem biologicznym?', 1, NULL)
INSERT [dbo].[Questions] ([QuestionId], [Number], [Text], [WithAnswerText], [AnswerText]) VALUES (2, 2, N'Czy w trakcie odbywania praktyk wykonując czynności medyczne i porządkowe korzystał(a) Pani/Pan z odpowiednich środków ochrony indywidualnej (rękawiczki jednorazowe, fartuchy ochronne, maseczki)?', 0, NULL)
INSERT [dbo].[Questions] ([QuestionId], [Number], [Text], [WithAnswerText], [AnswerText]) VALUES (3, 3, N'Czy w trakcie odbywania praktyk wykonuje Pani/Pan czynności medyczne i porządkowe zgodnie z obowiązującymi procedurami?', 0, NULL)
INSERT [dbo].[Questions] ([QuestionId], [Number], [Text], [WithAnswerText], [AnswerText]) VALUES (4, 4, N'Czy w trakcie odbywanie praktyk zdarza się Pani/Panu założyć zatyczkę ochronną na igłę po wykonanej iniekcji?', 0, NULL)
INSERT [dbo].[Questions] ([QuestionId], [Number], [Text], [WithAnswerText], [AnswerText]) VALUES (5, 5, N'Jeśli w pytaniu 4 odpowiedziałeś twierdząco, to w jakich okolicznościach?', 1, NULL)
INSERT [dbo].[Questions] ([QuestionId], [Number], [Text], [WithAnswerText], [AnswerText]) VALUES (6, 6, N'Czy podczas odbywania praktyk zdarzało się Pani/Panu wyrzucać igłę bądź inne ostre przedmioty do pojemnika twardościenego, który był zapełniony powyżej 2/3 objętości?', 0, NULL)
INSERT [dbo].[Questions] ([QuestionId], [Number], [Text], [WithAnswerText], [AnswerText]) VALUES (7, 7, N'Czy w trakcie odbywania praktyk zaistniała sytuacja bezpośredniego kontaktu Pani/Pana z krwią lub materiałem zakaźnym podczas naruszenia ciągłości przez zakłucie lub skaleczenie ostrym narzędziem?', 0, NULL)
INSERT [dbo].[Questions] ([QuestionId], [Number], [Text], [WithAnswerText], [AnswerText]) VALUES (8, 8, N'Ile razy wystąpiła u Pani/Pana ekspozycja zawodowa poprzez zakłucie lub skaleczenie ostrym narzędziem? ', 0, NULL)
INSERT [dbo].[Questions] ([QuestionId], [Number], [Text], [WithAnswerText], [AnswerText]) VALUES (9, 9, N'W jakim przypadku/przypadkach doszło u Pani/Pana do ekspozycji zawodowej poprzez zakłucie lub zadrapanie ostrym narzędziem?', 1, NULL)
INSERT [dbo].[Questions] ([QuestionId], [Number], [Text], [WithAnswerText], [AnswerText]) VALUES (10, 10, N'Czy zgłosiła Pani/Pan sytuację, w której doszło do ekspozycji zawodowej swojemu opiekunowi praktyk lub komukolwiek z personelu medycznemu?', 1, NULL)
INSERT [dbo].[Questions] ([QuestionId], [Number], [Text], [WithAnswerText], [AnswerText]) VALUES (11, 11, N'Jeśli odpowiedziała Pani/Pan "nie" - proszę zaznaczyć dlaczego taka sytuacja została nie zgłoszona?', 0, NULL)
INSERT [dbo].[Questions] ([QuestionId], [Number], [Text], [WithAnswerText], [AnswerText]) VALUES (12, 12, N'Jeśli odpowiedziała Pani "tak" - w pytaniu 7, to czy wdrożono procedurę poekspozycyjną?', 0, NULL)
SET IDENTITY_INSERT [dbo].[Questions] OFF
SET IDENTITY_INSERT [dbo].[StudyYears] ON 

INSERT [dbo].[StudyYears] ([StudyYearId], [Description]) VALUES (3, N'I')
INSERT [dbo].[StudyYears] ([StudyYearId], [Description]) VALUES (4, N'II')
INSERT [dbo].[StudyYears] ([StudyYearId], [Description]) VALUES (5, N'III')
INSERT [dbo].[StudyYears] ([StudyYearId], [Description]) VALUES (6, N'IV / I rok studia magisterskie')
INSERT [dbo].[StudyYears] ([StudyYearId], [Description]) VALUES (7, N'V / II rok studia magisterskie')
INSERT [dbo].[StudyYears] ([StudyYearId], [Description]) VALUES (8, N'VI')
SET IDENTITY_INSERT [dbo].[StudyYears] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (4, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (5, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (6, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (7, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (8, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (9, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (10, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (11, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (12, 2, N'Kobieta', 3, N'Ratownictwo medyczne', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (13, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (14, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (15, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (16, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (17, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (18, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (19, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (20, 2, N'Kobieta', 3, N'Ratownictwo medyczne', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (21, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (22, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (23, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (24, 2, N'Kobieta', 1, N'Medycyna', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (25, 1, N'Mężczyzna', 1, N'Medycyna', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (26, 1, N'Mężczyzna', 1, N'Medycyna', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (27, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (28, 1, N'Mężczyzna', 1, N'Medycyna', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (29, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (30, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (31, 1, N'Mężczyzna', 1, N'Medycyna', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (32, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (33, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (34, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (35, 2, N'Kobieta', 1, N'Medycyna', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (36, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (37, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (38, 1, N'Mężczyzna', 1, N'Medycyna', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (39, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (40, 2, N'Kobieta', 1, N'Medycyna', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (41, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (42, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (43, 1, N'Mężczyzna', 1, N'Medycyna', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (44, 1, N'Mężczyzna', 3, N'Ratownictwo medyczne', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (45, 2, N'Kobieta', 1, N'Medycyna', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (46, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (47, 2, N'Kobieta', 1, N'Medycyna', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (48, 1, N'Mężczyzna', 1, N'Medycyna', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (49, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (50, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (51, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (52, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (53, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (54, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (55, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (56, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (57, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (58, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (59, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (60, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (61, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (62, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (63, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (64, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (65, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (66, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (67, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (68, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (69, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (70, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (71, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (72, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (73, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (74, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (75, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (76, 2, N'Kobieta', 1, N'Medycyna', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (77, 2, N'Kobieta', 1, N'Medycyna', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (78, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (79, 2, N'Kobieta', 1, N'Medycyna', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (80, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (81, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (82, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (83, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (84, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (85, 1, N'Mężczyzna', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (86, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (87, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (88, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (89, 2, N'Kobieta', 1, N'Medycyna', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (90, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (91, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (92, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (93, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (94, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (95, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (96, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (97, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (98, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (99, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (100, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (101, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (102, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
GO
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (103, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (104, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (105, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (106, 1, N'Mężczyzna', 2, N'Pielęgniarstwo / położnictwo', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (107, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (108, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (109, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (110, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (111, 1, N'Mężczyzna', 1, N'Medycyna', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (112, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (113, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (114, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (115, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (116, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (117, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (118, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (119, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (120, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (121, 1, N'Mężczyzna', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (122, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (123, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (124, 1, N'Mężczyzna', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (125, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (126, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (127, 1, N'Mężczyzna', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (128, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (129, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (130, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (131, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (132, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (133, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (134, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (135, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (136, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (137, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (138, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (139, 1, N'Mężczyzna', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (140, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (141, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (142, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (143, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (144, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (145, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (146, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (147, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (148, 1, N'Mężczyzna', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (149, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (150, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (151, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (152, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (153, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (154, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (155, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (156, 1, N'Mężczyzna', 1, N'Medycyna', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (157, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (158, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (159, 1, N'Mężczyzna', 1, N'Medycyna', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (160, 1, N'Mężczyzna', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (161, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (162, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (163, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (164, 1, N'Mężczyzna', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (165, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (166, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (167, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (168, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (169, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (170, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (171, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (172, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (173, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (174, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (175, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (176, 1, N'Mężczyzna', 1, N'Medycyna', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (177, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (178, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (179, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (180, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (181, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (182, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (183, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (184, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (185, 2, N'Kobieta', 1, N'Medycyna', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (186, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (187, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (188, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (189, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (190, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (191, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (192, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (193, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (194, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (195, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (196, 2, N'Kobieta', 1, N'Medycyna', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (197, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (198, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (199, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (200, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (201, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (202, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
GO
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (203, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (204, 2, N'Kobieta', 1, N'Medycyna', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (205, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (206, 2, N'Kobieta', 3, N'Ratownictwo medyczne', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (207, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (208, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (209, 2, N'Kobieta', 1, N'Medycyna', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (210, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (211, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (212, 2, N'Kobieta', 1, N'Medycyna', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (213, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (214, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (215, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (216, 1, N'Mężczyzna', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (217, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (218, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (219, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (220, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (221, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (222, 1, N'Mężczyzna', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (223, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (224, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (225, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (226, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (227, 2, N'Kobieta', 1, N'Medycyna', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (228, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (229, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (230, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (231, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (232, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (233, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (234, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (235, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (236, 2, N'Kobieta', 3, N'Ratownictwo medyczne', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (237, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (238, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (239, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (240, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (241, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (242, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (243, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (244, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (245, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (246, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (247, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (248, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (249, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (250, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (251, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (252, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (253, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (254, 1, N'Mężczyzna', 1, N'Medycyna', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (255, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (256, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (257, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (258, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (259, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (260, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (261, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (262, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (263, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (264, 1, N'Mężczyzna', 2, N'Pielęgniarstwo / położnictwo', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (265, 2, N'Kobieta', 1, N'Medycyna', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (266, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (267, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (268, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (269, 1, N'Mężczyzna', 1, N'Medycyna', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (270, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (271, 2, N'Kobieta', 3, N'Ratownictwo medyczne', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (272, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (273, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (274, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (275, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (276, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (277, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (278, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (279, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (280, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (281, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (282, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (283, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (284, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (285, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (286, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (287, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (288, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (289, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (290, 2, N'Kobieta', 1, N'Medycyna', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (291, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (292, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (293, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (294, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (295, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (296, 1, N'Mężczyzna', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (297, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (298, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (299, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (300, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (301, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (302, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
GO
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (303, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (304, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (305, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (306, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (307, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (308, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (309, 2, N'Kobieta', 1, N'Medycyna', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (310, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (311, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (312, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (313, 2, N'Kobieta', 1, N'Medycyna', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (314, 2, N'Kobieta', 1, N'Medycyna', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (315, 2, N'Kobieta', 1, N'Medycyna', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (316, 1, N'Mężczyzna', 1, N'Medycyna', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (317, 2, N'Kobieta', 1, N'Medycyna', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (318, 2, N'Kobieta', 1, N'Medycyna', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (319, 2, N'Kobieta', 1, N'Medycyna', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (320, 2, N'Kobieta', 1, N'Medycyna', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (321, 1, N'Mężczyzna', 1, N'Medycyna', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (322, 2, N'Kobieta', 1, N'Medycyna', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (323, 2, N'Kobieta', 1, N'Medycyna', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (324, 2, N'Kobieta', 1, N'Medycyna', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (325, 2, N'Kobieta', 1, N'Medycyna', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (326, 1, N'Mężczyzna', 1, N'Medycyna', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (327, 2, N'Kobieta', 1, N'Medycyna', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (328, 2, N'Kobieta', 1, N'Medycyna', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (329, 2, N'Kobieta', 1, N'Medycyna', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (330, 2, N'Kobieta', 1, N'Medycyna', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (331, 1, N'Mężczyzna', 1, N'Medycyna', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (332, 2, N'Kobieta', 1, N'Medycyna', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (333, 2, N'Kobieta', 1, N'Medycyna', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (334, 2, N'Kobieta', 1, N'Medycyna', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (335, 2, N'Kobieta', 1, N'Medycyna', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (336, 2, N'Kobieta', 1, N'Medycyna', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (337, 1, N'Mężczyzna', 3, N'Ratownictwo medyczne', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (338, 1, N'Mężczyzna', 3, N'Ratownictwo medyczne', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (339, 1, N'Mężczyzna', 3, N'Ratownictwo medyczne', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (340, 1, N'Mężczyzna', 3, N'Ratownictwo medyczne', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (341, 2, N'Kobieta', 3, N'Ratownictwo medyczne', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (342, 1, N'Mężczyzna', 1, N'Medycyna', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (343, 2, N'Kobieta', 3, N'Ratownictwo medyczne', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (344, 2, N'Kobieta', 3, N'Ratownictwo medyczne', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (345, 2, N'Kobieta', 3, N'Ratownictwo medyczne', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (346, 2, N'Kobieta', 3, N'Ratownictwo medyczne', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (347, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (348, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (349, 2, N'Kobieta', 3, N'Ratownictwo medyczne', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (350, 2, N'Kobieta', 3, N'Ratownictwo medyczne', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (351, 1, N'Mężczyzna', 3, N'Ratownictwo medyczne', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (352, 2, N'Kobieta', 3, N'Ratownictwo medyczne', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (353, 1, N'Mężczyzna', 3, N'Ratownictwo medyczne', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (354, 1, N'Mężczyzna', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (355, 1, N'Mężczyzna', 3, N'Ratownictwo medyczne', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (356, 1, N'Mężczyzna', 3, N'Ratownictwo medyczne', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (357, 2, N'Kobieta', 3, N'Ratownictwo medyczne', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (358, 1, N'Mężczyzna', 3, N'Ratownictwo medyczne', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (359, 1, N'Mężczyzna', 3, N'Ratownictwo medyczne', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (360, 2, N'Kobieta', 3, N'Ratownictwo medyczne', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (361, 2, N'Kobieta', 3, N'Ratownictwo medyczne', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (362, 1, N'Mężczyzna', 3, N'Ratownictwo medyczne', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (363, 1, N'Mężczyzna', 3, N'Ratownictwo medyczne', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (364, 2, N'Kobieta', 3, N'Ratownictwo medyczne', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (365, 1, N'Mężczyzna', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (366, 1, N'Mężczyzna', 3, N'Ratownictwo medyczne', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (367, 1, N'Mężczyzna', 3, N'Ratownictwo medyczne', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (368, 2, N'Kobieta', 3, N'Ratownictwo medyczne', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (369, 2, N'Kobieta', 3, N'Ratownictwo medyczne', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (370, 1, N'Mężczyzna', 1, N'Medycyna', 3, N'I')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (371, 2, N'Kobieta', 3, N'Ratownictwo medyczne', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (372, 1, N'Mężczyzna', 3, N'Ratownictwo medyczne', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (373, 1, N'Mężczyzna', 3, N'Ratownictwo medyczne', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (374, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (375, 2, N'Kobieta', 3, N'Ratownictwo medyczne', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (376, 2, N'Kobieta', 3, N'Ratownictwo medyczne', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (377, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (378, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 4, N'II')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (379, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 5, N'III')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (380, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (381, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 7, N'V / II rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (382, 1, N'Mężczyzna', 1, N'Medycyna', 8, N'VI')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (383, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (384, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (385, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
INSERT [dbo].[Users] ([UserId], [UserSexId], [UserSex], [MajorId], [Major], [StudyYearId], [StudyYear]) VALUES (386, 2, N'Kobieta', 2, N'Pielęgniarstwo / położnictwo', 6, N'IV / I rok studia magisterskie')
SET IDENTITY_INSERT [dbo].[Users] OFF
SET IDENTITY_INSERT [dbo].[UserSexes] ON 

INSERT [dbo].[UserSexes] ([UserSexId], [Description]) VALUES (1, N'Mężczyzna')
INSERT [dbo].[UserSexes] ([UserSexId], [Description]) VALUES (2, N'Kobieta')
SET IDENTITY_INSERT [dbo].[UserSexes] OFF
ALTER TABLE [dbo].[Answers] ADD  DEFAULT ((0)) FOR [QuestionId]
GO
ALTER TABLE [dbo].[Answers] ADD  DEFAULT ((0)) FOR [AvalivableAnswerId]
GO
ALTER TABLE [dbo].[Questions] ADD  DEFAULT ((0)) FOR [WithAnswerText]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [UserSexId]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [MajorId]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [StudyYearId]
GO
ALTER TABLE [dbo].[AvalivableAnswers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AvalivableAnswers_dbo.Questions_QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Questions] ([QuestionId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AvalivableAnswers] CHECK CONSTRAINT [FK_dbo.AvalivableAnswers_dbo.Questions_QuestionId]
GO
