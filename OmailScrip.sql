
ALTER DATABASE [Omail] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Omail].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Omail] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Omail] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Omail] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Omail] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Omail] SET ARITHABORT OFF 
GO
ALTER DATABASE [Omail] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Omail] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Omail] SET AUTO_UPDATE_STATISTICS ON  
GO
ALTER DATABASE [Omail] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Omail] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Omail] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Omail] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Omail] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Omail] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Omail] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Omail] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Omail] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Omail] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Omail] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Omail] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Omail] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Omail] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Omail] SET RECOVERY FULL 
GO
ALTER DATABASE [Omail] SET  MULTI_USER 
GO
ALTER DATABASE [Omail] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Omail] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Omail] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Omail] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Omail] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Omail', N'ON'
GO
ALTER DATABASE [Omail] SET QUERY_STORE = OFF
GO
USE [Omail]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepId] [int] IDENTITY(1,1) NOT NULL,
	[DepName] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[DepId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Email]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Email](
	[EmailId] [int] IDENTITY(1,1) NOT NULL,
	[EmpId] [int] NOT NULL,
	[E_Subject] [varchar](255) NULL,
	[Body] [nvarchar](4000) NULL,
	[IsPublicEmail] [bit] NULL,
	[IsGroupEmail] [bit] NULL,
	[IsPrivateEmail] [bit] NULL,
	[Parent] [int] NULL,
	[SentTime] [datetime] NULL,
	[sentToList] [varchar](1000) NULL,
 CONSTRAINT [PK__Email__7ED91ACF09DF3230] PRIMARY KEY CLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpGroup]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpGroup](
	[GroupId] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmpId] [int] IDENTITY(1,1) NOT NULL,
	[EmpName] [varchar](45) NULL,
	[FirstName] [varchar](45) NULL,
	[LastName] [varchar](45) NULL,
	[EmpEmail] [varchar](255) NULL,
	[BirthDate] [date] NULL,
	[PhoneNumber] [varchar](20) NULL,
	[EmpHash] [varchar](610) NULL,
	[OrgCode] [varchar](610) NULL,
	[Gender] [varchar](6) NULL,
	[loginStatus] [bit] NULL,
	[IsAdmin] [bit] NULL,
	[InGroup] [bit] NULL,
	[IsGroupManager] [bit] NULL,
	[IsOrgManager] [bit] NULL,
	[OrgId] [int] NULL,
	[DepId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_has_Email]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_has_Email](
	[EmpId] [int] NOT NULL,
	[EmailId] [int] NOT NULL,
	[IsStarred] [bit] NULL,
	[IsSnoozed] [bit] NULL,
	[IsSent] [bit] NULL,
	[IsSpam] [bit] NULL,
	[IsSeen] [bit] NULL,
	[WasDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_In_Group]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_In_Group](
	[EmpId] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
	[ProjectName] [varchar](80) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organization]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization](
	[OrgId] [int] IDENTITY(1,1) NOT NULL,
	[OrgName] [varchar](50) NULL,
	[EstablishDate] [date] NULL,
	[Vision_Statement] [nvarchar](4000) NULL,
	[OrgType] [varchar](20) NULL,
	[HasOrgCode] [bit] NULL,
	[Manager_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrgId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[OrgName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organization_has_Partner]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization_has_Partner](
	[PartnerId] [int] NOT NULL,
	[OrgId] [int] NOT NULL,
	[SharedVision] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Employee]    Script Date: 12/14/2019 11:21:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_Employee] ON [dbo].[Employee]
