USE [master]
GO
/****** Object:  Database [UniversityDB]    Script Date: 23.12.2023 19:26:15 ******/
CREATE DATABASE [UniversityDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UniversityDB', FILENAME = N'E:\SQL\MSSQL16.MSSQLSERVER\MSSQL\DATA\UniversityDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UniversityDB_log', FILENAME = N'E:\SQL\MSSQL16.MSSQLSERVER\MSSQL\DATA\UniversityDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [UniversityDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UniversityDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UniversityDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UniversityDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UniversityDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UniversityDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UniversityDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [UniversityDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UniversityDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UniversityDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UniversityDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UniversityDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UniversityDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UniversityDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UniversityDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UniversityDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UniversityDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [UniversityDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UniversityDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UniversityDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UniversityDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UniversityDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UniversityDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UniversityDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UniversityDB] SET RECOVERY FULL 
GO
ALTER DATABASE [UniversityDB] SET  MULTI_USER 
GO
ALTER DATABASE [UniversityDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UniversityDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UniversityDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UniversityDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [UniversityDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [UniversityDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'UniversityDB', N'ON'
GO
ALTER DATABASE [UniversityDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [UniversityDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [UniversityDB]
GO
/****** Object:  User [user9]    Script Date: 23.12.2023 19:26:15 ******/
CREATE USER [user9] FOR LOGIN [user9] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [user8]    Script Date: 23.12.2023 19:26:15 ******/
CREATE USER [user8] FOR LOGIN [user8] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [user7]    Script Date: 23.12.2023 19:26:15 ******/
CREATE USER [user7] FOR LOGIN [user7] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [user6]    Script Date: 23.12.2023 19:26:15 ******/
CREATE USER [user6] FOR LOGIN [user6] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [user5]    Script Date: 23.12.2023 19:26:15 ******/
CREATE USER [user5] FOR LOGIN [user5] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [user4]    Script Date: 23.12.2023 19:26:15 ******/
CREATE USER [user4] FOR LOGIN [user4] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [user3]    Script Date: 23.12.2023 19:26:15 ******/
CREATE USER [user3] FOR LOGIN [user3] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [user2]    Script Date: 23.12.2023 19:26:15 ******/
CREATE USER [user2] FOR LOGIN [user2] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [user10]    Script Date: 23.12.2023 19:26:15 ******/
CREATE USER [user10] FOR LOGIN [user10] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [user1]    Script Date: 23.12.2023 19:26:15 ******/
CREATE USER [user1] FOR LOGIN [user1] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [role_teacher]    Script Date: 23.12.2023 19:26:15 ******/
CREATE ROLE [role_teacher]
GO
/****** Object:  DatabaseRole [role_student]    Script Date: 23.12.2023 19:26:15 ******/
CREATE ROLE [role_student]
GO
/****** Object:  DatabaseRole [role_group_curator]    Script Date: 23.12.2023 19:26:15 ******/
CREATE ROLE [role_group_curator]
GO
/****** Object:  DatabaseRole [db_user]    Script Date: 23.12.2023 19:26:15 ******/
CREATE ROLE [db_user]
GO
/****** Object:  DatabaseRole [db_admin]    Script Date: 23.12.2023 19:26:15 ******/
CREATE ROLE [db_admin]
GO
ALTER ROLE [db_user] ADD MEMBER [user9]
GO
ALTER ROLE [db_user] ADD MEMBER [user8]
GO
ALTER ROLE [db_user] ADD MEMBER [user7]
GO
ALTER ROLE [db_user] ADD MEMBER [user6]
GO
ALTER ROLE [role_group_curator] ADD MEMBER [user6]
GO
ALTER ROLE [db_user] ADD MEMBER [user5]
GO
ALTER ROLE [role_group_curator] ADD MEMBER [user5]
GO
ALTER ROLE [db_user] ADD MEMBER [user4]
GO
ALTER ROLE [role_student] ADD MEMBER [user4]
GO
ALTER ROLE [db_user] ADD MEMBER [user3]
GO
ALTER ROLE [role_student] ADD MEMBER [user3]
GO
ALTER ROLE [db_admin] ADD MEMBER [user2]
GO
ALTER ROLE [role_teacher] ADD MEMBER [user2]
GO
ALTER ROLE [db_user] ADD MEMBER [user10]
GO
ALTER ROLE [db_admin] ADD MEMBER [user1]
GO
ALTER ROLE [role_teacher] ADD MEMBER [user1]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CalculateWorkloadForTeacher]    Script Date: 23.12.2023 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_CalculateWorkloadForTeacher](@TeacherID INT)
RETURNS INT
AS
BEGIN
    DECLARE @TotalWorkload INT = 0;

    SELECT @TotalWorkload = COUNT(*) * 2
    FROM Расписание_занятий
    WHERE ID_преподавателя = @TeacherID;

    RETURN @TotalWorkload * 2;
END;
GO
/****** Object:  Table [dbo].[Сотрудник]    Script Date: 23.12.2023 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Сотрудник](
	[ID_сотрудника] [int] IDENTITY(1,1) NOT NULL,
	[ID_должности] [int] NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Отчество] [nvarchar](50) NULL,
	[Электронная_почта] [nvarchar](255) NULL,
	[Номер_телефона] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_сотрудника] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Преподаватель]    Script Date: 23.12.2023 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Преподаватель](
	[ID_преподавателя] [int] IDENTITY(1,1) NOT NULL,
	[ID_сотрудника] [int] NOT NULL,
	[Стаж] [int] NULL,
	[Научная_степень] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_преподавателя] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Пара]    Script Date: 23.12.2023 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Пара](
	[ID_пары] [int] IDENTITY(1,1) NOT NULL,
	[День_недели] [nvarchar](15) NOT NULL,
	[Время_начала] [time](7) NOT NULL,
	[Время_окончания] [time](7) NOT NULL,
	[Верхняя_нижняя_неделя] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_пары] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Дисциплина]    Script Date: 23.12.2023 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Дисциплина](
	[ID_дисциплины] [int] IDENTITY(1,1) NOT NULL,
	[ID_направления_подготовки] [int] NOT NULL,
	[Название_дисциплины] [nvarchar](255) NOT NULL,
	[Номер_семестра] [int] NOT NULL,
	[Часы_практики] [int] NOT NULL,
	[Часы_лабораторных] [int] NOT NULL,
	[Часы_лекций] [int] NOT NULL,
	[Количество_зачётных_единиц] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_дисциплины] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Группа]    Script Date: 23.12.2023 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Группа](
	[ID_группы] [int] IDENTITY(1,1) NOT NULL,
	[Название_группы] [nvarchar](50) NOT NULL,
	[Количество_студентов] [int] NULL,
	[ID_направления_подготовки] [int] NOT NULL,
	[ID_куратора] [int] NOT NULL,
	[Номер_курса] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_группы] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Расписание_занятий]    Script Date: 23.12.2023 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Расписание_занятий](
	[ID_преподавателя] [int] NOT NULL,
	[ID_пары] [int] NOT NULL,
	[ID_дисциплины] [int] NOT NULL,
	[ID_группы] [int] NOT NULL,
	[Номер_аудитории] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_преподавателя] ASC,
	[ID_пары] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CreateScheduleForTeacher]    Script Date: 23.12.2023 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_CreateScheduleForTeacher] (@Name NVARCHAR(50), @SecondName NVARCHAR(50), @Surname NVARCHAR(50))
RETURNS TABLE
AS
RETURN
(
    SELECT 
		Неделя,
        FORMAT(Время_начала, N'hh\:mm') AS Время_начала,
		FORMAT(Время_окончания, N'hh\:mm') AS Время_окончания,
        Понедельник, 
        Вторник, 
        Среда, 
        Четверг, 
        Пятница
    FROM
    (
        SELECT
			Пара.Верхняя_нижняя_неделя AS Неделя,
            Пара.Время_начала,
            Пара.Время_окончания,
            Пара.День_недели,
            CONCAT(Группа.Название_группы, ' "', Дисциплина.Название_дисциплины, '" ', Расписание_занятий.Номер_аудитории) AS Расписание
			
        FROM Расписание_занятий
        JOIN Преподаватель ON Расписание_занятий.ID_преподавателя = Преподаватель.ID_преподавателя
		JOIN Сотрудник ON Преподаватель.ID_сотрудника = Сотрудник.ID_сотрудника
        JOIN Пара ON Расписание_занятий.ID_пары = Пара.ID_пары
        JOIN Дисциплина ON Расписание_занятий.ID_дисциплины = Дисциплина.ID_дисциплины
        JOIN Группа ON Расписание_занятий.ID_группы = Группа.ID_группы
        WHERE Сотрудник.Имя = @Name AND Сотрудник.Фамилия = @Surname AND Сотрудник.Отчество = @SecondName
    ) AS SourceTable
    PIVOT
    (
        MAX(Расписание) FOR День_недели IN ([Понедельник], [Вторник], [Среда], [Четверг], [Пятница])
    ) AS PivotTable
);
GO
/****** Object:  Table [dbo].[Должность]    Script Date: 23.12.2023 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Должность](
	[ID_должности] [int] IDENTITY(1,1) NOT NULL,
	[Название_должности] [nvarchar](255) NOT NULL,
	[Оклад] [int] NOT NULL,
	[Ставка] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_должности] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetEmployeePhoneList]    Script Date: 23.12.2023 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_GetEmployeePhoneList] (
    @FirstName NVARCHAR(50) = NULL,
    @LastName NVARCHAR(50) = NULL,
    @MiddleName NVARCHAR(50) = NULL
)
RETURNS TABLE
AS
RETURN
(
    WITH FilteredEmployees AS (
        SELECT
            Сотрудник.ID_сотрудника,
            Сотрудник.Имя AS Сотрудник_Имя,
            Сотрудник.Фамилия AS Сотрудник_Фамилия,
            Сотрудник.Отчество AS Сотрудник_Отчество,
            Сотрудник.Электронная_почта,
            Сотрудник.Номер_телефона,
            Должность.Название_должности
        FROM
            Сотрудник
        INNER JOIN Должность ON Сотрудник.ID_должности = Должность.ID_должности
        WHERE
            (@FirstName IS NULL OR Сотрудник.Имя = @FirstName)
            AND (@LastName IS NULL OR Сотрудник.Фамилия = @LastName)
            AND (@MiddleName IS NULL OR Сотрудник.Отчество = @MiddleName)
    )

    SELECT * FROM FilteredEmployees
);
GO
/****** Object:  Table [dbo].[Направление_подготовки]    Script Date: 23.12.2023 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Направление_подготовки](
	[ID_направления_подготовки] [int] IDENTITY(1,1) NOT NULL,
	[ID_уровня_подготовки] [int] NOT NULL,
	[Название_направления_подготовки] [nvarchar](255) NOT NULL,
	[Область_образования] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_направления_подготовки] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetListOfDisciplines]    Script Date: 23.12.2023 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_GetListOfDisciplines] (@DirectionName NVARCHAR(255))
RETURNS TABLE
AS
RETURN
(
    WITH DirectionDisciplines AS (
        SELECT
            Дисциплина.ID_дисциплины,
            Дисциплина.Название_дисциплины,
            Дисциплина.Номер_семестра,
            Дисциплина.Часы_практики,
            Дисциплина.Часы_лабораторных,
            Дисциплина.Часы_лекций,
            Дисциплина.Количество_зачётных_единиц
        FROM
            Дисциплина
        INNER JOIN Направление_подготовки ON Дисциплина.ID_направления_подготовки = Направление_подготовки.ID_направления_подготовки
        WHERE
            Направление_подготовки.Название_направления_подготовки = @DirectionName
    )
    SELECT * FROM DirectionDisciplines ORDER BY Номер_семестра
    OFFSET 0 ROWS
);
GO
/****** Object:  Table [dbo].[Студент]    Script Date: 23.12.2023 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Студент](
	[ID_студента] [int] IDENTITY(2200000,1) NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Отчество] [nvarchar](50) NULL,
	[ID_группы] [int] NOT NULL,
	[Дата_рождения] [date] NOT NULL,
	[Электронная_почта] [nvarchar](255) NULL,
	[ID_научного_руководителя] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_студента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetStudentsByGroup]    Script Date: 23.12.2023 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_GetStudentsByGroup]
    (@GroupName NVARCHAR(50))
RETURNS TABLE
AS
RETURN
(
    SELECT
        Студент.ID_студента,
        Студент.Имя AS Имя,
        Студент.Фамилия AS Фамилия,
        Студент.Отчество AS Отчество,
        Студент.Дата_рождения,
        Студент.Электронная_почта,
        Группа.Название_группы
    FROM
        Студент
    JOIN Группа ON Студент.ID_группы = Группа.ID_группы
    WHERE
        Группа.Название_группы = @GroupName
);
GO
/****** Object:  View [dbo].[v_DiplomaStudents]    Script Date: 23.12.2023 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_DiplomaStudents] AS
SELECT
    Студент.ID_студента,
    Студент.Имя AS Студент_Имя,
    Студент.Фамилия AS Студент_Фамилия,
    Студент.Отчество AS Студент_Отчество,
    Студент.ID_группы,
    Сотрудник.Имя AS Руководитель_Имя,
    Сотрудник.Фамилия AS Руководитель_Фамилия,
    Сотрудник.Отчество AS Руководитель_Отчество,
    Преподаватель.Научная_степень,
	Сотрудник.Электронная_почта AS Руководитель_Электронная_почта
FROM
    Студент
LEFT JOIN Преподаватель ON Студент.ID_научного_руководителя = Преподаватель.ID_преподавателя
LEFT JOIN Сотрудник ON Преподаватель.ID_сотрудника = Сотрудник.ID_сотрудника;
GO
/****** Object:  View [dbo].[v_GroupCurator]    Script Date: 23.12.2023 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_GroupCurator] AS
SELECT
    Группа.ID_группы,
    Группа.Название_группы,
    Группа.Количество_студентов,
    Группа.Номер_курса,
    Сотрудник.Имя AS Куратор_Имя,
    Сотрудник.Фамилия AS Куратор_Фамилия,
    Сотрудник.Отчество AS Куратор_Отчество,
    Сотрудник.Электронная_почта AS Куратор_Электронная_почта
FROM
    Группа
INNER JOIN Преподаватель ON Группа.ID_куратора = Преподаватель.ID_преподавателя
INNER JOIN Сотрудник ON Преподаватель.ID_сотрудника = Сотрудник.ID_сотрудника;
GO
/****** Object:  View [dbo].[v_GetSalary]    Script Date: 23.12.2023 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_GetSalary]
AS
SELECT
    Сотрудник.ID_сотрудника,
    Сотрудник.Имя,
    Сотрудник.Фамилия,
    Сотрудник.Отчество,
    Должность.Название_должности,
    Должность.Оклад,
    Должность.Ставка,
    (Должность.Оклад * Должность.Ставка) AS Зарплата
FROM
    Сотрудник
INNER JOIN
    Должность ON Сотрудник.ID_должности = Должность.ID_должности;
GO
/****** Object:  View [dbo].[v_TeachersList]    Script Date: 23.12.2023 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[v_TeachersList]
AS
SELECT
    Преподаватель.ID_преподавателя,
    Сотрудник.Имя,
    Сотрудник.Фамилия,
    Сотрудник.Отчество,
    Должность.Название_должности,
    Преподаватель.Стаж,
    Преподаватель.Научная_степень
FROM
    Преподаватель
INNER JOIN
    Сотрудник ON Преподаватель.ID_сотрудника = Сотрудник.ID_сотрудника
INNER JOIN
    Должность ON Сотрудник.ID_должности = Должность.ID_должности;
GO
/****** Object:  Table [dbo].[Уровень_подготовки]    Script Date: 23.12.2023 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Уровень_подготовки](
	[ID_уровня_подготовки] [int] IDENTITY(1,1) NOT NULL,
	[Название_уровня_подготовки] [nvarchar](50) NOT NULL,
	[Форма_обучения] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_уровня_подготовки] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Группа] ADD  DEFAULT ((0)) FOR [Количество_студентов]
GO
ALTER TABLE [dbo].[Должность] ADD  DEFAULT ((1.0)) FOR [Ставка]
GO
ALTER TABLE [dbo].[Уровень_подготовки] ADD  DEFAULT ('Очная') FOR [Форма_обучения]
GO
ALTER TABLE [dbo].[Группа]  WITH CHECK ADD FOREIGN KEY([ID_куратора])
REFERENCES [dbo].[Преподаватель] ([ID_преподавателя])
GO
ALTER TABLE [dbo].[Группа]  WITH CHECK ADD FOREIGN KEY([ID_направления_подготовки])
REFERENCES [dbo].[Направление_подготовки] ([ID_направления_подготовки])
GO
ALTER TABLE [dbo].[Дисциплина]  WITH CHECK ADD FOREIGN KEY([ID_направления_подготовки])
REFERENCES [dbo].[Направление_подготовки] ([ID_направления_подготовки])
GO
ALTER TABLE [dbo].[Направление_подготовки]  WITH CHECK ADD FOREIGN KEY([ID_уровня_подготовки])
REFERENCES [dbo].[Уровень_подготовки] ([ID_уровня_подготовки])
GO
ALTER TABLE [dbo].[Преподаватель]  WITH CHECK ADD FOREIGN KEY([ID_сотрудника])
REFERENCES [dbo].[Сотрудник] ([ID_сотрудника])
GO
ALTER TABLE [dbo].[Расписание_занятий]  WITH CHECK ADD FOREIGN KEY([ID_группы])
REFERENCES [dbo].[Группа] ([ID_группы])
GO
ALTER TABLE [dbo].[Расписание_занятий]  WITH CHECK ADD FOREIGN KEY([ID_дисциплины])
REFERENCES [dbo].[Дисциплина] ([ID_дисциплины])
GO
ALTER TABLE [dbo].[Расписание_занятий]  WITH CHECK ADD FOREIGN KEY([ID_пары])
REFERENCES [dbo].[Пара] ([ID_пары])
GO
ALTER TABLE [dbo].[Расписание_занятий]  WITH CHECK ADD FOREIGN KEY([ID_преподавателя])
REFERENCES [dbo].[Преподаватель] ([ID_преподавателя])
GO
ALTER TABLE [dbo].[Сотрудник]  WITH CHECK ADD FOREIGN KEY([ID_должности])
REFERENCES [dbo].[Должность] ([ID_должности])
GO
ALTER TABLE [dbo].[Студент]  WITH CHECK ADD FOREIGN KEY([ID_группы])
REFERENCES [dbo].[Группа] ([ID_группы])
GO
ALTER TABLE [dbo].[Студент]  WITH CHECK ADD FOREIGN KEY([ID_научного_руководителя])
REFERENCES [dbo].[Преподаватель] ([ID_преподавателя])
GO
ALTER TABLE [dbo].[Группа]  WITH CHECK ADD CHECK  (([Количество_студентов]<=(30)))
GO
/****** Object:  StoredProcedure [dbo].[pr_AddNewEmployee]    Script Date: 23.12.2023 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pr_AddNewEmployee] (
    @ID_должности INT,
    @Имя NVARCHAR(50),
    @Фамилия NVARCHAR(50),
    @Отчество NVARCHAR(50) = NULL,
    @Электронная_почта NVARCHAR(255) = NULL,
    @Номер_телефона NVARCHAR(20) = NULL,
    @Стаж INT = NULL,
    @Научная_степень NVARCHAR(50) = NULL
)
AS
BEGIN
	BEGIN TRY
		IF NOT EXISTS (SELECT 1 FROM Должность WHERE ID_должности = @ID_должности)
		BEGIN
			THROW 50000, 'Должности с таким ID не существует', 1;
		END

		BEGIN TRANSACTION
			INSERT INTO Сотрудник (ID_должности, Имя, Фамилия, Отчество, Электронная_почта, Номер_телефона)
			VALUES (@ID_должности, @Имя, @Фамилия, @Отчество, @Электронная_почта, @Номер_телефона);

			DECLARE @ID_сотрудника INT;
			SET @ID_сотрудника = SCOPE_IDENTITY();

			DECLARE @Название_должности NVARCHAR(255) = (
				SELECT Название_должности
				FROM Должность
				JOIN Сотрудник ON Сотрудник.ID_должности = Должность.ID_должности
				WHERE ID_сотрудника = @ID_сотрудника);

			IF @Название_должности IN ('Профессор', 'Доцент', 'Старший преподаватель', 'Преподаватель')
			BEGIN
				INSERT INTO Преподаватель (ID_сотрудника, Стаж, Научная_степень)
				VALUES (@ID_сотрудника, @Стаж, @Научная_степень);
			END
		COMMIT TRANSACTION
	END TRY

	BEGIN CATCH
		IF @@TRANCOUNT > 0
		BEGIN
			ROLLBACK TRANSACTION;
			THROW;
		END
		ELSE
		BEGIN
			PRINT ERROR_MESSAGE();
		END;
	END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[pr_AddNewStudent]    Script Date: 23.12.2023 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pr_AddNewStudent] (
    @Дата_рождения DATE,
    @Имя NVARCHAR(50),
    @Фамилия NVARCHAR(50),
    @Отчество NVARCHAR(50) = NULL,
    @ID_группы INT = NULL,
    @ID_научного_руководителя INT = NULL
)
AS
BEGIN
    DECLARE @SelectedGroup INT;

    IF @ID_группы IS NULL
    BEGIN
        WITH SelectedGroup AS (
            SELECT TOP 1 ID_группы
            FROM Группа
            ORDER BY Количество_студентов ASC
        )
        SELECT @SelectedGroup = ID_группы FROM SelectedGroup;
    END

    INSERT INTO Студент (Имя, Фамилия, Отчество, ID_группы, Дата_рождения, ID_научного_руководителя)
    VALUES (@Имя, @Фамилия, @Отчество, @SelectedGroup, @Дата_рождения, @ID_научного_руководителя);

    DECLARE @ID INT = SCOPE_IDENTITY();
    DECLARE @Электронная_почта NVARCHAR(255)= CONCAT(@ID, '@example.com');

    UPDATE Студент
    SET Электронная_почта = @Электронная_почта
    WHERE ID_студента = @ID;

    PRINT CONCAT('Студент успешно добавлен в ', @SelectedGroup, ' группу.');
END;
GO
/****** Object:  StoredProcedure [dbo].[pr_RemoveEmployee]    Script Date: 23.12.2023 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pr_RemoveEmployee] (@ID_сотрудника INT)
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        DELETE FROM Преподаватель WHERE ID_сотрудника = @ID_сотрудника;

        DELETE FROM Сотрудник WHERE ID_сотрудника = @ID_сотрудника;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
		BEGIN
			ROLLBACK TRANSACTION;
			THROW;
		END
	END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[pr_RemoveStudent]    Script Date: 23.12.2023 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pr_RemoveStudent](@StudentID INT)
AS
BEGIN
    DECLARE @Result NVARCHAR(255);

    BEGIN TRY
        DECLARE @GroupID INT;

        SELECT @GroupID = MAX(ID_группы)
        FROM Студент
        WHERE ID_студента = @StudentID;

        IF @GroupID IS NOT NULL
        BEGIN
            DELETE FROM Студент WHERE ID_студента = @StudentID;
            SET @Result = 'Студент успешно удалён';
        END
        ELSE
        BEGIN
            SET @Result = 'Студент с таким ID не найден';
        END
    END TRY

    BEGIN CATCH
        SET @Result = 'Не удалось удалить студента';
    END CATCH

    PRINT @Result;
END;
GO
/****** Object:  StoredProcedure [dbo].[pr_TransferStudentToAnotherGroup]    Script Date: 23.12.2023 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pr_TransferStudentToAnotherGroup] (
    @ID_студента INT,
    @ID_группы_новой INT
)
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        IF NOT EXISTS (SELECT 1 FROM Студент WHERE ID_студента = @ID_студента) OR
           NOT EXISTS (SELECT 1 FROM Группа WHERE ID_группы = @ID_группы_новой)
        BEGIN
            ROLLBACK;
            THROW 50000, 'Студент или группа не существует.', 1;
        END

        UPDATE Студент
        SET ID_группы = @ID_группы_новой
        WHERE ID_студента = @ID_студента;

		PRINT CONCAT('Студент успешно переведён в ', @ID_группы_новой, ' группу.');

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK;
        PRINT ERROR_MESSAGE();
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_CreateScheduleForGroup]    Script Date: 23.12.2023 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pr_CreateScheduleForGroup] (@GroupName NVARCHAR(50))
AS
BEGIN
    WITH ScheduleCTE AS (
        SELECT
            Пара.Верхняя_нижняя_неделя AS Неделя,
            Пара.Время_начала,
            Пара.Время_окончания,
            Пара.День_недели,
            CONCAT(LEFT(Сотрудник.Имя, 1), '.', LEFT(ISNULL(Сотрудник.Отчество, ''), 1), '.', Сотрудник.Фамилия, ' "', Дисциплина.Название_дисциплины, '" ', Расписание_занятий.Номер_аудитории) AS Расписание
        FROM Расписание_занятий
        JOIN Преподаватель ON Расписание_занятий.ID_преподавателя = Преподаватель.ID_преподавателя
        JOIN Сотрудник ON Преподаватель.ID_сотрудника = Сотрудник.ID_сотрудника
        JOIN Пара ON Расписание_занятий.ID_пары = Пара.ID_пары
        JOIN Дисциплина ON Расписание_занятий.ID_дисциплины = Дисциплина.ID_дисциплины
        JOIN Группа ON Расписание_занятий.ID_группы = Группа.ID_группы
        WHERE Группа.Название_группы = @GroupName
    )

    SELECT 
        Неделя,
        FORMAT(Время_начала, N'hh\:mm') AS Время_начала,
        FORMAT(Время_окончания, N'hh\:mm') AS Время_окончания,
        Понедельник,
        Вторник,
        Среда,
        Четверг,
        Пятница
    FROM ScheduleCTE
    PIVOT
    (
        MAX(Расписание) FOR День_недели IN ([Понедельник], [Вторник], [Среда], [Четверг], [Пятница])
    ) AS PivotTable
END;
GO
/****** Object:  StoredProcedure [dbo].[pr_TransferStudentToAnotherGroup]    Script Date: 23.12.2023 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
CREATE TRIGGER [dbo].[tr_UpdateStudentCount]
ON [dbo].[Студент]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @GroupID INT;
    DECLARE @StudentCount INT;

    DECLARE Group_Cursor CURSOR FOR
    SELECT DISTINCT ID_группы
    FROM inserted
    UNION
    SELECT DISTINCT ID_группы
    FROM deleted;

    OPEN Group_Cursor;

    FETCH NEXT FROM Group_Cursor INTO @GroupID;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        SELECT @StudentCount = COUNT(ID_студента)
        FROM Студент
        WHERE ID_группы = @GroupID;

        UPDATE Группа
        SET Количество_студентов = @StudentCount
        WHERE ID_группы = @GroupID;

        FETCH NEXT FROM Group_Cursor INTO @GroupID;
    END;

    CLOSE Group_Cursor;
    DEALLOCATE Group_Cursor;
END;
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
CREATE TRIGGER [dbo].[tr_ReplaceTeacherInSchedule]
ON [dbo].[Преподаватель]
INSTEAD OF DELETE
AS
BEGIN
    CREATE TABLE #DeletedTeachers (
        ID_преподавателя INT
    );

    INSERT INTO #DeletedTeachers (ID_преподавателя)
    SELECT ID_преподавателя
    FROM DELETED;

    UPDATE Расписание_занятий
    SET ID_преподавателя = (
        SELECT TOP 1 ID_преподавателя
        FROM Преподаватель
        WHERE ID_преподавателя <> (SELECT ID_преподавателя FROM #DeletedTeachers)
    )
    WHERE ID_преподавателя IN (SELECT ID_преподавателя FROM #DeletedTeachers);

    DROP TABLE #DeletedTeachers;

	UPDATE Студент
    SET ID_научного_руководителя = NULL
    WHERE ID_научного_руководителя IN (SELECT ID_преподавателя FROM deleted);

	DELETE FROM Преподаватель
    WHERE ID_преподавателя IN (SELECT ID_преподавателя FROM DELETED);
END;
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
CREATE TRIGGER [dbo].[tr_UpdateTeacherSalary]
ON [dbo].[Преподаватель]
AFTER INSERT, UPDATE
AS
BEGIN
    
    UPDATE Должность
    SET Оклад = ROUND(Должность.Оклад * POWER(1.05, i.Стаж), 2)
    FROM Должность
    INNER JOIN inserted i ON Должность.ID_должности = i.ID_преподавателя
    WHERE Должность.ID_должности = i.ID_преподавателя;
END;
GO
USE [master]
GO
ALTER DATABASE [UniversityDB] SET  READ_WRITE 
GO
