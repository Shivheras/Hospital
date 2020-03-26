/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4259)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF]    Script Date: 3/26/2020 11:52:35 AM ******/
CREATE DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HospitalDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQL2016\MSSQL\DATA\HospitalDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HospitalDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQL2016\MSSQL\DATA\HospitalDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET ARITHABORT OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET  DISABLE_BROKER 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET  MULTI_USER 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET DB_CHAINING OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET QUERY_STORE = OFF
GO
USE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF]
GO
/****** Object:  Table [dbo].[ApplicationTypes]    Script Date: 3/26/2020 11:52:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationTypes](
	[TimeId] [int] IDENTITY(1,1) NOT NULL,
	[TimeName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TimeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointments]    Script Date: 3/26/2020 11:52:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointments](
	[AppointmentId] [int] IDENTITY(1,1) NOT NULL,
	[Time] [varchar](30) NOT NULL,
	[PatientId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[DoctorId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AppointmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assistants]    Script Date: 3/26/2020 11:52:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assistants](
	[AssistentId] [int] IDENTITY(1,1) NOT NULL,
	[AssistentName] [varchar](50) NOT NULL,
	[PatientId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AssistentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 3/26/2020 11:52:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [varchar](50) NOT NULL,
	[HospitalId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctors]    Script Date: 3/26/2020 11:52:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctors](
	[DoctorId] [int] NOT NULL,
	[DoctorName] [varchar](50) NOT NULL,
	[DepartmentId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DoctorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Drugs]    Script Date: 3/26/2020 11:52:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drugs](
	[DrugId] [int] IDENTITY(1,1) NOT NULL,
	[DrugName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DrugId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HealthcareAssistants]    Script Date: 3/26/2020 11:52:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HealthcareAssistants](
	[AssistentId] [int] IDENTITY(1,1) NOT NULL,
	[AssistentName] [varchar](50) NOT NULL,
	[PatientId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AssistentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hospitals]    Script Date: 3/26/2020 11:52:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hospitals](
	[HospitalId] [int] IDENTITY(1,1) NOT NULL,
	[HospitalName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[HospitalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patients]    Script Date: 3/26/2020 11:52:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patients](
	[PatientId] [int] NOT NULL,
	[PatientName] [varchar](50) NOT NULL,
	[Gender] [varchar](10) NOT NULL,
	[Location] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Treatements]    Script Date: 3/26/2020 11:52:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Treatements](
	[TreatmentId] [int] NOT NULL,
	[PatientId] [int] NOT NULL,
	[DrugName] [varchar](50) NOT NULL,
	[DrugTime] [int] NOT NULL,
	[Diseases] [varchar](50) NOT NULL,
	[DoctorId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TreatmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Treatments]    Script Date: 3/26/2020 11:52:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Treatments](
	[TreatmentId] [int] NOT NULL,
	[PatientId] [int] NOT NULL,
	[DrugName] [varchar](50) NOT NULL,
	[DrugTime] [int] NOT NULL,
	[Diseases] [varchar](50) NOT NULL,
	[DoctorId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TreatmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ApplicationTypes] ON 

INSERT [dbo].[ApplicationTypes] ([TimeId], [TimeName]) VALUES (1, N'Morning')
INSERT [dbo].[ApplicationTypes] ([TimeId], [TimeName]) VALUES (2, N'Afternoon')
INSERT [dbo].[ApplicationTypes] ([TimeId], [TimeName]) VALUES (3, N'Night')
INSERT [dbo].[ApplicationTypes] ([TimeId], [TimeName]) VALUES (4, N'MorningAfternoon')
INSERT [dbo].[ApplicationTypes] ([TimeId], [TimeName]) VALUES (5, N'AfternoonNight')
INSERT [dbo].[ApplicationTypes] ([TimeId], [TimeName]) VALUES (6, N'MorningNight')
INSERT [dbo].[ApplicationTypes] ([TimeId], [TimeName]) VALUES (7, N'MorningNightAfternoon')
SET IDENTITY_INSERT [dbo].[ApplicationTypes] OFF
SET IDENTITY_INSERT [dbo].[Hospitals] ON 

INSERT [dbo].[Hospitals] ([HospitalId], [HospitalName]) VALUES (1, N'Civil')
SET IDENTITY_INSERT [dbo].[Hospitals] OFF
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_Appointments_ToDepartments] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([DepartmentId])
GO
ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_Appointments_ToDepartments]
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_Appointments_ToDoctors] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctors] ([DoctorId])
GO
ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_Appointments_ToDoctors]
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_Appointments_ToPatients] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_Appointments_ToPatients]
GO
ALTER TABLE [dbo].[Assistants]  WITH CHECK ADD  CONSTRAINT [FK_Assistants_ToDepartments] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([DepartmentId])
GO
ALTER TABLE [dbo].[Assistants] CHECK CONSTRAINT [FK_Assistants_ToDepartments]
GO
ALTER TABLE [dbo].[Assistants]  WITH CHECK ADD  CONSTRAINT [FK_Assistants_ToPatients] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Assistants] CHECK CONSTRAINT [FK_Assistants_ToPatients]
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [FK_Departments_ToHospitals] FOREIGN KEY([HospitalId])
REFERENCES [dbo].[Hospitals] ([HospitalId])
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [FK_Departments_ToHospitals]
GO
ALTER TABLE [dbo].[Doctors]  WITH CHECK ADD  CONSTRAINT [FK_Doctors_ToDepartments] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([DepartmentId])
GO
ALTER TABLE [dbo].[Doctors] CHECK CONSTRAINT [FK_Doctors_ToDepartments]
GO
ALTER TABLE [dbo].[Doctors]  WITH CHECK ADD  CONSTRAINT [FK_Doctors_ToPatients] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Doctors] CHECK CONSTRAINT [FK_Doctors_ToPatients]
GO
ALTER TABLE [dbo].[HealthcareAssistants]  WITH CHECK ADD  CONSTRAINT [FK_HealthcareAssistants_ToDepartments] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([DepartmentId])
GO
ALTER TABLE [dbo].[HealthcareAssistants] CHECK CONSTRAINT [FK_HealthcareAssistants_ToDepartments]
GO
ALTER TABLE [dbo].[HealthcareAssistants]  WITH CHECK ADD  CONSTRAINT [FK_HealthcareAssistants_ToPatients] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[HealthcareAssistants] CHECK CONSTRAINT [FK_HealthcareAssistants_ToPatients]
GO
ALTER TABLE [dbo].[Patients]  WITH CHECK ADD  CONSTRAINT [FK_Patients_ToDoctors] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Doctors] ([DoctorId])
GO
ALTER TABLE [dbo].[Patients] CHECK CONSTRAINT [FK_Patients_ToDoctors]
GO
ALTER TABLE [dbo].[Treatements]  WITH CHECK ADD  CONSTRAINT [FK_Treatements_ToApplicationtypes] FOREIGN KEY([DrugTime])
REFERENCES [dbo].[ApplicationTypes] ([TimeId])
GO
ALTER TABLE [dbo].[Treatements] CHECK CONSTRAINT [FK_Treatements_ToApplicationtypes]
GO
ALTER TABLE [dbo].[Treatements]  WITH CHECK ADD  CONSTRAINT [FK_Treatements_ToDoctors] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctors] ([DoctorId])
GO
ALTER TABLE [dbo].[Treatements] CHECK CONSTRAINT [FK_Treatements_ToDoctors]
GO
ALTER TABLE [dbo].[Treatements]  WITH CHECK ADD  CONSTRAINT [FK_Treatements_ToPatients] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Treatements] CHECK CONSTRAINT [FK_Treatements_ToPatients]
GO
ALTER TABLE [dbo].[Treatments]  WITH CHECK ADD  CONSTRAINT [FK_Treatments_ToApplicationtypes] FOREIGN KEY([DrugTime])
REFERENCES [dbo].[ApplicationTypes] ([TimeId])
GO
ALTER TABLE [dbo].[Treatments] CHECK CONSTRAINT [FK_Treatments_ToApplicationtypes]
GO
ALTER TABLE [dbo].[Treatments]  WITH CHECK ADD  CONSTRAINT [FK_Treatments_ToDoctors] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctors] ([DoctorId])
GO
ALTER TABLE [dbo].[Treatments] CHECK CONSTRAINT [FK_Treatments_ToDoctors]
GO
ALTER TABLE [dbo].[Treatments]  WITH CHECK ADD  CONSTRAINT [FK_Treatments_ToPatients] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Treatments] CHECK CONSTRAINT [FK_Treatments_ToPatients]
GO
USE [master]
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\HOSPITALDB.MDF] SET  READ_WRITE 
GO