(
	[PhoneNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Email] ADD  CONSTRAINT [DF_Email_SentTime]  DEFAULT (getdate()) FOR [SentTime]
GO
ALTER TABLE [dbo].[Employee_has_Email] ADD  CONSTRAINT [DF_Employee_has_Email_IsStarred]  DEFAULT ((0)) FOR [IsStarred]
GO
ALTER TABLE [dbo].[Employee_has_Email] ADD  CONSTRAINT [DF_Employee_has_Email_IsSnoozed]  DEFAULT ((0)) FOR [IsSnoozed]
GO
ALTER TABLE [dbo].[Employee_has_Email] ADD  CONSTRAINT [DF_Employee_has_Email_IsSent]  DEFAULT ((0)) FOR [IsSent]
GO
ALTER TABLE [dbo].[Employee_has_Email] ADD  CONSTRAINT [DF_Employee_has_Email_IsSpam]  DEFAULT ((0)) FOR [IsSpam]
GO
ALTER TABLE [dbo].[Employee_has_Email] ADD  CONSTRAINT [DF_Employee_has_Email_IsSeen]  DEFAULT ((0)) FOR [IsSeen]
GO
ALTER TABLE [dbo].[Employee_has_Email] ADD  CONSTRAINT [DF_Employee_has_Email_WasDeleted]  DEFAULT ((0)) FOR [WasDeleted]
GO
ALTER TABLE [dbo].[Email]  WITH CHECK ADD  CONSTRAINT [FK__Email__Parent__44FF419A] FOREIGN KEY([Parent])
REFERENCES [dbo].[Email] ([EmailId])
GO
ALTER TABLE [dbo].[Email] CHECK CONSTRAINT [FK__Email__Parent__44FF419A]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([DepId])
REFERENCES [dbo].[Department] ([DepId])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([OrgId])
REFERENCES [dbo].[Organization] ([OrgId])
GO
ALTER TABLE [dbo].[Employee_has_Email]  WITH CHECK ADD  CONSTRAINT [FK__Employee___Email__4D94879B] FOREIGN KEY([EmailId])
REFERENCES [dbo].[Email] ([EmailId])
GO
ALTER TABLE [dbo].[Employee_has_Email] CHECK CONSTRAINT [FK__Employee___Email__4D94879B]
GO
ALTER TABLE [dbo].[Employee_has_Email]  WITH CHECK ADD FOREIGN KEY([EmpId])
REFERENCES [dbo].[Employee] ([EmpId])
GO
ALTER TABLE [dbo].[Employee_In_Group]  WITH CHECK ADD FOREIGN KEY([EmpId])
REFERENCES [dbo].[Employee] ([EmpId])
GO
ALTER TABLE [dbo].[Employee_In_Group]  WITH CHECK ADD FOREIGN KEY([GroupId])
REFERENCES [dbo].[EmpGroup] ([GroupId])
GO
ALTER TABLE [dbo].[Organization_has_Partner]  WITH CHECK ADD FOREIGN KEY([OrgId])
REFERENCES [dbo].[Organization] ([OrgId])
GO
ALTER TABLE [dbo].[Organization_has_Partner]  WITH CHECK ADD FOREIGN KEY([PartnerId])
REFERENCES [dbo].[Organization] ([OrgId])
GO
/****** Object:  StoredProcedure [dbo].[AddDepartment]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*CREATE TABLE Department(
	DepId INT Identity(1,1) PRIMARY KEY,
	DepName VARCHAR(45),
)*/


CREATE PROCEDURE [dbo].[AddDepartment]
    @DepName VARCHAR(45)
AS
BEGIN

    INSERT INTO Department (DepName)
        VALUES(@DepName)

    DECLARE @LatestID INT = SCOPE_IDENTITY() /*FINDS THE LATEST CREATED AUTO INCREMENTED ID*/

    -- SELECT @LatestID -- return the ID if you want.

END
GO
/****** Object:  StoredProcedure [dbo].[AddEmail]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddEmail]
	@EmpId INT,
	@E_Subject VARCHAR(255),
	@Body NVARCHAR(4000),
	@IsPublicEmail BIT, 
	@IsGroupMail BIT,
	@IsPrivateEmail BIT,
	@Parent INT = NULL,
    @SentToList VARCHAR(1000) -- List of the Ids of the Employees the email was sent to.
AS
    SET XACT_ABORT ON
BEGIN
BEGIN TRANSACTION

    INSERT INTO Email (EmpId, E_Subject, Body, IsPublicEmail, IsGroupEmail, IsPrivateEmail, Parent)
        VALUES(@EmpId, @E_Subject, @Body, @IsPublicEmail, @IsGroupMail, @IsPrivateEmail, @Parent)

    DECLARE @LatestID INT = SCOPE_IDENTITY() /*FINDS THE LATEST CREATED AUTO INCREMENTED ID */

    INSERT INTO Employee_has_Email (EmailId, EmpId)
        SELECT @LatestID, e.VALUE
        FROM STRING_SPLIT(@SentToList, ',') as e

    -- SELECT @LatestID -- return the ID if you want.


COMMIT TRANSACTION
END
GO
/****** Object:  StoredProcedure [dbo].[AddEmpGroup]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*CREATE TABLE EmpGroup(
GroupId INT Identity(1,1) PRIMARY KEY,
GroupName VARCHAR(45)

)*/

CREATE PROCEDURE [dbo].[AddEmpGroup]
    @GroupName VARCHAR(45)
AS
BEGIN

    INSERT INTO EmpGroup (GroupName)
        VALUES(@GroupName)

    DECLARE @LatestID INT = SCOPE_IDENTITY() /*FINDS THE LATEST CREATED AUTO INCREMENTED ID*/

    -- SELECT @LatestID -- return the ID if you want.

END
GO
/****** Object:  StoredProcedure [dbo].[AddEmployee]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*CREATE TABLE Employee(
	EmpId INT Identity(1,1) PRIMARY KEY,
	EmpName VARCHAR(45),
	FristName VARCHAR(45),
	LastName VARCHAR(45),
	EmpEmail VARCHAR(255),
	BirthDate DATE,
	PhoneNumber VARCHAR(20),
	Hash VARCHAR(258),
	OrgCode VARCHAR(258),
	Gender VARCHAR(6),
	loginStatus BIT,
	IsAdmin BIT,
	InGroup BIT,
	IsGroupManger BIT,
	IsOrgManger BIT,
	OrgId INT,
	DepId INT,
	FOREIGN KEY(OrgId) REFERENCES Organization(OrgId),
	FOREIGN KEY(DepId) REFERENCES Department(DepId)
)*/


/*CREATE TABLE Employee_has_Email(
	EmpId INT NOT NULL,
	EmailId INT NOT NULL,
	IsStarred BIT,
	IsSnoozed BIT,
	IsSpam BIT,
	IsSeen BIT,
	WasDeleted BIT,
	FOREIGN KEY(EmpId) REFERENCES Employee(EmpId),
	FOREIGN KEY(EmailId) REFERENCES Email(EmailId)
)*/

CREATE PROCEDURE [dbo].[AddEmployee]
	@EmpName VARCHAR(45),
	@FirstName VARCHAR(45),
	@LastName VARCHAR(45),
	@EmpEmail VARCHAR(255),
	@BirthDate DATE,
	@PhoneNumber VARCHAR(20),
	@Hash VARCHAR(258),
	@OrgCode VARCHAR(258),
	@Gender VARCHAR(6),
	@loginStatus BIT,
	@IsAdmin BIT,
	@InGroup BIT,
	@IsGroupManager BIT,
	@IsOrgManager BIT,
	@OrgId INT,
	@DepId INT
AS
BEGIN

    INSERT INTO Employee (EmpName, FirstName, LastName, EmpEmail, BirthDate, PhoneNumber, [EmpHash], OrgCode, Gender, loginStatus, IsAdmin, InGroup, IsGroupManager, IsOrgManager, OrgId, DepId)
        VALUES(@EmpName, @FirstName, @LastName, @EmpEmail, @BirthDate, @PhoneNumber, @Hash, @OrgCode, @Gender, @loginStatus, @IsAdmin, @InGroup, @IsGroupManager, @IsOrgManager, @OrgId, @DepId)

    DECLARE @LatestID INT = SCOPE_IDENTITY() /*FINDS THE LATEST CREATED AUTO INCREMENTED ID*/

    -- SELECT @LatestID -- return the ID if you want.

END
GO
/****** Object:  StoredProcedure [dbo].[AddEmpToGroup]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddEmpToGroup]
    @EmpId INT,
    @GroupId INT,
    @ProjectName VARCHAR(80)
AS
BEGIN

    INSERT INTO Employee_In_Group (EmpId, GroupId, ProjectName)
        VALUES(@EmpId, @GroupID, @ProjectName)

END
GO
/****** Object:  StoredProcedure [dbo].[AddOrganization]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*CREATE TABLE Organization(
	OrgId INT Identity(1,1) PRIMARY KEY,
	OrgName VARCHAR(50) UNIQUE,
	EstablishDate DATE,
	Vision_Statement NVARCHAR(4000),
	Org_Location VARCHAR(64),
	Longitude GEOMETRY,
	Latitude GEOMETRY,
	OrgType VARCHAR(20),
	HasOrgCode BIT,
	)*/

-- update to this table:

/*CREATE TABLE Organization(
	OrgId INT Identity(1,1) PRIMARY KEY,
	OrgName VARCHAR(50) UNIQUE,
	EstablishDate DATE,
	Vision_Statement NVARCHAR(4000),
	Org_Location VARCHAR(64),
    Location GEOGRAPHY,
	Longitude AS (Location.Lat),
	Latitude AS (Location.Long),
	OrgType VARCHAR(20),
	HasOrgCode BIT,
	)*/


CREATE PROCEDURE [dbo].[AddOrganization]
    @OrgName VARCHAR(50),
    @EstablishDate DATE,
    @Vision_Statement NVARCHAR(4000),
	@OrgType VARCHAR(20),
	@HasOrgCode BIT
AS
BEGIN


    INSERT INTO Organization (OrgName, EstablishDate, Vision_Statement, OrgType, HasOrgCode)
        VALUES(@OrgName, @EstablishDate, @Vision_Statement, @OrgType, @HasOrgCode)

    DECLARE @LatestID INT = SCOPE_IDENTITY() /*FINDS THE LATEST CREATED AUTO INCREMENTED ID (OrgId)*/

    -- SELECT @LatestID -- return the ID if you want.

END
GO
/****** Object:  StoredProcedure [dbo].[AddOrgPartner]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[AddOrgPartner]
    @OrgId INT,
    @PartnerId INT,
    @SharedVision NVARCHAR(4000)
AS
BEGIN

    INSERT INTO Organization_Has_Partner (OrgId, PartnerId, SharedVision)
        VALUES(@OrgId, @PartnerId, @SharedVision)

END
GO
/****** Object:  StoredProcedure [dbo].[DeleteDepartment]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteDepartment]
    @DepId INT
AS
BEGIN

    DELETE FROM Department WHERE DepId = @DepId

END
GO
/****** Object:  StoredProcedure [dbo].[DeleteEmail]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteEmail]
    @EmailId INT
AS
BEGIN

    DELETE FROM Email WHERE EmailId = @EmailId

    DELETE FROM Employee_has_Email WHERE EmailId = @EmailId

END
GO
/****** Object:  StoredProcedure [dbo].[DeleteEmpGroup]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteEmpGroup]
    @GroupId INT
AS
BEGIN

    DELETE FROM EmpGroup WHERE GroupId = @GroupId

END
GO
/****** Object:  StoredProcedure [dbo].[DeleteEmployee]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteEmployee]
    @EmpId INT
AS
BEGIN

    DELETE FROM Employee WHERE EmpId = @EmpId

END
GO
/****** Object:  StoredProcedure [dbo].[DeleteOrganization]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteOrganization]
    @OrgId INT
AS
BEGIN

    DELETE FROM Organization WHERE OrgId = @OrgId

END
GO
/****** Object:  StoredProcedure [dbo].[GetDepartment]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetDepartment]
    @DepId INT
AS
BEGIN

    SELECT DepId, 
            DepName
    FROM Department
    WHERE DepId = @DepId

END
GO
/****** Object:  StoredProcedure [dbo].[GetDepartments]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetDepartments]
AS
BEGIN

    SELECT DepId, 
            DepName
    FROM Department

END
GO
/****** Object:  StoredProcedure [dbo].[GetEmail]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetEmail]
    @EmailId INT
AS
BEGIN

    SELECT e.EmailId, 
            e.EmpId, emp.FirstName, emp.LastName,
            e.E_Subject, 
            e.Body,
            e.SentTime,
            e.IsPublicEmail,
            e.IsGroupEmail,
            e.IsPrivateEmail,
            e.Parent,
            ehe.EmpId, ehe.IsStarred, ehe.IsSnoozed, ehe.IsSpam, ehe.IsSeen, ehe.WasDeleted
    FROM Email e
    LEFT JOIN Employee emp on emp.EmpId = e.EmpId 
    LEFT JOIN Employee_has_Email ehe on ehe.EmailId = e.EmailId
    -- LEFT JOIN Email em on em.EmailId = e.Parent 
    WHERE e.EmailId = @EmailId  

END
GO
/****** Object:  StoredProcedure [dbo].[GetEmails]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEmails]
AS
BEGIN

    SELECT e.EmailId, 
            e.EmpId, emp.FirstName, emp.LastName,
            e.E_Subject, 
            e.Body,
            e.SentTime,
            e.IsPublicEmail,
            e.IsGroupEmail,
            e.IsPrivateEmail,
            e.Parent,
            ehe.EmpId, ehe.IsStarred, ehe.IsSnoozed, ehe.IsSpam, ehe.IsSeen, ehe.WasDeleted
    FROM Email e
    LEFT JOIN Employee emp on emp.EmpId = e.EmpId 
    LEFT JOIN Employee_has_Email ehe on ehe.EmailId = e.EmailId
	where WasDeleted = 0 
    -- LEFT JOIN Email em on em.EmailId = e.Parent 

END
GO
/****** Object:  StoredProcedure [dbo].[GetEmailsByTime]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEmailsByTime]
    @EmpId int,
    @Date DATETIME
AS
BEGIN

    SELECT e.EmailId
    FROM Email e       
    WHERE e.EmpId = @EmpId AND SentTime = @Date


END
GO
/****** Object:  StoredProcedure [dbo].[GetEmailsSentByEmployees]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetEmailsSentByEmployees]
    @EmpId INT
AS
BEGIN
 
    SELECT e.*, ehe.EmpId as SentToId, emp.EmpEmail as SentToEmail, emp.EmpName as SentToName
    FROM Email e
        LEFT JOIN Employee_has_Email ehe ON ehe.EmailId = e.EmailId
        LEFT JOIN Employee emp ON emp.EmpId = ehe.EmpId
    WHERE e.EmpId = @EmpId

END
GO
/****** Object:  StoredProcedure [dbo].[GetEmpGroup]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetEmpGroup]
    @GroupId INT
AS
BEGIN

    SELECT GroupId, 
            GroupName
    FROM EmpGroup
    WHERE GroupId = @GroupId

END
GO
/****** Object:  StoredProcedure [dbo].[GetEmpGroups]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetEmpGroups]
AS
BEGIN

    SELECT GroupId, 
            GroupName
    FROM EmpGroup

END
GO
/****** Object:  StoredProcedure [dbo].[GetEmployee]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetEmployee]
    @EmpId INT
AS
BEGIN

    SELECT e.EmpId, 
            e.EmpName,
            e.FirstName, 
            e.LastName,
            e.EmpEmail,
            e.BirthDate,
            e.PhoneNumber,
            e.OrgCode,
            e.Gender,
            e.loginStatus,
            e.IsAdmin,
            e.InGroup,
            e.IsGroupManager,
            e.IsOrgManager,
            e.OrgId, o.OrgName,
            e.DepId, d.DepName,
            eig.GroupId, emg.GroupName
    FROM Employee e
        LEFT JOIN Organization o on o.OrgId = e.OrgId
        LEFT JOIN Department d on d.DepId = e.DepId
        LEFT JOIN Employee_In_Group eig on eig.EmpId = e.EmpId
        LEFT JOIN EmpGroup emg on eig.GroupId = emg.GroupId
    WHERE e.EmpId = @EmpId

END
GO
/****** Object:  StoredProcedure [dbo].[GetEmployeeEmails]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEmployeeEmails]
    @EmpId INT
AS
BEGIN

    SELECT e.*
    FROM Email e 
    JOIN Employee_has_Email ehe on ehe.EmailId = e.EmailId
    WHERE ehe.EmpId = @EmpId and ehe.WasDeleted = 0 and IsSpam = 0

END
GO
/****** Object:  StoredProcedure [dbo].[GetEmployees]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetEmployees]
AS
BEGIN

    SELECT e.EmpId, 
            e.EmpName,
            e.FirstName, 
            e.LastName,
            e.EmpEmail,
            e.BirthDate,
            e.PhoneNumber,
            e.OrgCode,
            e.Gender,
            e.loginStatus,
            e.IsAdmin,
            e.InGroup,
            e.IsGroupManager,
            e.IsOrgManager,
            e.OrgId, o.OrgName,
            e.DepId, d.DepName,
            eig.GroupId, emg.GroupName
    FROM Employee e
        LEFT JOIN Organization o on o.OrgId = e.OrgId
        LEFT JOIN Department d on d.DepId = e.DepId
        LEFT JOIN Employee_In_Group eig on eig.EmpId = e.EmpId
        LEFT JOIN EmpGroup emg on eig.GroupId = emg.GroupId

END
GO
/****** Object:  StoredProcedure [dbo].[GetEmployeeSeenEmails]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetEmployeeSeenEmails]
    @EmpId INT
AS
BEGIN

    SELECT e.*
    FROM Email e 
    JOIN Employee_has_Email ehe on ehe.EmailId = e.EmailId
    WHERE ehe.EmpId = @EmpId and ehe.IsSeen = 1 and ehe.WasDeleted = 0

END
GO
/****** Object:  StoredProcedure [dbo].[GetEmployeeSnoozedEmails]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetEmployeeSnoozedEmails]
    @EmpId INT
AS
BEGIN

    SELECT e.*
    FROM Email e 
    JOIN Employee_has_Email ehe on ehe.EmailId = e.EmailId
    WHERE ehe.EmpId = @EmpId and ehe.IsSnoozed = 1 and ehe.WasDeleted = 0

END
GO
/****** Object:  StoredProcedure [dbo].[GetEmployeeSpamEmails]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetEmployeeSpamEmails]
    @EmpId INT
AS
BEGIN

    SELECT e.*
    FROM Email e 
    JOIN Employee_has_Email ehe on ehe.EmailId = e.EmailId
    WHERE ehe.EmpId = @EmpId and ehe.IsSpam = 1 and ehe.WasDeleted = 0

END
GO
/****** Object:  StoredProcedure [dbo].[GetEmployeeStarredEmails]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetEmployeeStarredEmails]
    @EmpId INT
AS
BEGIN

    SELECT e.*
    FROM Email e 
    JOIN Employee_has_Email ehe on ehe.EmailId = e.EmailId
    WHERE ehe.EmpId = @EmpId and ehe.IsStarred = 1 and ehe.WasDeleted = 0

END
GO
/****** Object:  StoredProcedure [dbo].[GetOrganization]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetOrganization]
    @OrgId INT
AS
BEGIN

    SELECT OrgId, 
            OrgName, 
            EstablishDate,
            Vision_Statement,
            OrgType, 
            HasOrgCode
    FROM Organization
    WHERE OrgId = @OrgId

END
GO
/****** Object:  StoredProcedure [dbo].[GetOrganizations]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetOrganizations]
AS
BEGIN

    SELECT o.OrgId, 
            OrgName, 
            EstablishDate,
            Vision_Statement,
            OrgType, 
            HasOrgCode,
            ohp.PartnerId,
            ohp.SharedVision
    FROM Organization o
        left join Organization_Has_Partner ohp on ohp.OrgId = o.OrgId

END
GO
/****** Object:  StoredProcedure [dbo].[MarkEmailAsDeleted]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MarkEmailAsDeleted]
    @EmpId INT,
    @EmailId INT
AS
BEGIN

    UPDATE Employee_has_Email SET WasDeleted = 1, IsSnoozed = 0, IsStarred = 0, IsSeen = 0, IsSpam = 0 WHERE EmpId = @EmpId and EmailId = @EmailId

END
GO
/****** Object:  StoredProcedure [dbo].[MarkEmailAsSeen]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MarkEmailAsSeen]
    @EmpId INT,
    @EmailId INT
AS
BEGIN

    UPDATE Employee_has_Email SET IsSeen = 1 WHERE EmpId = @EmpId and EmailId = @EmailId

END
GO
/****** Object:  StoredProcedure [dbo].[MarkEmailAsSnoozed]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MarkEmailAsSnoozed]
    @EmpId INT,
    @EmailId INT
AS
BEGIN

    UPDATE Employee_has_Email SET IsSnoozed = 1 WHERE EmpId = @EmpId and EmailId = @EmailId

END
GO
/****** Object:  StoredProcedure [dbo].[MarkEmailAsSpam]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MarkEmailAsSpam]
    @EmpId INT,
    @EmailId INT
AS
BEGIN

    UPDATE Employee_has_Email SET IsSpam = 1, IsSnoozed = 0, IsStarred = 0, IsSeen = 0 WHERE EmpId = @EmpId and EmailId = @EmailId

END
GO
/****** Object:  StoredProcedure [dbo].[MarkEmailAsStarred]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MarkEmailAsStarred]
    @EmpId INT,
    @EmailId INT
AS
BEGIN

    UPDATE Employee_has_Email SET IsStarred = 1 WHERE EmpId = @EmpId and EmailId = @EmailId

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateDepartment]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateDepartment]
    @DepId INT,
    @DepName VARCHAR(50)
AS
BEGIN

    UPDATE Department
    SET DepName = @DepName
    WHERE DepId = @DepId

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateEmail]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateEmail]
    @EmailId INT,
	@EmpId INT,
	@E_Subject VARCHAR(255),
	@Body NVARCHAR(4000),
	@IsPublicEmail BIT,
	@IsGroupMail BIT,
	@IsPrivateEmail BIT,
	@Parent INT = NULL,    
    @SentToList VARCHAR(1000) -- List of the Ids of the Employees the email was sent to.
AS
    SET XACT_ABORT ON
BEGIN
BEGIN TRANSACTION

    UPDATE Email
    SET EmpId = @EmpId,
        E_Subject = @E_Subject,
        Body = @Body,
        IsPublicEmail = @IsPublicEmail,
        IsGroupEmail = @IsGroupMail,
        IsPrivateEmail = @IsPrivateEmail,
        Parent = @Parent
    WHERE EmailId = @EmailId

    DELETE FROM Employee_has_Email WHERE EmailId = @EmailId -- delete the older an add the new ones

    INSERT INTO Employee_has_Email (EmailId, EmpId)
        SELECT @EmailId, e.VALUE
        FROM STRING_SPLIT(@SentToList, ',') as e


COMMIT TRANSACTION
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateEmpGroup]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateEmpGroup]
    @GroupId INT,
    @GroupName VARCHAR(50)
AS
BEGIN

    UPDATE EmpGroup
    SET GroupName = @GroupName
    WHERE GroupId = @GroupId

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateEmployee]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateEmployee]
    @EmpId INT,
	@EmpName VARCHAR(45),
	@FirstName VARCHAR(45),
	@LastName VARCHAR(45),
	@EmpEmail VARCHAR(255),
	@BirthDate DATE,
	@PhoneNumber VARCHAR(20),
	@OrgCode VARCHAR(258),
	@Gender VARCHAR(6),
	@loginStatus BIT,
	@IsAdmin BIT,
	@InGroup BIT,
	@IsGroupManager BIT,
	@IsOrgManager BIT,
	@OrgId INT,
	@DepId INT
AS
BEGIN

    UPDATE Employee
    SET EmpName = @EmpName,
        FirstName = @FirstName, 
        LastName = @LastName,
        EmpEmail = @EmpEmail,
        BirthDate = @BirthDate,
        PhoneNumber = @PhoneNumber,
        OrgCode = @OrgCode, 
        Gender = @Gender,
        loginStatus = @loginStatus,
        IsAdmin = @IsAdmin,
        InGroup = @InGroup,
        IsGroupManager = @IsGroupManager,
        IsOrgManager = @IsOrgManager,
        OrgId = @OrgId,
        DepId = @DepId
    WHERE EmpId = @EmpId

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateOrganization]    Script Date: 12/14/2019 11:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateOrganization]
    @OrgId INT,
    @OrgName VARCHAR(50),
    @EstablishDate DATE,
    @Vision_Statement NVARCHAR(4000),
	@OrgType VARCHAR(20),
	@HasOrgCode BIT
AS
BEGIN


    UPDATE Organization
    SET OrgName = @OrgName,
        EstablishDate = @EstablishDate,
        Vision_Statement = @Vision_Statement,
        OrgType = @OrgType,
        HasOrgCode = @HasOrgCode
    WHERE OrgId = @OrgId

END
GO
USE [master]
GO
ALTER DATABASE [Omail] SET  READ_WRITE 
GO
