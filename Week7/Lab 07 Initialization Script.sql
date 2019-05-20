IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='vc_FollowerList')
BEGIN
	DROP TABLE vc_FollowerList
END

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='vc_UserTagList')
BEGIN
	DROP TABLE vc_UserTagList
END

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='vc_VidCastTagList')
BEGIN
	DROP TABLE vc_VidCastTagList
END

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='vc_Tag')
BEGIN
	DROP TABLE vc_Tag
END

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='vc_UserLogin')
BEGIN
	DROP TABLE vc_UserLogin
END

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='vc_VidCast')
BEGIN
	DROP TABLE vc_VidCast
END

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='vc_Status')
BEGIN
	DROP TABLE vc_Status
END

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='vc_User')
BEGIN
	DROP TABLE vc_User
END

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[vc_VidCastTagList_vc_VidCast]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_VidCastTagList]'))
ALTER TABLE [dbo].[vc_VidCastTagList] DROP CONSTRAINT [vc_VidCastTagList_vc_VidCast]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[vc_VidCastTagList_vc_Tag]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_VidCastTagList]'))
ALTER TABLE [dbo].[vc_VidCastTagList] DROP CONSTRAINT [vc_VidCastTagList_vc_Tag]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[vc_VidCast_vc_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_VidCast]'))
ALTER TABLE [dbo].[vc_VidCast] DROP CONSTRAINT [vc_VidCast_vc_User]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[vc_VidCast_vc_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_VidCast]'))
ALTER TABLE [dbo].[vc_VidCast] DROP CONSTRAINT [vc_VidCast_vc_Status]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[vc_UserTagList_vc_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_UserTagList]'))
ALTER TABLE [dbo].[vc_UserTagList] DROP CONSTRAINT [vc_UserTagList_vc_User]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[vc_UserTagList_vc_Tag]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_UserTagList]'))
ALTER TABLE [dbo].[vc_UserTagList] DROP CONSTRAINT [vc_UserTagList_vc_Tag]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK1_vc_UserLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_UserLogin]'))
ALTER TABLE [dbo].[vc_UserLogin] DROP CONSTRAINT [FK1_vc_UserLogin]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK2_vc_FollowerList]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_FollowerList]'))
ALTER TABLE [dbo].[vc_FollowerList] DROP CONSTRAINT [FK2_vc_FollowerList]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK1_vc_FollowerList]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_FollowerList]'))
ALTER TABLE [dbo].[vc_FollowerList] DROP CONSTRAINT [FK1_vc_FollowerList]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__vc_UserLo__UserL__6CD828CA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vc_UserLogin] DROP CONSTRAINT [DF__vc_UserLo__UserL__6CD828CA]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__vc_User__UserReg__69FBBC1F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vc_User] DROP CONSTRAINT [DF__vc_User__UserReg__69FBBC1F]
END
GO
/****** Object:  Index [U1_vc_VidCastTagList]    Script Date: 05/16/2018 17:29:24 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[vc_VidCastTagList]') AND name = N'U1_vc_VidCastTagList')
ALTER TABLE [dbo].[vc_VidCastTagList] DROP CONSTRAINT [U1_vc_VidCastTagList]
GO
/****** Object:  Index [U1_vc_UserTagList]    Script Date: 05/16/2018 17:29:24 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[vc_UserTagList]') AND name = N'U1_vc_UserTagList')
ALTER TABLE [dbo].[vc_UserTagList] DROP CONSTRAINT [U1_vc_UserTagList]
GO
/****** Object:  Index [U2_vc_User]    Script Date: 05/16/2018 17:29:24 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[vc_User]') AND name = N'U2_vc_User')
ALTER TABLE [dbo].[vc_User] DROP CONSTRAINT [U2_vc_User]
GO
/****** Object:  Index [U1_vc_User]    Script Date: 05/16/2018 17:29:24 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[vc_User]') AND name = N'U1_vc_User')
ALTER TABLE [dbo].[vc_User] DROP CONSTRAINT [U1_vc_User]
GO
/****** Object:  Index [U1_vc_Tag]    Script Date: 05/16/2018 17:29:24 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[vc_Tag]') AND name = N'U1_vc_Tag')
ALTER TABLE [dbo].[vc_Tag] DROP CONSTRAINT [U1_vc_Tag]
GO
/****** Object:  Index [U1_vc_Status]    Script Date: 05/16/2018 17:29:24 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[vc_Status]') AND name = N'U1_vc_Status')
ALTER TABLE [dbo].[vc_Status] DROP CONSTRAINT [U1_vc_Status]
GO
/****** Object:  Index [U1_vc_FollowerList]    Script Date: 05/16/2018 17:29:24 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[vc_FollowerList]') AND name = N'U1_vc_FollowerList')
ALTER TABLE [dbo].[vc_FollowerList] DROP CONSTRAINT [U1_vc_FollowerList]
GO
/****** Object:  Table [dbo].[vc_VidCastTagList]    Script Date: 05/16/2018 17:29:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vc_VidCastTagList]') AND type in (N'U'))
DROP TABLE [dbo].[vc_VidCastTagList]
GO
/****** Object:  Table [dbo].[vc_VidCast]    Script Date: 05/16/2018 17:29:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vc_VidCast]') AND type in (N'U'))
DROP TABLE [dbo].[vc_VidCast]
GO
/****** Object:  Table [dbo].[vc_UserTagList]    Script Date: 05/16/2018 17:29:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vc_UserTagList]') AND type in (N'U'))
DROP TABLE [dbo].[vc_UserTagList]
GO
/****** Object:  Table [dbo].[vc_UserLogin]    Script Date: 05/16/2018 17:29:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vc_UserLogin]') AND type in (N'U'))
DROP TABLE [dbo].[vc_UserLogin]
GO
/****** Object:  Table [dbo].[vc_User]    Script Date: 05/16/2018 17:29:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vc_User]') AND type in (N'U'))
DROP TABLE [dbo].[vc_User]
GO
/****** Object:  Table [dbo].[vc_Tag]    Script Date: 05/16/2018 17:29:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vc_Tag]') AND type in (N'U'))
DROP TABLE [dbo].[vc_Tag]
GO
/****** Object:  Table [dbo].[vc_Status]    Script Date: 05/16/2018 17:29:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vc_Status]') AND type in (N'U'))
DROP TABLE [dbo].[vc_Status]
GO
/****** Object:  Table [dbo].[vc_FollowerList]    Script Date: 05/16/2018 17:29:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vc_FollowerList]') AND type in (N'U'))
DROP TABLE [dbo].[vc_FollowerList]
GO
/****** Object:  Table [dbo].[vc_FollowerList]    Script Date: 05/16/2018 17:29:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vc_FollowerList]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vc_FollowerList](
	[vc_FollowerListID] [int] IDENTITY(1,1) NOT NULL,
	[FollowerID] [int] NOT NULL,
	[FollowedID] [int] NOT NULL,
	[FollowerSince] [datetime] NOT NULL,
 CONSTRAINT [PK_vc_FollowerList] PRIMARY KEY CLUSTERED 
(
	[vc_FollowerListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[vc_Status]    Script Date: 05/16/2018 17:29:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vc_Status]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vc_Status](
	[vc_StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusText] [varchar](20) NOT NULL,
 CONSTRAINT [dbo.vc_Status_pk] PRIMARY KEY CLUSTERED 
(
	[vc_StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[vc_Tag]    Script Date: 05/16/2018 17:29:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vc_Tag]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vc_Tag](
	[vc_TagID] [int] IDENTITY(1,1) NOT NULL,
	[TagText] [varchar](20) NOT NULL,
	[TagDescription] [varchar](100) NULL,
 CONSTRAINT [dbo.vc_Tag_pk] PRIMARY KEY CLUSTERED 
(
	[vc_TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[vc_User]    Script Date: 05/16/2018 17:29:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vc_User]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vc_User](
	[vc_UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](20) NOT NULL,
	[EmailAddress] [varchar](50) NOT NULL,
	[UserDescription] [varchar](200) NULL,
	[WebSiteURL] [varchar](50) NULL,
	[UserRegisteredDate] [datetime] NOT NULL,
 CONSTRAINT [PK_vc_User] PRIMARY KEY CLUSTERED 
(
	[vc_UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[vc_UserLogin]    Script Date: 05/16/2018 17:29:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vc_UserLogin]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vc_UserLogin](
	[vc_UserLoginID] [int] IDENTITY(1,1) NOT NULL,
	[vc_UserID] [int] NOT NULL,
	[UserLoginTimestamp] [datetime] NOT NULL,
	[LoginLocation] [varchar](50) NOT NULL,
 CONSTRAINT [PK_vc_UserLogin] PRIMARY KEY CLUSTERED 
(
	[vc_UserLoginID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[vc_UserTagList]    Script Date: 05/16/2018 17:29:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vc_UserTagList]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vc_UserTagList](
	[vc_UserTagListID] [int] IDENTITY(1,1) NOT NULL,
	[vc_TagID] [int] NOT NULL,
	[vc_UserID] [int] NOT NULL,
 CONSTRAINT [dbo.vc_UserTagList_pk] PRIMARY KEY CLUSTERED 
(
	[vc_UserTagListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[vc_VidCast]    Script Date: 05/16/2018 17:29:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vc_VidCast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vc_VidCast](
	[vc_VidCastID] [int] IDENTITY(1,1) NOT NULL,
	[VidCastTitle] [varchar](50) NOT NULL,
	[StartDateTime] [datetime] NULL,
	[EndDateTime] [datetime] NULL,
	[ScheduleDurationMinutes] [int] NULL,
	[RecordingURL] [varchar](50) NULL,
	[vc_UserID] [int] NOT NULL,
	[vc_StatusID] [int] NOT NULL,
 CONSTRAINT [PK_vc_VidCast] PRIMARY KEY CLUSTERED 
(
	[vc_VidCastID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[vc_VidCastTagList]    Script Date: 05/16/2018 17:29:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vc_VidCastTagList]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vc_VidCastTagList](
	[vc_VidCastTagListID] [int] IDENTITY(1,1) NOT NULL,
	[vc_TagID] [int] NOT NULL,
	[vc_VidCastID] [int] NOT NULL,
 CONSTRAINT [PK_vc_VidCastTagList] PRIMARY KEY CLUSTERED 
(
	[vc_VidCastTagListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[vc_FollowerList] ON 
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (1, 9, 31, CAST(N'2018-01-21T10:19:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (2, 3, 29, CAST(N'2018-02-11T19:40:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (3, 31, 21, CAST(N'2018-01-29T17:45:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (4, 34, 32, CAST(N'2018-01-08T09:21:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (5, 14, 58, CAST(N'2018-01-18T09:07:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (6, 14, 44, CAST(N'2018-01-07T14:38:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (7, 49, 53, CAST(N'2018-01-21T21:21:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (8, 12, 32, CAST(N'2018-01-01T22:19:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (9, 10, 28, CAST(N'2018-01-03T12:28:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (10, 50, 54, CAST(N'2018-01-05T15:21:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (11, 44, 14, CAST(N'2018-02-16T17:45:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (12, 9, 25, CAST(N'2018-02-18T18:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (13, 4, 59, CAST(N'2018-02-10T15:21:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (14, 32, 7, CAST(N'2018-01-24T22:33:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (15, 21, 41, CAST(N'2018-02-02T03:21:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (16, 6, 21, CAST(N'2018-01-26T19:26:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (17, 11, 30, CAST(N'2018-01-04T13:26:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (18, 26, 47, CAST(N'2018-02-22T11:02:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (19, 23, 6, CAST(N'2018-02-25T14:52:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (20, 50, 23, CAST(N'2018-02-21T21:07:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (21, 60, 2, CAST(N'2018-02-09T19:12:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (22, 39, 8, CAST(N'2018-02-04T21:21:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (23, 56, 29, CAST(N'2018-01-25T10:04:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (24, 59, 22, CAST(N'2018-01-02T11:31:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (25, 19, 23, CAST(N'2018-03-01T23:16:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (26, 3, 13, CAST(N'2018-01-14T20:09:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (27, 50, 33, CAST(N'2018-01-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (28, 40, 15, CAST(N'2018-01-31T14:09:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (29, 45, 53, CAST(N'2018-01-05T06:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (30, 5, 29, CAST(N'2018-01-08T11:02:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (31, 5, 33, CAST(N'2018-02-01T02:09:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (32, 15, 1, CAST(N'2018-01-21T21:36:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (33, 30, 44, CAST(N'2018-01-07T20:38:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (34, 50, 34, CAST(N'2018-02-19T05:16:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (35, 24, 4, CAST(N'2018-02-08T06:57:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (36, 39, 44, CAST(N'2018-01-20T06:14:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (37, 49, 57, CAST(N'2018-01-30T06:57:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (38, 49, 46, CAST(N'2018-01-15T05:02:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (39, 58, 55, CAST(N'2018-02-27T00:14:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (40, 57, 29, CAST(N'2018-01-28T23:31:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (41, 31, 14, CAST(N'2018-02-15T07:12:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (42, 43, 37, CAST(N'2018-02-13T18:43:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (43, 2, 53, CAST(N'2018-01-05T20:09:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (44, 26, 54, CAST(N'2018-01-05T20:24:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (45, 21, 29, CAST(N'2018-01-10T12:28:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (46, 25, 35, CAST(N'2018-02-22T03:50:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (47, 15, 41, CAST(N'2018-01-25T07:26:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (48, 18, 19, CAST(N'2018-01-23T17:31:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (49, 34, 37, CAST(N'2018-01-10T13:55:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (50, 29, 47, CAST(N'2018-01-04T23:45:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (51, 31, 17, CAST(N'2018-02-09T07:40:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (52, 3, 58, CAST(N'2018-01-04T14:24:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (53, 49, 4, CAST(N'2018-01-26T04:19:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (54, 31, 27, CAST(N'2018-01-07T08:24:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (55, 15, 13, CAST(N'2018-01-06T12:57:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (56, 60, 50, CAST(N'2018-01-22T08:52:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (57, 7, 1, CAST(N'2018-01-03T08:24:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (58, 11, 39, CAST(N'2018-02-25T05:02:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (59, 45, 60, CAST(N'2018-01-24T07:55:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (60, 61, 12, CAST(N'2018-01-10T11:16:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (61, 62, 43, CAST(N'2018-01-13T05:31:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (62, 47, 50, CAST(N'2018-02-24T09:36:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (63, 4, 46, CAST(N'2018-01-27T10:48:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (64, 14, 26, CAST(N'2018-01-18T15:36:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (65, 40, 23, CAST(N'2018-02-24T18:28:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (66, 3, 45, CAST(N'2018-02-11T17:02:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (67, 46, 19, CAST(N'2018-02-16T16:19:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (68, 1, 14, CAST(N'2018-01-09T03:50:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (69, 50, 3, CAST(N'2018-01-19T22:48:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (70, 42, 22, CAST(N'2018-02-28T12:43:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (71, 60, 4, CAST(N'2018-02-04T09:50:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (72, 42, 27, CAST(N'2018-02-23T08:24:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (73, 52, 35, CAST(N'2018-01-19T19:40:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (74, 48, 21, CAST(N'2018-01-18T03:07:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (75, 23, 5, CAST(N'2018-02-12T11:16:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (76, 2, 46, CAST(N'2018-01-07T16:48:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (77, 13, 49, CAST(N'2018-01-14T19:40:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (78, 30, 34, CAST(N'2018-02-09T06:57:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (79, 36, 54, CAST(N'2018-01-10T00:14:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (80, 45, 51, CAST(N'2018-01-12T04:48:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (81, 54, 53, CAST(N'2018-01-29T14:38:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (82, 61, 56, CAST(N'2018-02-20T12:14:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (83, 53, 37, CAST(N'2018-02-18T18:28:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (84, 62, 27, CAST(N'2018-02-23T08:52:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (85, 10, 8, CAST(N'2018-01-07T03:36:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (86, 24, 32, CAST(N'2018-02-23T05:45:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (87, 7, 59, CAST(N'2018-02-28T14:52:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (88, 8, 23, CAST(N'2018-02-18T15:50:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (89, 7, 43, CAST(N'2018-02-26T12:43:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (90, 2, 6, CAST(N'2018-01-29T13:40:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (91, 51, 14, CAST(N'2018-01-16T19:40:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (92, 37, 35, CAST(N'2018-02-08T10:19:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (93, 7, 2, CAST(N'2018-02-17T15:21:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (94, 7, 36, CAST(N'2018-02-27T21:07:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (95, 24, 52, CAST(N'2018-02-23T21:36:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (96, 16, 41, CAST(N'2018-01-18T21:36:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (97, 6, 37, CAST(N'2018-02-26T04:19:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (98, 19, 33, CAST(N'2018-02-21T18:14:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (99, 34, 39, CAST(N'2018-03-01T02:09:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (100, 41, 16, CAST(N'2018-02-01T13:40:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (101, 12, 33, CAST(N'2018-01-15T12:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (102, 16, 22, CAST(N'2018-01-22T03:36:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (103, 10, 9, CAST(N'2018-01-17T02:09:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (104, 22, 32, CAST(N'2018-02-05T22:04:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (105, 47, 59, CAST(N'2018-01-28T15:21:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (106, 19, 25, CAST(N'2018-01-27T18:28:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (107, 20, 16, CAST(N'2018-01-17T05:45:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (108, 49, 7, CAST(N'2018-02-20T16:19:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (109, 50, 35, CAST(N'2018-01-29T15:07:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (110, 15, 48, CAST(N'2018-01-17T11:16:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (111, 10, 29, CAST(N'2018-01-02T08:52:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (112, 27, 37, CAST(N'2018-02-19T15:36:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (113, 18, 28, CAST(N'2018-01-16T00:28:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (114, 46, 45, CAST(N'2018-02-19T21:07:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (115, 25, 22, CAST(N'2018-01-03T12:14:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (116, 8, 35, CAST(N'2018-02-24T10:48:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (117, 57, 19, CAST(N'2018-02-04T16:48:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (118, 47, 17, CAST(N'2018-02-06T17:02:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (119, 52, 12, CAST(N'2018-01-07T00:57:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (120, 56, 52, CAST(N'2018-02-26T14:24:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (121, 52, 20, CAST(N'2018-02-27T15:07:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (122, 48, 47, CAST(N'2018-01-12T23:45:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (123, 24, 13, CAST(N'2018-01-30T11:02:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (124, 19, 42, CAST(N'2018-02-06T08:52:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (125, 27, 18, CAST(N'2018-01-17T10:33:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (126, 32, 58, CAST(N'2018-02-17T23:31:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (127, 17, 21, CAST(N'2018-02-10T12:57:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (128, 58, 52, CAST(N'2018-01-31T22:19:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (129, 35, 61, CAST(N'2018-01-29T17:02:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (130, 54, 59, CAST(N'2018-02-15T12:57:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (131, 32, 49, CAST(N'2018-02-28T06:57:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (132, 48, 31, CAST(N'2018-01-09T16:19:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (133, 11, 12, CAST(N'2018-01-21T18:14:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (134, 25, 62, CAST(N'2018-01-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (135, 42, 39, CAST(N'2018-02-04T09:50:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (136, 54, 12, CAST(N'2018-01-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (137, 18, 49, CAST(N'2018-01-02T04:48:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (138, 6, 22, CAST(N'2018-02-14T02:24:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (139, 49, 38, CAST(N'2018-01-06T13:55:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (140, 53, 11, CAST(N'2018-01-13T00:43:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (141, 26, 16, CAST(N'2018-01-01T21:50:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (142, 56, 26, CAST(N'2018-02-15T11:45:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (143, 45, 20, CAST(N'2018-01-08T22:48:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (144, 36, 5, CAST(N'2018-01-11T18:28:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (145, 52, 30, CAST(N'2018-01-27T19:55:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (146, 20, 11, CAST(N'2018-01-08T13:26:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (147, 2, 24, CAST(N'2018-01-31T11:16:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (148, 40, 53, CAST(N'2018-02-27T04:04:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (149, 39, 45, CAST(N'2018-01-11T11:02:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (150, 10, 49, CAST(N'2018-02-07T05:45:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (151, 6, 8, CAST(N'2018-01-27T18:14:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (152, 24, 36, CAST(N'2018-01-20T16:33:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (153, 27, 57, CAST(N'2018-01-07T15:36:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (154, 44, 7, CAST(N'2018-02-07T05:45:36.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (155, 53, 18, CAST(N'2018-02-05T19:12:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (156, 34, 59, CAST(N'2018-02-28T08:52:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (157, 41, 36, CAST(N'2018-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (158, 37, 54, CAST(N'2018-02-12T13:12:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (159, 15, 6, CAST(N'2018-02-14T13:55:12.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (160, 54, 13, CAST(N'2018-01-05T12:28:48.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (161, 21, 37, CAST(N'2018-02-19T19:26:24.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (162, 1, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (163, 2, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (164, 3, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (165, 4, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (166, 5, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (167, 6, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (168, 7, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (169, 8, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (170, 9, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (171, 10, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (172, 11, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (173, 12, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (174, 13, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (175, 14, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (176, 15, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (177, 16, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (178, 17, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (179, 18, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (180, 19, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (181, 20, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (182, 21, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (183, 22, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (184, 23, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (185, 24, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (186, 25, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (187, 26, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (188, 27, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (189, 28, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (190, 29, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (191, 30, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (192, 31, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (193, 32, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (194, 33, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (195, 34, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (196, 35, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (197, 36, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (198, 37, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (199, 38, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (200, 39, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (201, 40, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (202, 41, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (203, 42, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (204, 43, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (205, 44, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (206, 45, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (207, 46, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (208, 47, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (209, 48, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (210, 49, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (211, 50, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (212, 51, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (213, 52, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (214, 53, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (215, 54, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (216, 55, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (217, 56, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (218, 57, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (219, 58, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (220, 59, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (221, 60, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (222, 61, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (223, 62, 63, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (224, 1, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (225, 2, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (226, 3, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (227, 4, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (228, 5, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (229, 6, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (230, 7, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (231, 8, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (232, 9, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (233, 10, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (234, 11, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (235, 12, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (236, 13, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (237, 14, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (238, 15, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (239, 16, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (240, 17, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (241, 18, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (242, 19, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (243, 20, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (244, 21, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (245, 22, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (246, 23, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (247, 24, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (248, 25, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (249, 26, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (250, 27, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (251, 28, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (252, 29, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (253, 30, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (254, 31, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (255, 32, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (256, 33, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (257, 34, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (258, 35, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (259, 36, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (260, 37, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (261, 38, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (262, 39, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (263, 40, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (264, 41, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (265, 42, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (266, 43, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (267, 44, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (268, 45, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (269, 46, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (270, 47, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (271, 48, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (272, 49, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (273, 50, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (274, 51, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (275, 52, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (276, 53, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (277, 54, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (278, 55, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (279, 56, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (280, 57, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (281, 58, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (282, 59, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (283, 60, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (284, 61, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (285, 62, 64, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (286, 1, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (287, 2, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (288, 3, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (289, 4, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (290, 5, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (291, 6, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (292, 7, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (293, 8, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (294, 9, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (295, 10, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (296, 11, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (297, 12, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (298, 13, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (299, 14, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (300, 15, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (301, 16, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (302, 17, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (303, 18, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (304, 19, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (305, 20, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (306, 21, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (307, 22, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (308, 23, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (309, 24, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (310, 25, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (311, 26, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (312, 27, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (313, 28, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (314, 29, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (315, 30, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (316, 31, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (317, 32, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (318, 33, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (319, 34, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (320, 35, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (321, 36, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (322, 37, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (323, 38, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (324, 39, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (325, 40, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (326, 41, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (327, 42, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (328, 43, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (329, 44, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (330, 45, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (331, 46, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (332, 47, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (333, 48, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (334, 49, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (335, 50, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (336, 51, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (337, 52, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (338, 53, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (339, 54, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (340, 55, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (341, 56, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (342, 57, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (343, 58, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (344, 59, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (345, 60, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (346, 61, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (347, 62, 65, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (348, 1, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (349, 2, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (350, 3, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (351, 4, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (352, 5, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (353, 6, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (354, 7, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (355, 8, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (356, 9, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (357, 10, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (358, 11, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (359, 12, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (360, 13, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (361, 14, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (362, 15, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (363, 16, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (364, 17, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (365, 18, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (366, 19, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (367, 20, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (368, 21, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (369, 22, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (370, 23, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (371, 24, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (372, 25, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (373, 26, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (374, 27, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (375, 28, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (376, 29, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (377, 30, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (378, 31, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (379, 32, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (380, 33, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (381, 34, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (382, 35, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (383, 36, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (384, 37, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (385, 38, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (386, 39, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (387, 40, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (388, 41, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (389, 42, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (390, 43, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (391, 44, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (392, 45, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (393, 46, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (394, 47, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (395, 48, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (396, 49, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (397, 50, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (398, 51, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (399, 52, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (400, 53, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (401, 54, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (402, 55, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (403, 56, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (404, 57, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (405, 58, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (406, 59, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (407, 60, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (408, 61, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (409, 62, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (410, 1, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (411, 2, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (412, 3, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (413, 4, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (414, 5, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (415, 6, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (416, 7, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (417, 8, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (418, 9, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (419, 10, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (420, 11, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (421, 12, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (422, 13, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (423, 14, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (424, 15, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (425, 16, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (426, 17, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (427, 18, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (428, 19, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (429, 20, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (430, 21, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (431, 22, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (432, 23, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (433, 24, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (434, 25, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (435, 26, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (436, 27, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (437, 28, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (438, 29, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (439, 30, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (440, 31, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (441, 32, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (442, 33, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (443, 34, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (444, 35, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (445, 36, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (446, 37, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (447, 38, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (448, 39, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (449, 40, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (450, 41, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (451, 42, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (452, 43, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (453, 44, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (454, 45, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (455, 46, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (456, 47, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (457, 48, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (458, 49, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (459, 50, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (460, 51, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (461, 52, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (462, 53, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (463, 54, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (464, 55, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (465, 56, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (466, 57, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (467, 58, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (468, 59, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (469, 60, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (470, 61, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (471, 62, 67, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (472, 63, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (473, 64, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (474, 65, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (475, 67, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_FollowerList] ([vc_FollowerListID], [FollowerID], [FollowedID], [FollowerSince]) VALUES (476, 68, 66, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[vc_FollowerList] OFF
GO
SET IDENTITY_INSERT [dbo].[vc_Status] ON 
GO
INSERT [dbo].[vc_Status] ([vc_StatusID], [StatusText]) VALUES (3, N'Finished')
GO
INSERT [dbo].[vc_Status] ([vc_StatusID], [StatusText]) VALUES (1, N'Scheduled')
GO
INSERT [dbo].[vc_Status] ([vc_StatusID], [StatusText]) VALUES (2, N'Started')
GO
SET IDENTITY_INSERT [dbo].[vc_Status] OFF
GO
SET IDENTITY_INSERT [dbo].[vc_Tag] ON 
GO
INSERT [dbo].[vc_Tag] ([vc_TagID], [TagText], [TagDescription]) VALUES (1, N'Personal', NULL)
GO
INSERT [dbo].[vc_Tag] ([vc_TagID], [TagText], [TagDescription]) VALUES (2, N'Professional', NULL)
GO
INSERT [dbo].[vc_Tag] ([vc_TagID], [TagText], [TagDescription]) VALUES (3, N'Sports - General', NULL)
GO
INSERT [dbo].[vc_Tag] ([vc_TagID], [TagText], [TagDescription]) VALUES (4, N'Music', NULL)
GO
INSERT [dbo].[vc_Tag] ([vc_TagID], [TagText], [TagDescription]) VALUES (5, N'Games', NULL)
GO
INSERT [dbo].[vc_Tag] ([vc_TagID], [TagText], [TagDescription]) VALUES (6, N'Motors', NULL)
GO
INSERT [dbo].[vc_Tag] ([vc_TagID], [TagText], [TagDescription]) VALUES (7, N'Fashion', NULL)
GO
INSERT [dbo].[vc_Tag] ([vc_TagID], [TagText], [TagDescription]) VALUES (8, N'Art', NULL)
GO
INSERT [dbo].[vc_Tag] ([vc_TagID], [TagText], [TagDescription]) VALUES (9, N'Collectibles', NULL)
GO
INSERT [dbo].[vc_Tag] ([vc_TagID], [TagText], [TagDescription]) VALUES (10, N'Consoles', NULL)
GO
INSERT [dbo].[vc_Tag] ([vc_TagID], [TagText], [TagDescription]) VALUES (11, N'Audio Recording', NULL)
GO
INSERT [dbo].[vc_Tag] ([vc_TagID], [TagText], [TagDescription]) VALUES (12, N'Football', NULL)
GO
INSERT [dbo].[vc_Tag] ([vc_TagID], [TagText], [TagDescription]) VALUES (13, N'Basketball', NULL)
GO
INSERT [dbo].[vc_Tag] ([vc_TagID], [TagText], [TagDescription]) VALUES (14, N'Baseball', NULL)
GO
SET IDENTITY_INSERT [dbo].[vc_Tag] OFF
GO
SET IDENTITY_INSERT [dbo].[vc_User] ON 
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (1, N'ethanol', N'Donec.tempus@penatibusetmagnis.co.uk', N'Agile development non-disclosure agreement equity analytics crowdfunding value proposition branding low hanging fruit. ', N'http://ethanol.vidcast659.site', CAST(N'2017-12-30T22:19:12.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (2, N'dispatcher', N'quam@aptenttacitisociosqu.ca', N'A/B testing handshake disruptive seed money infographic iteration paradigm shift validation alpha advisor buyer. ', N'http://dispatcher.vidcast659.site', CAST(N'2017-12-08T03:36:00.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (3, N'camel', N'mauris@massanon.edu', N'User experience founders branding entrepreneur iteration gen-z. ', N'http://camel.vidcast659.site', CAST(N'2017-08-14T03:21:36.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (4, N'infatuated', N'mollis@Nam.org', N'Lean startup launch party angel investor branding business-to-business release user experience A/B testing focus stealth validation. ', N'http://infatuated.vidcast659.site', CAST(N'2017-06-07T17:02:24.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (5, N'hygienist', N'magna.Ut@necurnasuscipit.ca', N'Business model canvas accelerator pivot network effects advisor holy grail influencer equity social media stock branding iteration. ', N'http://hygienist.vidcast659.site', CAST(N'2017-03-17T23:16:48.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (6, N'tardy', N'magna@ametconsectetueradipiscing.co.uk', N'Startup leverage growth hacking bootstrapping scrum project gen-z research & development. ', N'http://tardy.vidcast659.site', CAST(N'2017-03-12T15:36:00.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (7, N'wood', N'turpis.egestas.Fusce@massanonante.net', N'Technology investor marketing alpha. ', N'http://wood.vidcast659.site', CAST(N'2017-06-21T15:36:00.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (8, N'mallard', N'vel.lectus.Cum@veliteget.edu', N'Assets sales success bandwidth business model canvas interaction design ecosystem. ', N'http://mallard.vidcast659.site', CAST(N'2017-09-15T19:55:12.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (9, N'lifted', N'eu@elitsed.net', NULL, N'http://lifted.vidcast659.site', CAST(N'2017-04-15T20:24:00.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (10, N'gum', N'ut@pharetraQuisqueac.com', N'Infographic incubator hypotheses client conversion entrepreneur pivot creative gen-z startup gamification.', N'http://gum.vidcast659.site', CAST(N'2017-02-24T09:07:12.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (11, N'doughnut', N'ipsum.primis@Cumsociis.com', N'Assets sales incubator user experience ecosystem android value proposition paradigm shift rockstar innovator validation equity technology metrics. ', N'http://doughnut.vidcast659.site', CAST(N'2017-01-31T01:12:00.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (12, N'bewildered', N'Donec.porttitor.tellus@odioAliquamvulputate.edu', N'Infrastructure research & development venture burn rate gamification beta value proposition startup ownership stock. ', N'http://bewildered.vidcast659.site', CAST(N'2017-12-29T09:07:12.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (13, N'albite', N'nisi@vitaemauris.org', N'Learning curve partnership buzz value proposition release funding. ', N'http://albite.vidcast659.site', CAST(N'2017-07-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (14, N'groggy', N'ornare.In.faucibus@egestas.ca', N'Sales niche market user experience investor social proof influencer. ', N'http://groggy.vidcast659.site', CAST(N'2017-04-20T09:50:24.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (15, N'bicycle', N'Quisque.porttitor.eros@mi.net', N'Success network effects focus monetization iPhone branding MVP startup disruptive conversion assets user experience. ', N'http://bicycle.vidcast659.site', CAST(N'2017-01-17T12:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (16, N'hills', N'vitae.posuere.at@vestibulummassa.co.uk', N'Angel investor technology ramen learning curve non-disclosure agreement investor strategy gamification incubator business plan freemium pivot. ', NULL, CAST(N'2017-10-07T12:43:12.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (17, N'winter', N'accumsan@ascelerisque.net', N'IPad user experience android. ', NULL, CAST(N'2018-04-26T02:09:36.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (18, N'chef', N'ultricies.sem@estMauris.edu', N'Bootstrapping startup accelerator conversion. ', NULL, CAST(N'2017-11-08T23:45:36.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (19, N'untrue', N'Sed@musAeneaneget.ca', N'Release first mover advantage analytics channels validation low hanging fruit freemium user experience prototype crowdsource founders entrepreneur. ', NULL, CAST(N'2017-02-09T12:43:12.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (20, N'ecstatic', N'blandit.enim.consequat@loremutaliquam.co.uk', N'Bandwidth series A financing niche market.', NULL, CAST(N'2017-11-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (21, N'unfinished', N'faucibus@semutcursus.ca', N'Focus MVP infrastructure gamification channels social media investor responsive web design virality ecosystem conversion series A financing rockstar. ', N'http://unfinished.vidcast659.site', CAST(N'2017-04-18T20:24:00.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (22, N'console', N'tristique@justoeuarcu.com', N'Customer buzz strategy hackathon influencer. Launch party ecosystem bandwidth MVP facebook mass market business plan android startup rockstar stock focus. ', N'http://console.vidcast659.site', CAST(N'2017-02-15T15:50:24.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (23, N'laptop', N'adipiscing.ligula@ullamcorpereueuismod.co.uk', N'Infographic business plan angel investor technology niche market launch party. ', N'http://laptop.vidcast659.site', CAST(N'2017-09-15T21:50:24.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (24, N'metacarpal', N'et.magna.Praesent@placerataugueSed.org', N'Research & development startup long tail strategy gamification channels stealth accelerator crowdsource virality niche market marketing market hackathon. ', N'http://metacarpal.vidcast659.site', CAST(N'2017-05-30T11:31:12.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (25, N'football', N'enim.diam@et.org', NULL, N'http://football.vidcast659.site', CAST(N'2018-01-23T18:14:24.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (26, N'przewalski', N'amet@Maurismolestie.org', NULL, N'http://przewalski.vidcast659.site', CAST(N'2017-02-11T08:52:48.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (27, N'prune', N'enim.sit.amet@aliquet.edu', NULL, NULL, CAST(N'2017-06-09T10:04:48.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (28, N'embarrass', N'Nam.ligula@atfringilla.co.uk', NULL, NULL, CAST(N'2018-01-15T05:16:48.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (29, N'period', N'Aenean@Phasellus.net', N'Responsive web design funding beta mass market stealth traction.', NULL, CAST(N'2018-04-08T02:09:36.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (30, N'immaculate', N'tellus.Aenean@Integervulputate.com', N'Traction bandwidth crowdfunding android gen-z handshake niche market. ', NULL, CAST(N'2018-03-01T10:48:00.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (31, N'fountain', N'vel.est.tempor@Aliquam.net', N'Business-to-consumer funding metrics success android influencer gen-z hackathon. ', NULL, CAST(N'2017-07-15T19:12:00.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (32, N'guitar', N'Suspendisse@turpisnonenim.org', N'Research & development founders android infographic supply chain entrepreneur focus social media gamification. ', NULL, CAST(N'2018-02-09T08:09:36.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (33, N'darcy', N'urna.justo@orci.edu', N'Success learning curve social proof direct mailing pivot partnership founders growth hacking scrum project equity seed round beta venture long tail. ', NULL, CAST(N'2017-10-28T06:14:24.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (34, N'program', N'nisl.Quisque.fringilla@liberodui.org', N'Facebook channels virality strategy founders series A financing. ', N'http://program.vidcast659.site', CAST(N'2017-01-29T01:12:00.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (35, N'stay', N'et.magnis@nonmagnaNam.co.uk', NULL, N'http://stay.vidcast659.site', CAST(N'2017-06-25T01:40:48.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (36, N'silly', N'accumsan@gravidasagittisDuis.net', N'Stock founders early adopters low hanging fruit A/B testing buyer user experience infographic bootstrapping android facebook. ', N'http://silly.vidcast659.site', CAST(N'2017-05-25T14:38:24.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (37, N'architect', N'a.dui.Cras@mi.edu', N'Seed round user experience beta social media funding market product management business-to-consumer strategy buyer. ', N'http://architect.vidcast659.site', CAST(N'2017-03-15T13:26:24.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (38, N'worthwhile', N'non.arcu@ac.net', N'Mass market pitch iPad user experience graphical user interface channels. Partner network supply chain agile development bootstrapping.', N'http://worthwhile.vidcast659.site', CAST(N'2018-04-19T08:38:24.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (39, N'fervent', N'sollicitudin.adipiscing@egestasrhoncus.net', NULL, N'http://fervent.vidcast659.site', CAST(N'2018-02-07T19:40:48.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (40, N'principle', N'ac.urna@miac.com', N'Business-to-business ecosystem ramen social media crowdsource series A financing. ', N'http://principle.vidcast659.site', CAST(N'2017-11-01T12:14:24.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (41, N'stars', N'massa@Etiam.co.uk', N'Marketing iPad hypotheses scrum project stealth research & development assets founders funding business-to-business iteration conversion twitter seed money. ', N'http://stars.vidcast659.site', CAST(N'2017-09-07T11:16:48.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (42, N'filament', N'ante@eutellus.org', N'Crowdfunding client A/B testing partner network seed round metrics graphical user interface product management non-disclosure agreement ramen partnership. ', N'http://filament.vidcast659.site', CAST(N'2017-03-27T13:26:24.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (43, N'canadian', N'Curabitur.dictum.Phasellus@eleifendnec.com', N'Agile development ownership business-to-consumer handshake infrastructure hackathon crowdfunding pitch assets marketing vesting period long tail validation. ', N'http://canadian.vidcast659.site', CAST(N'2017-06-27T05:16:48.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (44, N'spilling', N'ullamcorper@Mauris.net', N'Analytics startup market value proposition. ', N'http://spilling.vidcast659.site', CAST(N'2017-10-30T13:55:12.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (45, N'sidesaddle', N'ac.urna.Ut@non.org', N'Ramen angel investor stock scrum project metrics burn rate user experience incubator branding infographic. ', N'http://sidesaddle.vidcast659.site', CAST(N'2017-03-21T03:07:12.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (46, N'carpal', N'In.faucibus.Morbi@Mauris.ca', N'Deployment growth hacking value proposition focus venture disruptive backing pitch vesting period seed money virality crowdfunding A/B testing. ', N'http://carpal.vidcast659.site', CAST(N'2017-01-29T00:43:12.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (47, N'these', N'parturient.montes@ipsum.ca', N'Entrepreneur virality freemium crowdsource long tail marketing paradigm shift startup partnership learning curve channels innovator lean startup client. ', N'http://these.vidcast659.site', CAST(N'2017-12-07T03:50:24.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (48, N'sines', N'dui.nec.tempus@sitametrisus.co.uk', N'Business model canvas hackathon social media user experience ramen creative value proposition.', N'http://sines.vidcast659.site', CAST(N'2017-08-02T22:48:00.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (49, N'accurate', N'In@facilisiseget.co.uk', N'Equity direct mailing conversion first mover advantage disruptive learning curve crowdfunding monetization customer series A financing stealth backing. ', N'http://accurate.vidcast659.site', CAST(N'2017-07-04T08:09:36.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (50, N'residue', N'lobortis@vitae.net', N'Success crowdsource buzz A/B testing backing handshake technology gen-z first mover advantage. ', N'http://residue.vidcast659.site', CAST(N'2017-10-02T13:26:24.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (51, N'ecozone', N'placerat@netusetmalesuada.net', NULL, NULL, CAST(N'2018-03-20T01:26:24.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (52, N'bedtime', N'enim.Etiam@egetmollislectus.edu', N'MVP early adopters lean startup product management. ', NULL, CAST(N'2018-04-06T13:55:12.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (53, N'youthful', N'malesuada@Suspendisse.co.uk', N'Accelerator funding scrum project handshake infographic strategy iteration channels pitch partnership pivot. ', NULL, CAST(N'2018-02-27T05:16:48.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (54, N'symptoms', N'massa@et.co.uk', NULL, NULL, CAST(N'2017-07-31T05:16:48.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (55, N'mandible', N'neque.vitae.semper@velquamdignissim.ca', N'Incubator A/B testing assets interaction design market. ', NULL, CAST(N'2017-05-29T09:50:24.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (56, N'kicking', N'felis.purus@cubiliaCuraeDonec.com', N'User experience ecosystem handshake research & development churn rate technology long tail assets hypotheses bandwidth. ', N'http://kicking.vidcast659.site', CAST(N'2017-12-10T06:43:12.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (57, N'archives', N'ullamcorper.velit@interdumfeugiatSed.com', N'Pitch release analytics investor market alpha. Pivot handshake series A financing.', N'http://archives.vidcast659.site', CAST(N'2017-01-04T15:07:12.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (58, N'bid', N'sed.turpis@hymenaeosMaurisut.co.uk', N'Alpha learning curve first mover advantage series A financing assets startup rockstar bootstrapping buyer direct mailing pivot sales venture prototype. ', N'http://bid.vidcast659.site', CAST(N'2018-04-16T09:07:12.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (59, N'noted', N'adipiscing.fringilla.porttitor@velnislQuisque.com', NULL, NULL, CAST(N'2017-08-07T08:52:48.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (60, N'functions', N'ultrices.posuere.cubilia@magnaPraesent.com', N'Influencer market channels low hanging fruit beta burn rate validation infographic paradigm shift incubator iPad technology. ', N'http://functions.vidcast659.site', CAST(N'2017-04-24T16:33:36.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (61, N'bittern', N'in.consequat@loremsemper.edu', N'Buyer business model canvas growth hacking beta niche market. ', N'http://bittern.vidcast659.site', CAST(N'2017-05-28T14:52:48.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (62, N'humdrum', N'bibendum.fermentum.metus@tincidunt.co.uk', N'Responsive web design non-disclosure agreement crowdfunding bandwidth value proposition release. ', N'http://humdrum.vidcast659.site', CAST(N'2017-04-22T03:36:00.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (63, N'RDwight', N'rdwight@nodomain.xyz', N'Piano Teacher', N'NULL', CAST(N'2017-02-27T00:28:48.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (64, N'SaulHudson', N'slash@nodomain.xyz', N'I like Les Paul guitars', N'NULL', CAST(N'2017-05-08T19:26:24.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (65, N'Gordon', N'sumner@nodomain.xyz', N'Former cop', N'NULL', CAST(N'2017-07-16T09:07:12.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (66, N'TheDoctor', N'tomBaker@nodomain.xyz', N'The definite article', N'NULL', CAST(N'2017-10-22T03:21:36.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (67, N'HairCut', N'S.todd@nodomain.xyz', N'Fleet Street barber shop', N'NULL', CAST(N'2017-03-03T19:55:12.000' AS DateTime))
GO
INSERT [dbo].[vc_User] ([vc_UserID], [UserName], [EmailAddress], [UserDescription], [WebSiteURL], [UserRegisteredDate]) VALUES (68, N'DnDGal', N'dnd@nodomain.xyz', N'NULL', N'NULL', CAST(N'2017-10-21T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[vc_User] OFF
GO
SET IDENTITY_INSERT [dbo].[vc_UserTagList] ON 
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (18, 1, 4)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (69, 1, 11)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (5, 1, 18)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (95, 1, 32)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (73, 1, 35)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (34, 1, 39)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (65, 1, 48)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (83, 1, 53)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (42, 1, 59)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (74, 2, 11)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (90, 2, 12)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (27, 2, 15)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (77, 2, 28)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (64, 2, 33)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (23, 2, 37)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (29, 2, 39)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (43, 2, 53)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (82, 2, 56)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (8, 3, 8)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (68, 3, 34)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (36, 3, 44)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (47, 3, 45)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (52, 3, 52)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (49, 3, 55)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (55, 4, 8)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (57, 4, 13)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (33, 4, 28)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (79, 4, 46)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (107, 4, 63)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (108, 4, 64)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (109, 4, 65)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (110, 4, 66)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (111, 4, 67)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (112, 4, 68)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (15, 5, 3)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (24, 5, 8)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (51, 5, 15)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (45, 5, 16)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (35, 5, 43)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (40, 5, 62)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (14, 6, 5)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (75, 6, 12)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (66, 6, 20)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (7, 6, 29)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (10, 6, 33)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (103, 6, 40)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (88, 6, 41)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (70, 6, 42)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (3, 6, 52)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (53, 7, 17)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (60, 7, 22)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (4, 7, 46)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (54, 7, 52)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (22, 8, 10)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (12, 8, 11)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (102, 8, 13)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (62, 8, 17)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (28, 8, 22)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (56, 9, 4)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (99, 9, 8)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (67, 9, 13)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (106, 9, 53)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (85, 9, 60)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (105, 10, 1)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (76, 10, 8)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (59, 10, 14)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (37, 10, 17)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (38, 10, 23)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (58, 10, 25)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (78, 10, 40)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (63, 10, 47)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (25, 10, 51)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (50, 10, 52)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (2, 11, 1)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (89, 11, 12)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (61, 11, 25)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (71, 11, 47)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (26, 11, 51)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (30, 11, 60)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (6, 12, 1)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (41, 12, 4)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (93, 12, 5)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (16, 12, 15)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (97, 12, 19)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (21, 12, 21)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (100, 12, 22)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (81, 12, 25)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (31, 12, 34)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (94, 12, 37)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (39, 12, 48)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (98, 12, 56)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (48, 13, 6)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (13, 13, 14)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (101, 13, 16)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (17, 13, 18)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (32, 13, 21)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (92, 13, 25)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (46, 13, 31)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (11, 13, 34)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (84, 13, 35)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (87, 13, 40)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (20, 13, 43)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (96, 13, 46)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (9, 13, 52)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (86, 13, 60)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (91, 14, 11)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (44, 14, 23)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (104, 14, 24)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (19, 14, 31)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (80, 14, 33)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (72, 14, 43)
GO
INSERT [dbo].[vc_UserTagList] ([vc_UserTagListID], [vc_TagID], [vc_UserID]) VALUES (1, 14, 44)
GO
SET IDENTITY_INSERT [dbo].[vc_UserTagList] OFF
GO
SET IDENTITY_INSERT [dbo].[vc_VidCast] ON 
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (1, N'Spiders Of Technology', CAST(N'2018-02-03T17:31:12.000' AS DateTime), CAST(N'2018-02-03T21:36:00.000' AS DateTime), 35, N'~/DAQCYUE', 34, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (2, N'Flowers Of Time', CAST(N'2018-01-12T04:48:00.000' AS DateTime), CAST(N'2018-01-12T07:55:12.000' AS DateTime), 81, N'~/AJRRYMD', 57, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (3, N'Insects Of Heaven', CAST(N'2018-02-07T22:48:00.000' AS DateTime), CAST(N'2018-02-07T23:02:24.000' AS DateTime), 71, N'~/QIYXMQG', 46, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (4, N'Children Of The Oceans', CAST(N'2018-01-27T07:40:48.000' AS DateTime), CAST(N'2018-01-27T09:07:12.000' AS DateTime), 74, N'~/IRKANVH', 66, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (5, N'Mice And Freaks', CAST(N'2018-01-27T00:28:48.000' AS DateTime), CAST(N'2018-01-27T00:43:12.000' AS DateTime), 90, N'~/XDJNMIN', 16, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (6, N'Trains Of Medicine', CAST(N'2018-01-03T15:50:24.000' AS DateTime), CAST(N'2018-01-03T16:19:12.000' AS DateTime), 67, N'~/UBJTKZZ', 18, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (7, N'Signs With Style', CAST(N'2018-01-16T15:50:24.000' AS DateTime), CAST(N'2018-01-16T18:00:00.000' AS DateTime), 77, N'~/OLEFUAQ', 46, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (8, N'Happy Nightmares', CAST(N'2018-02-05T11:45:36.000' AS DateTime), CAST(N'2018-02-05T13:12:00.000' AS DateTime), 31, N'~/MBFBBFP', 68, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (9, N'Cats Per Continent', CAST(N'2018-02-28T16:33:36.000' AS DateTime), CAST(N'2018-02-28T18:43:12.000' AS DateTime), 15, NULL, 32, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (10, N'Athletes Of The Rivers', CAST(N'2018-02-20T20:52:48.000' AS DateTime), CAST(N'2018-02-20T23:16:48.000' AS DateTime), 35, NULL, 62, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (11, N'Planets Of Time', CAST(N'2018-02-06T06:43:12.000' AS DateTime), CAST(N'2018-02-06T07:12:00.000' AS DateTime), 86, NULL, 36, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (12, N'Rodents And Ancestors', CAST(N'2018-01-08T19:12:00.000' AS DateTime), CAST(N'2018-01-09T00:00:00.000' AS DateTime), 79, NULL, 6, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (13, N'Kings And Spiders', CAST(N'2018-01-10T03:21:36.000' AS DateTime), CAST(N'2018-01-10T05:16:48.000' AS DateTime), 47, NULL, 31, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (14, N'Harvest Without Borders', CAST(N'2018-01-29T13:12:00.000' AS DateTime), CAST(N'2018-01-29T15:21:36.000' AS DateTime), 76, NULL, 49, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (15, N'Capitals Of The North', CAST(N'2018-02-03T04:04:48.000' AS DateTime), CAST(N'2018-02-03T07:40:48.000' AS DateTime), 86, NULL, 50, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (16, N'Antique The Caves', CAST(N'2018-01-30T05:02:24.000' AS DateTime), CAST(N'2018-01-30T06:14:24.000' AS DateTime), 32, N'~/MTEJCQB', 28, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (17, N'Pests Of The Hunt', CAST(N'2018-02-15T04:33:36.000' AS DateTime), CAST(N'2018-02-15T06:00:00.000' AS DateTime), 37, N'~/QVRCYBU', 36, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (18, N'Politicians Of Hell', CAST(N'2018-02-19T12:28:48.000' AS DateTime), CAST(N'2018-02-19T16:48:00.000' AS DateTime), 62, N'~/NPZVZWN', 24, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (19, N'Crustaceans Of Hell', CAST(N'2018-01-26T01:12:00.000' AS DateTime), CAST(N'2018-01-26T04:04:48.000' AS DateTime), 81, N'~/NNPPDSP', 48, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (20, N'Friends Of The Lakes', CAST(N'2018-01-03T00:28:48.000' AS DateTime), CAST(N'2018-01-03T04:19:12.000' AS DateTime), 30, N'~/EIRLBXQ', 9, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (21, N'Dinosaurs And Spirits', CAST(N'2018-01-09T07:12:00.000' AS DateTime), CAST(N'2018-01-09T11:02:24.000' AS DateTime), 58, N'~/WVZPODM', 58, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (22, N'Guilds Of The Seas', CAST(N'2018-01-05T22:04:48.000' AS DateTime), CAST(N'2018-01-06T00:14:24.000' AS DateTime), 28, N'~/AZTCVAG', 48, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (23, N'Guardians Of The Hunt', CAST(N'2018-02-02T12:14:24.000' AS DateTime), CAST(N'2018-02-02T13:40:48.000' AS DateTime), 82, N'~/VVVDSFM', 58, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (24, N'Fortunes Of Dreams', CAST(N'2018-01-20T16:48:00.000' AS DateTime), CAST(N'2018-01-20T17:45:36.000' AS DateTime), 76, N'~/AUXRZCW', 66, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (25, N'Animals Of The Caves', CAST(N'2018-02-10T15:36:00.000' AS DateTime), CAST(N'2018-02-10T19:55:12.000' AS DateTime), 26, N'~/OCKMZIG', 6, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (26, N'Devils Of The Planet', CAST(N'2018-02-23T02:09:36.000' AS DateTime), CAST(N'2018-02-23T06:57:36.000' AS DateTime), 48, N'~/XWUKFYN', 48, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (27, N'Angels Of The Harvest', CAST(N'2018-01-03T14:52:48.000' AS DateTime), CAST(N'2018-01-03T15:50:24.000' AS DateTime), 19, N'~/MUYTAQT', 44, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (28, N'Rulers Of The Revolution', CAST(N'2018-01-27T03:50:24.000' AS DateTime), CAST(N'2018-01-27T04:04:48.000' AS DateTime), 72, N'~/LGBBMGY', 13, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (29, N'Queens And Demons', CAST(N'2018-01-29T19:40:48.000' AS DateTime), CAST(N'2018-01-29T22:04:48.000' AS DateTime), 42, N'~/SBLFVCO', 11, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (30, N'Currencies Of The World', CAST(N'2018-02-21T15:07:12.000' AS DateTime), CAST(N'2018-02-21T17:16:48.000' AS DateTime), 39, N'~/USUGVQN', 58, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (31, N'Crimes Of The Harvest', CAST(N'2018-01-17T10:33:36.000' AS DateTime), CAST(N'2018-01-17T13:55:12.000' AS DateTime), 84, N'~/IJZXYWR', 66, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (32, N'Wonders Of Imagination', CAST(N'2018-02-15T16:19:12.000' AS DateTime), CAST(N'2018-02-15T19:55:12.000' AS DateTime), 57, N'~/LPGJRIE', 50, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (33, N'Creatures Of The Universe', CAST(N'2018-02-10T12:00:00.000' AS DateTime), CAST(N'2018-02-10T12:57:36.000' AS DateTime), 67, N'~/VBIPNWM', 37, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (34, N'Fools And Queens', CAST(N'2018-01-05T22:04:48.000' AS DateTime), CAST(N'2018-01-05T22:33:36.000' AS DateTime), 71, N'~/RQHFTOM', 11, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (35, N'Ores With Style', CAST(N'2018-02-22T16:33:36.000' AS DateTime), CAST(N'2018-02-22T18:00:00.000' AS DateTime), 87, N'~/TXZRVTW', 55, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (36, N'Monuments Of The North', CAST(N'2018-01-01T08:52:48.000' AS DateTime), CAST(N'2018-01-01T11:16:48.000' AS DateTime), 42, N'~/VRNQSUA', 4, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (37, N'Awesome Neverland', CAST(N'2018-02-13T11:16:48.000' AS DateTime), CAST(N'2018-02-13T12:43:12.000' AS DateTime), 46, N'~/KOBCHAY', 68, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (38, N'Fish Of Hell', CAST(N'2018-02-03T12:14:24.000' AS DateTime), CAST(N'2018-02-03T13:26:24.000' AS DateTime), 47, NULL, 60, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (39, N'Women Of The Fields', CAST(N'2018-01-23T15:36:00.000' AS DateTime), CAST(N'2018-01-23T18:28:48.000' AS DateTime), 58, NULL, 26, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (40, N'Dogs Of The Harvest', CAST(N'2018-02-28T07:26:24.000' AS DateTime), CAST(N'2018-02-28T08:38:24.000' AS DateTime), 78, NULL, 47, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (41, N'Horses Of The Forest', CAST(N'2018-02-28T16:48:00.000' AS DateTime), CAST(N'2018-02-28T18:28:48.000' AS DateTime), 60, NULL, 34, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (42, N'Planets And Animals', CAST(N'2018-01-03T06:43:12.000' AS DateTime), CAST(N'2018-01-03T10:33:36.000' AS DateTime), 56, NULL, 12, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (43, N'Rats And Mice', CAST(N'2018-02-16T14:09:36.000' AS DateTime), CAST(N'2018-02-16T15:07:12.000' AS DateTime), 69, NULL, 60, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (44, N'Farms With Style', CAST(N'2018-02-05T06:00:00.000' AS DateTime), CAST(N'2018-02-05T10:33:36.000' AS DateTime), 35, N'~/NPCPYTX', 53, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (45, N'Fortunes Of Dreams', CAST(N'2018-02-17T19:55:12.000' AS DateTime), CAST(N'2018-02-18T00:00:00.000' AS DateTime), 76, N'~/QUTHUJV', 54, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (46, N'Fears Of Nature', CAST(N'2018-02-19T12:14:24.000' AS DateTime), CAST(N'2018-02-19T16:33:36.000' AS DateTime), 79, N'~/XTKUXTM', 65, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (47, N'Followers Of The Sky', CAST(N'2018-02-20T02:38:24.000' AS DateTime), CAST(N'2018-02-20T04:33:36.000' AS DateTime), 77, N'~/IYRLMFO', 18, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (48, N'Fools Of The Hunt', CAST(N'2018-01-20T22:33:36.000' AS DateTime), CAST(N'2018-01-21T02:52:48.000' AS DateTime), 41, N'~/IAMKRBY', 15, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (49, N'Queens Of Technology', CAST(N'2018-03-01T07:12:00.000' AS DateTime), CAST(N'2018-03-01T12:00:00.000' AS DateTime), 68, N'~/YXJNFON', 3, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (50, N'Enemies And Corals', CAST(N'2018-01-03T01:55:12.000' AS DateTime), CAST(N'2018-01-03T05:45:36.000' AS DateTime), 38, N'~/RSVZUVK', 40, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (51, N'Iron Of The Depths', CAST(N'2018-02-18T21:21:36.000' AS DateTime), CAST(N'2018-02-19T00:43:12.000' AS DateTime), 24, N'~/TQMTJAC', 10, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (52, N'Make Your DatabaseA Reality', CAST(N'2018-02-25T00:14:24.000' AS DateTime), CAST(N'2018-02-25T01:12:00.000' AS DateTime), 19, N'~/DBETEBC', 23, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (53, N'The Truth About Streaming In 3 Minutes', CAST(N'2018-01-23T06:43:12.000' AS DateTime), CAST(N'2018-01-23T06:57:36.000' AS DateTime), 16, N'~/PGKSSXY', 57, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (54, N'What Is Video and How Does It Work?', CAST(N'2018-01-10T03:07:12.000' AS DateTime), CAST(N'2018-01-10T03:36:00.000' AS DateTime), 17, N'~/ESUCSYS', 50, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (55, N'How To Save Money with Database?', CAST(N'2018-01-28T18:43:12.000' AS DateTime), CAST(N'2018-01-28T19:26:24.000' AS DateTime), 21, N'~/LYISARV', 42, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (56, N'10 Ways To Immediately Start Selling Rock', CAST(N'2018-02-12T13:55:12.000' AS DateTime), CAST(N'2018-02-12T14:52:48.000' AS DateTime), 15, N'~/FTBIXPJ', 62, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (57, N'3 Simple Tips For Using Streaming To Get Ahead You', CAST(N'2018-01-29T06:28:48.000' AS DateTime), CAST(N'2018-01-29T09:50:24.000' AS DateTime), 28, N'~/JJJSUSP', 39, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (58, N'The Video Mystery Revealed', CAST(N'2018-01-09T23:16:48.000' AS DateTime), CAST(N'2018-01-10T04:04:48.000' AS DateTime), 33, N'~/HFXCWRR', 12, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (59, N'2 Things You Must Know About Rock', CAST(N'2018-02-23T06:00:00.000' AS DateTime), CAST(N'2018-02-23T10:19:12.000' AS DateTime), 62, N'~/BXZDWSN', 22, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (60, N'You Can Thank Us Later - 3 Reasons To Stop Thinkin', CAST(N'2018-01-15T07:26:24.000' AS DateTime), CAST(N'2018-01-15T11:02:24.000' AS DateTime), 85, N'~/VNOKHFA', 14, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (61, N'How You Can (Do) Database In 24 Hours Or Less For ', CAST(N'2018-02-04T05:31:12.000' AS DateTime), CAST(N'2018-02-04T05:45:36.000' AS DateTime), 69, N'~/FJMDDRY', 27, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (62, N'How To Improve At Rock In 60 Minutes', CAST(N'2018-01-26T21:36:00.000' AS DateTime), CAST(N'2018-01-27T01:26:24.000' AS DateTime), 21, N'~/ERMAMRG', 16, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (63, N'Who Else Wants To Know The Mystery Behind Streamin', CAST(N'2018-02-21T23:31:12.000' AS DateTime), CAST(N'2018-02-22T01:26:24.000' AS DateTime), 52, N'~/LHYTCKU', 31, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (64, N'3 Ways Twitter Destroyed My Video Without Me Notic', CAST(N'2018-02-19T15:36:00.000' AS DateTime), CAST(N'2018-02-19T17:16:48.000' AS DateTime), 34, N'~/XTMCVVZ', 36, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (65, N'The Ultimate Deal On Rock', CAST(N'2018-01-18T04:48:00.000' AS DateTime), CAST(N'2018-01-18T09:21:36.000' AS DateTime), 15, N'~/OONWMRH', 23, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (66, N'5 Best Ways To Sell Database', CAST(N'2018-02-15T22:04:48.000' AS DateTime), CAST(N'2018-02-16T02:38:24.000' AS DateTime), 52, N'~/PCNFINA', 16, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (67, N'The Next 3 Things To Immediately Do About Rock', CAST(N'2018-01-14T19:26:24.000' AS DateTime), CAST(N'2018-01-14T20:38:24.000' AS DateTime), 73, N'~/DNQDEPB', 32, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (68, N'Revolutionize Your Streaming With These Easy-peasy', CAST(N'2018-02-06T14:52:48.000' AS DateTime), CAST(N'2018-02-06T17:02:24.000' AS DateTime), 53, N'~/CXRIDUD', 39, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (69, N'How You Can (Do) Video Almost Instantly', CAST(N'2018-02-18T08:09:36.000' AS DateTime), CAST(N'2018-02-18T11:31:12.000' AS DateTime), 35, N'~/ABBOMVH', 3, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (70, N'The Truth About Database In 3 Minutes', CAST(N'2018-02-28T11:45:36.000' AS DateTime), CAST(N'2018-02-28T15:21:36.000' AS DateTime), 55, NULL, 55, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (71, N'Streaming And Love - How They Are The Same', CAST(N'2018-02-06T00:43:12.000' AS DateTime), CAST(N'2018-02-06T05:31:12.000' AS DateTime), 57, NULL, 68, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (72, N'5 Best Ways To Sell Video', CAST(N'2018-01-20T23:45:36.000' AS DateTime), CAST(N'2018-01-21T01:12:00.000' AS DateTime), 18, NULL, 50, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (73, N'Database: The Samurai Way', CAST(N'2018-01-17T19:26:24.000' AS DateTime), CAST(N'2018-01-17T20:38:24.000' AS DateTime), 80, NULL, 23, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (74, N'Want To Step Up Your Rock? You Need To Read This F', CAST(N'2018-01-31T22:48:00.000' AS DateTime), CAST(N'2018-02-01T00:28:48.000' AS DateTime), 43, NULL, 19, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (75, N'What Everyone Ought To Know About Streaming', CAST(N'2018-01-24T03:36:00.000' AS DateTime), CAST(N'2018-01-24T06:28:48.000' AS DateTime), 29, NULL, 25, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (76, N'101 Ideas For Database', CAST(N'2018-01-04T06:57:36.000' AS DateTime), CAST(N'2018-01-04T10:19:12.000' AS DateTime), 55, NULL, 58, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (77, N'Rock Made Simple - Even Your Kids Can Do It', CAST(N'2018-01-14T16:19:12.000' AS DateTime), CAST(N'2018-01-14T20:52:48.000' AS DateTime), 17, NULL, 56, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (78, N'Essential Video Smartphone Apps', CAST(N'2018-01-07T05:31:12.000' AS DateTime), CAST(N'2018-01-07T07:40:48.000' AS DateTime), 76, NULL, 56, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (79, N'9 Ways Database Can Make You Invincible', CAST(N'2018-02-25T13:40:48.000' AS DateTime), CAST(N'2018-02-25T15:36:00.000' AS DateTime), 50, NULL, 20, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (80, N'Why Ignoring Rock Will Cost You Time and Sales', CAST(N'2018-02-05T21:36:00.000' AS DateTime), CAST(N'2018-02-06T00:28:48.000' AS DateTime), 47, NULL, 9, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (81, N'The Ultimate Guide To Video', CAST(N'2018-01-15T18:43:12.000' AS DateTime), CAST(N'2018-01-15T22:33:36.000' AS DateTime), 58, N'~/ANUJCWZ', 47, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (82, N'How To Lose Money With Database', CAST(N'2018-02-28T19:40:48.000' AS DateTime), CAST(N'2018-02-28T20:38:24.000' AS DateTime), 17, N'~/AUVTGLK', 8, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (83, N'This Study Will Perfect Your Rock: Read Or Miss Ou', CAST(N'2018-01-25T19:55:12.000' AS DateTime), CAST(N'2018-01-26T00:43:12.000' AS DateTime), 72, N'~/RIWEFFZ', 66, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (84, N'7 Rules About Video Meant To Be Broken', CAST(N'2018-02-28T03:36:00.000' AS DateTime), CAST(N'2018-02-28T04:04:48.000' AS DateTime), 18, N'~/WCBKRCA', 59, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (85, N'Are You Making These Rock Mistakes?', CAST(N'2018-01-03T17:45:36.000' AS DateTime), CAST(N'2018-01-03T18:28:48.000' AS DateTime), 82, N'~/DCGYNYJ', 43, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (86, N'Are You Embarrassed By Your Streaming Skills? Here', CAST(N'2018-02-01T19:26:24.000' AS DateTime), CAST(N'2018-02-01T21:21:36.000' AS DateTime), 43, N'~/GLNWTAK', 31, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (87, N'Video And Love - How They Are The Same', CAST(N'2018-01-29T11:45:36.000' AS DateTime), CAST(N'2018-01-29T16:33:36.000' AS DateTime), 23, N'~/PPMECCR', 45, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (88, N'Marriage And Database Have More In Common Than You', CAST(N'2018-01-06T14:38:24.000' AS DateTime), CAST(N'2018-01-06T16:33:36.000' AS DateTime), 31, N'~/JTJQRRF', 10, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (89, N'10 Ways To Immediately Start Selling Streaming', CAST(N'2018-01-05T09:50:24.000' AS DateTime), CAST(N'2018-01-05T13:55:12.000' AS DateTime), 65, N'~/ICDDMKC', 26, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (90, N'How To Take The Headache Out Of Video', CAST(N'2018-01-18T11:02:24.000' AS DateTime), CAST(N'2018-01-18T14:38:24.000' AS DateTime), 29, N'~/FVKBWUF', 20, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (91, N'Double Your Profit With These 5 Tips on Rock', CAST(N'2018-02-15T10:04:48.000' AS DateTime), CAST(N'2018-02-15T11:45:36.000' AS DateTime), 15, N'~/MYIGBFU', 25, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (92, N'How To Learn Streaming', CAST(N'2018-01-14T22:48:00.000' AS DateTime), CAST(N'2018-01-14T23:16:48.000' AS DateTime), 35, N'~/NGRDNZS', 42, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (93, N'The Lazy Way To Video', CAST(N'2018-02-11T19:26:24.000' AS DateTime), CAST(N'2018-02-11T22:19:12.000' AS DateTime), 20, N'~/PHBTCNZ', 14, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (94, N'Get The Most Out of Database and Facebook', CAST(N'2018-01-16T17:02:24.000' AS DateTime), CAST(N'2018-01-16T21:50:24.000' AS DateTime), 15, N'~/QJTFOSC', 35, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (95, N'Being A Star In Your Industry Is A Matter Of Rock', CAST(N'2018-01-07T12:14:24.000' AS DateTime), CAST(N'2018-01-07T13:55:12.000' AS DateTime), 57, N'~/NVBKRGZ', 13, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (96, N'Here Is A Method That Is Helping Video', CAST(N'2018-01-21T03:50:24.000' AS DateTime), CAST(N'2018-01-21T04:48:00.000' AS DateTime), 66, N'~/FPNPQFR', 52, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (97, N'Double Your Profit With These 5 Tips on Database', CAST(N'2018-02-15T13:55:12.000' AS DateTime), CAST(N'2018-02-15T15:21:36.000' AS DateTime), 29, N'~/YOALBRI', 62, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (98, N'5 Reasons Video Is A Waste Of Time', CAST(N'2018-01-21T07:40:48.000' AS DateTime), CAST(N'2018-01-21T12:14:24.000' AS DateTime), 88, NULL, 3, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (99, N'10 Ways To Reinvent Your Rock', CAST(N'2018-02-20T06:14:24.000' AS DateTime), CAST(N'2018-02-20T07:12:00.000' AS DateTime), 32, NULL, 58, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (100, N'3 Mistakes In Streaming That Make You Look Dumb', CAST(N'2018-02-01T16:04:48.000' AS DateTime), CAST(N'2018-02-01T17:31:12.000' AS DateTime), 21, NULL, 21, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (101, N'13 Myths About Video', CAST(N'2018-01-08T07:26:24.000' AS DateTime), CAST(N'2018-01-08T08:38:24.000' AS DateTime), 29, NULL, 3, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (102, N'Database? It''s Easy If You Do It Smart', CAST(N'2018-02-03T13:55:12.000' AS DateTime), CAST(N'2018-02-03T14:24:00.000' AS DateTime), 18, NULL, 12, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (103, N'How To Start Streaming With Less Than $100', CAST(N'2018-02-03T11:16:48.000' AS DateTime), CAST(N'2018-02-03T11:31:12.000' AS DateTime), 90, NULL, 48, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (104, N'Why Ignoring Video Will Cost You Time and Sales', CAST(N'2018-02-10T20:38:24.000' AS DateTime), CAST(N'2018-02-10T20:52:48.000' AS DateTime), 33, NULL, 52, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (105, N'Rules Not To Follow About Rock', CAST(N'2018-01-28T12:57:36.000' AS DateTime), CAST(N'2018-01-28T13:40:48.000' AS DateTime), 73, N'~/NDBXZVY', 20, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (106, N'Get The Most Out of Streaming and Facebook', CAST(N'2018-01-18T03:21:36.000' AS DateTime), CAST(N'2018-01-18T05:16:48.000' AS DateTime), 63, N'~/UQPEAPH', 8, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (107, N'Get Rid of Video Once and For All', CAST(N'2018-02-14T15:07:12.000' AS DateTime), CAST(N'2018-02-14T18:14:24.000' AS DateTime), 42, N'~/MPKRZDN', 15, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (108, N'Congratulations! Your Rock Is (Are) About To Stop ', CAST(N'2018-01-11T20:24:00.000' AS DateTime), CAST(N'2018-01-12T01:12:00.000' AS DateTime), 88, N'~/XFSRSPB', 26, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (109, N'Double Your Profit With These 5 Tips on Streaming', CAST(N'2018-02-04T02:09:36.000' AS DateTime), CAST(N'2018-02-04T02:52:48.000' AS DateTime), 31, N'~/DQQDVOB', 53, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (110, N'Want A Thriving Business? Focus On Video!', CAST(N'2018-01-23T17:02:24.000' AS DateTime), CAST(N'2018-01-23T18:57:36.000' AS DateTime), 27, N'~/RDCQOVM', 32, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (111, N'Find Out Now, What Should You Do For Fast Rock?', CAST(N'2018-01-31T05:02:24.000' AS DateTime), CAST(N'2018-01-31T07:55:12.000' AS DateTime), 80, N'~/UCUFISX', 52, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (112, N'The Best Way To Streaming', CAST(N'2018-01-20T05:16:48.000' AS DateTime), CAST(N'2018-01-20T09:36:00.000' AS DateTime), 70, N'~/QCPWUHS', 48, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (113, N'5 Actionable Tips on Video And Twitter.', CAST(N'2018-01-15T15:21:36.000' AS DateTime), CAST(N'2018-01-15T19:26:24.000' AS DateTime), 84, N'~/NMVEARE', 49, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (114, N'Database Iphone Apps', CAST(N'2018-02-22T00:43:12.000' AS DateTime), CAST(N'2018-02-22T05:16:48.000' AS DateTime), 33, N'~/QIYMTML', 23, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (115, N'Now You Can Buy An App That is Really Made For Str', CAST(N'2018-02-04T05:45:36.000' AS DateTime), CAST(N'2018-02-04T06:00:00.000' AS DateTime), 35, N'~/CFJPSPR', 9, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (116, N'52 Ways To Avoid Video Burnout', CAST(N'2018-01-24T11:31:12.000' AS DateTime), CAST(N'2018-01-24T13:26:24.000' AS DateTime), 73, NULL, 54, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (117, N'What Everyone Ought To Know About Database', CAST(N'2018-02-04T01:40:48.000' AS DateTime), CAST(N'2018-02-04T05:02:24.000' AS DateTime), 75, NULL, 11, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (118, N'Sexy Rock', CAST(N'2018-02-24T16:33:36.000' AS DateTime), CAST(N'2018-02-24T18:00:00.000' AS DateTime), 27, NULL, 16, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (119, N'11 Methods Of Streaming Domination', CAST(N'2018-01-20T00:00:00.000' AS DateTime), CAST(N'2018-01-20T04:19:12.000' AS DateTime), 30, NULL, 21, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (120, N'How To Get (A) Fabulous Video On A Tight Budget', CAST(N'2018-01-06T20:52:48.000' AS DateTime), CAST(N'2018-01-06T22:04:48.000' AS DateTime), 71, NULL, 39, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (121, N'10 Secret Things You Didn''t Know About Video', CAST(N'2018-01-14T07:55:12.000' AS DateTime), CAST(N'2018-01-14T12:43:12.000' AS DateTime), 40, NULL, 30, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (122, N'5 Ways Of Database That Can Drive You Bankrupt - F', CAST(N'2018-01-25T20:52:48.000' AS DateTime), CAST(N'2018-01-25T22:04:48.000' AS DateTime), 34, NULL, 44, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (123, N'Here''s A Quick Way To Solve A Problem with Rock', CAST(N'2018-01-23T10:19:12.000' AS DateTime), CAST(N'2018-01-23T11:45:36.000' AS DateTime), 18, NULL, 13, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (124, N'The Streaming Mystery Revealed', CAST(N'2018-02-16T04:48:00.000' AS DateTime), CAST(N'2018-02-16T07:40:48.000' AS DateTime), 77, NULL, 10, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (125, N'22 Tips To Start Building A Streaming You Always W', CAST(N'2018-02-03T01:40:48.000' AS DateTime), CAST(N'2018-02-03T02:38:24.000' AS DateTime), 46, N'~/TNRDKJV', 51, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (126, N'Fall In Love With Streaming', CAST(N'2018-02-20T10:33:36.000' AS DateTime), CAST(N'2018-02-20T12:28:48.000' AS DateTime), 78, N'~/DKSGUMD', 58, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (127, N'Why Database Succeeds', CAST(N'2018-01-03T02:38:24.000' AS DateTime), CAST(N'2018-01-03T06:43:12.000' AS DateTime), 16, N'~/ZZNNUPA', 41, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (128, N'Take The Stress Out Of Rock', CAST(N'2018-02-04T07:26:24.000' AS DateTime), CAST(N'2018-02-04T11:45:36.000' AS DateTime), 76, N'~/JFFIRKY', 58, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (129, N'The Quickest & Easiest Way To Streaming', CAST(N'2018-01-14T11:45:36.000' AS DateTime), CAST(N'2018-01-14T15:36:00.000' AS DateTime), 20, N'~/YALODPJ', 20, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (130, N'If You Do Not (Do)Video Now, You Will Hate Yoursel', CAST(N'2018-01-22T04:04:48.000' AS DateTime), CAST(N'2018-01-22T08:24:00.000' AS DateTime), 71, N'~/TQDMFUJ', 40, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (131, N'At Last, The Secret To Database Is Revealed', CAST(N'2018-01-10T19:55:12.000' AS DateTime), CAST(N'2018-01-10T21:21:36.000' AS DateTime), 56, N'~/DZRUEQL', 7, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (132, N'Streaming Adventures', CAST(N'2018-02-17T06:14:24.000' AS DateTime), CAST(N'2018-02-17T06:43:12.000' AS DateTime), 29, N'~/OERCVAA', 8, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (133, N'The Anthony Robins Guide To Video', CAST(N'2018-01-04T08:38:24.000' AS DateTime), CAST(N'2018-01-04T10:48:00.000' AS DateTime), 90, N'~/ZGTHNOZ', 40, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (134, N'5 Incredibly Useful Database Tips For Small Busine', CAST(N'2018-02-16T01:26:24.000' AS DateTime), CAST(N'2018-02-16T02:24:00.000' AS DateTime), 73, N'~/YTMXEWZ', 18, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (135, N'How To Earn $398/Day Using Rock', CAST(N'2018-01-24T19:40:48.000' AS DateTime), CAST(N'2018-01-24T21:50:24.000' AS DateTime), 81, N'~/WHXRWAL', 30, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (136, N'Your Key To Success: Streaming', CAST(N'2018-02-18T06:57:36.000' AS DateTime), CAST(N'2018-02-18T10:33:36.000' AS DateTime), 33, N'~/ZOSZHND', 12, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (137, N'Database Is Essential For Your Success. Read This ', CAST(N'2018-01-31T17:02:24.000' AS DateTime), CAST(N'2018-01-31T21:50:24.000' AS DateTime), 57, N'~/QJCTGKD', 31, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (138, N'What Alberto Savoia Can Teach You About Rock', CAST(N'2018-01-03T19:12:00.000' AS DateTime), CAST(N'2018-01-03T23:45:36.000' AS DateTime), 27, N'~/ODRZBDM', 46, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (139, N'Answered: Your Most Burning Questions About Stream', CAST(N'2018-01-16T02:09:36.000' AS DateTime), CAST(N'2018-01-16T06:14:24.000' AS DateTime), 84, N'~/GAWFSZN', 3, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (140, N'7 Ways To Keep Your Video Growing Without Burning ', CAST(N'2018-02-04T23:16:48.000' AS DateTime), CAST(N'2018-02-05T02:09:36.000' AS DateTime), 41, N'~/JJFGUNT', 50, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (141, N'Here Is A Method That Is Helping Database', CAST(N'2018-02-11T02:09:36.000' AS DateTime), CAST(N'2018-02-11T04:19:12.000' AS DateTime), 74, N'~/FFMAOPX', 38, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (142, N'The Secret of Rock', CAST(N'2018-02-10T00:00:00.000' AS DateTime), CAST(N'2018-02-10T00:43:12.000' AS DateTime), 87, N'~/UWATURW', 43, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (143, N'How To Buy (A) Rock On A Tight Budget', CAST(N'2018-01-22T10:33:36.000' AS DateTime), CAST(N'2018-01-22T13:55:12.000' AS DateTime), 16, N'~/JKYUQGX', 9, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (144, N'Streaming: This Is What Professionals Do', CAST(N'2018-02-23T15:50:24.000' AS DateTime), CAST(N'2018-02-23T18:57:36.000' AS DateTime), 84, NULL, 65, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (145, N'How To Find The Right Video For Your Specific Prod', CAST(N'2018-02-15T07:12:00.000' AS DateTime), CAST(N'2018-02-15T12:00:00.000' AS DateTime), 29, NULL, 9, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (146, N'Secrets To Database – Even In This Down Economy', CAST(N'2018-02-07T01:40:48.000' AS DateTime), CAST(N'2018-02-07T04:19:12.000' AS DateTime), 61, NULL, 10, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (147, N'17 Tricks About Rock You Wish You Knew Before', CAST(N'2018-02-10T18:14:24.000' AS DateTime), CAST(N'2018-02-10T18:28:48.000' AS DateTime), 81, NULL, 37, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (148, N'The Ugly Truth About Streaming', CAST(N'2018-02-01T03:50:24.000' AS DateTime), CAST(N'2018-02-01T05:02:24.000' AS DateTime), 72, NULL, 16, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (149, N'Guaranteed No Stress Video', CAST(N'2018-02-21T02:38:24.000' AS DateTime), CAST(N'2018-02-21T03:21:36.000' AS DateTime), 57, NULL, 49, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (150, N'Don''t Just Sit There! Start Database', CAST(N'2018-02-08T11:02:24.000' AS DateTime), CAST(N'2018-02-08T15:07:12.000' AS DateTime), 46, NULL, 40, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (151, N'Best Make Rock You Will Read This Year (in 2015)', CAST(N'2018-01-16T07:26:24.000' AS DateTime), CAST(N'2018-01-16T07:55:12.000' AS DateTime), 50, NULL, 48, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (152, N'It''s All About (The) Streaming', CAST(N'2018-01-24T23:45:36.000' AS DateTime), CAST(N'2018-01-25T00:57:36.000' AS DateTime), 75, NULL, 7, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (153, N'Take 10 Minutes to Get Started With Video', CAST(N'2018-02-10T16:48:00.000' AS DateTime), CAST(N'2018-02-10T18:57:36.000' AS DateTime), 73, NULL, 6, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (154, N'5 Ways You Can Get More Database While Spending Le', CAST(N'2018-01-19T11:31:12.000' AS DateTime), CAST(N'2018-01-19T14:09:36.000' AS DateTime), 17, NULL, 68, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (155, N'Rock: The Samurai Way', CAST(N'2018-03-01T00:14:24.000' AS DateTime), CAST(N'2018-03-01T04:33:36.000' AS DateTime), 49, NULL, 58, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (156, N'World Class Tools Make Streaming Push Button Easy', CAST(N'2018-02-16T03:21:36.000' AS DateTime), CAST(N'2018-02-16T04:04:48.000' AS DateTime), 53, NULL, 20, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (157, N'Rules Not To Follow About Database', CAST(N'2018-02-23T00:43:12.000' AS DateTime), CAST(N'2018-02-23T04:04:48.000' AS DateTime), 16, N'~/IBQCUXY', 43, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (158, N'Believe In Your Streaming Skills But Never Stop Im', CAST(N'2018-02-28T20:09:36.000' AS DateTime), CAST(N'2018-02-28T23:16:48.000' AS DateTime), 18, N'~/RTZRITW', 42, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (159, N'How To Win Buyers And Influence Sales with Databas', CAST(N'2018-02-16T08:38:24.000' AS DateTime), CAST(N'2018-02-16T12:28:48.000' AS DateTime), 51, N'~/YNEXKZR', 53, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (160, N'How To Save Money with Rock?', CAST(N'2018-02-28T15:36:00.000' AS DateTime), CAST(N'2018-02-28T17:45:36.000' AS DateTime), 55, N'~/GCMMPLJ', 63, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (161, N'Here''s A Quick Way To Solve A Problem with Streami', CAST(N'2018-02-06T23:31:12.000' AS DateTime), CAST(N'2018-02-07T03:07:12.000' AS DateTime), 79, N'~/GYSXLKF', 20, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (162, N'Double Your Profit With These 5 Tips on Video', CAST(N'2018-01-30T23:16:48.000' AS DateTime), CAST(N'2018-01-31T04:04:48.000' AS DateTime), 81, N'~/SHSHRPC', 47, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (163, N'3 Things Everyone Knows About Database That You Do', CAST(N'2018-02-15T09:36:00.000' AS DateTime), CAST(N'2018-02-15T11:16:48.000' AS DateTime), 60, N'~/ZQPKZNE', 68, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (164, N'10 Warning Signs Of Your Streaming Demise', CAST(N'2018-01-31T22:04:48.000' AS DateTime), CAST(N'2018-02-01T02:38:24.000' AS DateTime), 52, N'~/XXJKUQX', 65, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (165, N'10 Ways To Immediately Start Selling Video', CAST(N'2018-01-16T23:16:48.000' AS DateTime), CAST(N'2018-01-16T23:31:12.000' AS DateTime), 90, N'~/VBOAZDC', 39, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (166, N'Picture Your Database On Top. Read This And Make I', CAST(N'2018-01-31T01:55:12.000' AS DateTime), CAST(N'2018-01-31T02:09:36.000' AS DateTime), 43, N'~/KSALPWA', 9, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (167, N'10 Secret Things You Didn''t Know About Streaming', CAST(N'2018-02-09T03:07:12.000' AS DateTime), CAST(N'2018-02-09T06:43:12.000' AS DateTime), 84, N'~/MTDTIMS', 63, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (168, N'Fascinating Database Tactics That Can Help Your Bu', CAST(N'2018-02-28T01:26:24.000' AS DateTime), CAST(N'2018-02-28T05:16:48.000' AS DateTime), 26, N'~/UHVIHHY', 14, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (169, N'A Guide To Rock At Any Age', CAST(N'2018-01-15T23:16:48.000' AS DateTime), CAST(N'2018-01-16T02:09:36.000' AS DateTime), 18, N'~/KXOWADV', 46, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (170, N'I Don''t Want To Spend This Much Time On Streaming.', CAST(N'2018-01-01T00:43:12.000' AS DateTime), CAST(N'2018-01-01T03:07:12.000' AS DateTime), 79, N'~/GQSQCCQ', 22, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (171, N'Where Can You Find Free Video Resources', CAST(N'2018-01-07T15:07:12.000' AS DateTime), CAST(N'2018-01-07T18:57:36.000' AS DateTime), 32, N'~/PURJSZZ', 7, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (172, N'Top 10 Tips To Grow Your Database', CAST(N'2018-02-16T06:43:12.000' AS DateTime), CAST(N'2018-02-16T09:07:12.000' AS DateTime), 68, N'~/WXBTHTG', 25, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (173, N'It''s All About (The) Rock', CAST(N'2018-01-07T17:45:36.000' AS DateTime), CAST(N'2018-01-07T18:57:36.000' AS DateTime), 75, N'~/ZGJIUKP', 60, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (174, N'The Untapped Gold Mine Of Streaming That Virtually', CAST(N'2018-01-08T22:04:48.000' AS DateTime), CAST(N'2018-01-09T02:09:36.000' AS DateTime), 78, N'~/EFBWVYG', 45, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (175, N'Some People Excel At Video And Some Don''t - Which ', CAST(N'2018-02-10T02:24:00.000' AS DateTime), CAST(N'2018-02-10T03:07:12.000' AS DateTime), 50, N'~/UCZMJAA', 57, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (176, N'Top 25 Quotes On Database', CAST(N'2018-03-01T07:12:00.000' AS DateTime), CAST(N'2018-03-01T08:24:00.000' AS DateTime), 79, N'~/IXMHHWX', 29, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (177, N'Remarkable Website - Rock Will Help You Get There', CAST(N'2018-02-23T11:45:36.000' AS DateTime), CAST(N'2018-02-23T12:43:12.000' AS DateTime), 76, N'~/VYUETLF', 4, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (178, N'How To Quit Streaming In 5 Days', CAST(N'2018-01-18T22:48:00.000' AS DateTime), CAST(N'2018-01-18T23:31:12.000' AS DateTime), 54, N'~/HYVDOJZ', 43, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (179, N'Everything You Wanted to Know About Video and Were', CAST(N'2018-01-11T03:07:12.000' AS DateTime), CAST(N'2018-01-11T05:45:36.000' AS DateTime), 27, N'~/SJURXZR', 21, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (180, N'17 Tricks About Database You Wish You Knew Before', CAST(N'2018-02-01T08:24:00.000' AS DateTime), CAST(N'2018-02-01T09:36:00.000' AS DateTime), 33, N'~/BAXHOQM', 19, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (181, N'2 Ways You Can Use Rock To Become Irresistible To ', CAST(N'2018-02-26T16:33:36.000' AS DateTime), CAST(N'2018-02-26T17:45:36.000' AS DateTime), 75, N'~/BOBLOHF', 68, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (182, N'5 Brilliant Ways To Use Database', CAST(N'2018-02-16T11:31:12.000' AS DateTime), CAST(N'2018-02-16T15:07:12.000' AS DateTime), 29, N'~/QFMDTWF', 7, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (183, N'Now You Can Have The Rock Of Your Dreams – Cheaper', CAST(N'2018-02-16T09:21:36.000' AS DateTime), CAST(N'2018-02-16T12:28:48.000' AS DateTime), 33, N'~/QCDWAWD', 56, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (184, N'5 Romantic Streaming Ideas', CAST(N'2018-02-08T16:19:12.000' AS DateTime), CAST(N'2018-02-08T20:52:48.000' AS DateTime), 17, N'~/VCVVTLV', 26, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (185, N'Apply These 5 Secret Techniques To Improve Video', CAST(N'2018-01-23T20:52:48.000' AS DateTime), CAST(N'2018-01-24T01:40:48.000' AS DateTime), 86, N'~/VMGNZFA', 19, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (186, N'Want More Money? Start Rock', CAST(N'2018-01-06T07:40:48.000' AS DateTime), CAST(N'2018-01-06T10:33:36.000' AS DateTime), 38, N'~/CFDNAJH', 57, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (187, N'You Don''t Have To Be A Big Corporation To Start St', CAST(N'2018-01-30T13:26:24.000' AS DateTime), CAST(N'2018-01-30T15:50:24.000' AS DateTime), 59, N'~/LLZPWPM', 68, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (188, N'7 Rules About Database Meant To Be Broken', CAST(N'2018-01-25T00:57:36.000' AS DateTime), CAST(N'2018-01-25T05:16:48.000' AS DateTime), 33, N'~/DDTZLXF', 29, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (189, N'Now You Can Buy An App That is Really Made For Vid', CAST(N'2018-02-21T09:21:36.000' AS DateTime), CAST(N'2018-02-21T10:48:00.000' AS DateTime), 52, N'~/OZTPPZM', 34, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (190, N'5 Brilliant Ways To Teach Your Audience About Data', CAST(N'2018-02-13T17:31:12.000' AS DateTime), CAST(N'2018-02-13T17:45:36.000' AS DateTime), 87, N'~/ZDVNEPX', 43, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (191, N'Using 7 Rock Strategies Like The Pros', CAST(N'2018-02-16T07:12:00.000' AS DateTime), CAST(N'2018-02-16T08:24:00.000' AS DateTime), 49, N'~/ZLGLWXO', 11, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (192, N'How To Start A Business With Streaming', CAST(N'2018-01-06T04:19:12.000' AS DateTime), CAST(N'2018-01-06T06:00:00.000' AS DateTime), 52, N'~/ZQRCDIM', 28, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (193, N'Rock Works Only Under These Conditions', CAST(N'2018-01-09T12:28:48.000' AS DateTime), CAST(N'2018-01-09T13:55:12.000' AS DateTime), 58, N'~/SPCKMJR', 30, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (194, N'Sick And Tired Of Doing Video The Old Way? Read Th', CAST(N'2018-02-16T19:26:24.000' AS DateTime), CAST(N'2018-02-16T20:38:24.000' AS DateTime), 35, N'~/JUZRFZM', 25, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (195, N'The Database That Wins Customers', CAST(N'2018-01-05T12:00:00.000' AS DateTime), CAST(N'2018-01-05T12:43:12.000' AS DateTime), 75, N'~/HGTBLBW', 47, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (196, N'10 Funny Streaming Quotes', CAST(N'2018-01-08T08:52:48.000' AS DateTime), CAST(N'2018-01-08T12:57:36.000' AS DateTime), 30, N'~/EGZMAAO', 3, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (197, N'3 Tips About Database You Can''t Afford To Miss', CAST(N'2018-02-14T06:43:12.000' AS DateTime), CAST(N'2018-02-14T09:07:12.000' AS DateTime), 16, N'~/IXVJGCR', 1, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (198, N'Database Smackdown!', CAST(N'2018-02-24T04:48:00.000' AS DateTime), CAST(N'2018-02-24T09:36:00.000' AS DateTime), 20, N'~/KOVPYKS', 43, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (199, N'10 Unforgivable Sins Of Rock', CAST(N'2018-01-15T10:33:36.000' AS DateTime), CAST(N'2018-01-15T10:48:00.000' AS DateTime), 87, N'~/SMUEQWK', 23, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (200, N'How To Become Better With Streaming In 10 Minutes', CAST(N'2018-01-23T21:07:12.000' AS DateTime), CAST(N'2018-01-24T00:14:24.000' AS DateTime), 74, N'~/MWBSQKV', 42, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (201, N'How To Turn Database Into Success', CAST(N'2018-01-12T20:38:24.000' AS DateTime), CAST(N'2018-01-13T00:00:00.000' AS DateTime), 68, N'~/SYELNOG', 37, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (202, N'Avoid The Top 10 Mistakes Made By Beginning Rock', CAST(N'2018-01-15T21:21:36.000' AS DateTime), CAST(N'2018-01-15T23:45:36.000' AS DateTime), 30, N'~/CSBILVL', 34, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (203, N'What Can You Do About Streaming Right Now', CAST(N'2018-02-28T15:07:12.000' AS DateTime), CAST(N'2018-02-28T17:16:48.000' AS DateTime), 23, N'~/XNMHCIL', 60, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (204, N'Revolutionize Your Video With These Easy-peasy Tip', CAST(N'2018-01-14T08:09:36.000' AS DateTime), CAST(N'2018-01-14T10:33:36.000' AS DateTime), 62, N'~/WCPWKOB', 36, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (205, N'World Class Tools Make Database Push Button Easy', CAST(N'2018-02-23T17:31:12.000' AS DateTime), CAST(N'2018-02-23T19:55:12.000' AS DateTime), 78, N'~/PMEDRSE', 20, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (206, N'The Untold Secret To Mastering Rock In Just 3 Days', CAST(N'2018-01-21T22:19:12.000' AS DateTime), CAST(N'2018-01-22T02:24:00.000' AS DateTime), 89, N'~/YENLMUK', 8, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (207, N'Old School Streaming', CAST(N'2018-01-11T09:07:12.000' AS DateTime), CAST(N'2018-01-11T10:48:00.000' AS DateTime), 32, N'~/FRXPFZB', 52, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (208, N'Guaranteed No Stress Rock', CAST(N'2018-02-14T13:55:12.000' AS DateTime), CAST(N'2018-02-14T16:48:00.000' AS DateTime), 50, N'~/FTFKXVQ', 1, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (209, N'Here Is A Quick Cure For Video', CAST(N'2018-02-09T20:09:36.000' AS DateTime), CAST(N'2018-02-09T22:48:00.000' AS DateTime), 83, N'~/LVBLYKW', 34, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (210, N'Database Shortcuts - The Easy Way', CAST(N'2018-02-27T14:09:36.000' AS DateTime), CAST(N'2018-02-27T14:52:48.000' AS DateTime), 62, N'~/WIQZRDM', 16, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (211, N'What Everyone Ought To Know About Rock', CAST(N'2018-02-27T17:02:24.000' AS DateTime), CAST(N'2018-02-27T17:16:48.000' AS DateTime), 87, N'~/KHIATJT', 14, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (212, N'Beware The Streaming Scam', CAST(N'2018-02-21T09:50:24.000' AS DateTime), CAST(N'2018-02-21T13:12:00.000' AS DateTime), 69, N'~/VGDCLZE', 33, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (213, N'Why Everything You Know About Video Is A Lie', CAST(N'2018-01-02T15:36:00.000' AS DateTime), CAST(N'2018-01-02T18:43:12.000' AS DateTime), 65, N'~/ADVJMMI', 31, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (214, N'Top 10 Tips With Database', CAST(N'2018-02-12T23:45:36.000' AS DateTime), CAST(N'2018-02-13T02:09:36.000' AS DateTime), 59, N'~/AKMHLUI', 37, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (215, N'Find A Quick Way To Streaming', CAST(N'2018-01-17T02:38:24.000' AS DateTime), CAST(N'2018-01-17T03:07:12.000' AS DateTime), 23, N'~/NKFWQZV', 18, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (216, N'Find Out Now, What Should You Do For Fast Video?', CAST(N'2018-02-13T00:57:36.000' AS DateTime), CAST(N'2018-02-13T05:02:24.000' AS DateTime), 49, N'~/NPQTSJP', 14, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (217, N'How I Improved My Database In One Day', CAST(N'2018-01-15T00:28:48.000' AS DateTime), CAST(N'2018-01-15T04:33:36.000' AS DateTime), 23, N'~/SJOGOGO', 67, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (218, N'How Rock Made Me A Better Salesperson', CAST(N'2018-01-18T18:28:48.000' AS DateTime), CAST(N'2018-01-18T21:50:24.000' AS DateTime), 72, N'~/QHNPXNR', 63, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (219, N'Open The Gates For Video By Using These Simple Tip', CAST(N'2018-01-09T17:16:48.000' AS DateTime), CAST(N'2018-01-09T21:07:12.000' AS DateTime), 73, N'~/LHXRFED', 16, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (220, N'Database And The Chuck Norris Effect', CAST(N'2018-01-22T06:14:24.000' AS DateTime), CAST(N'2018-01-22T08:24:00.000' AS DateTime), 45, N'~/MBPAADT', 20, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (221, N'Here Is What You Should Do For Your Rock', CAST(N'2018-01-03T06:43:12.000' AS DateTime), CAST(N'2018-01-03T10:19:12.000' AS DateTime), 54, N'~/MDEQCOP', 41, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (222, N'Marriage And Streaming Have More In Common Than Yo', CAST(N'2018-01-23T10:19:12.000' AS DateTime), CAST(N'2018-01-23T13:12:00.000' AS DateTime), 55, N'~/VXNDVHM', 15, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (223, N'Find A Quick Way To Database', CAST(N'2018-01-25T03:36:00.000' AS DateTime), CAST(N'2018-01-25T04:48:00.000' AS DateTime), 53, N'~/UULRGRW', 59, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (224, N'How To Take The Headache Out Of Rock', CAST(N'2018-01-14T10:48:00.000' AS DateTime), CAST(N'2018-01-14T12:57:36.000' AS DateTime), 19, N'~/XRNDDBC', 18, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (225, N'10 Best Practices For Streaming', CAST(N'2018-02-18T05:31:12.000' AS DateTime), CAST(N'2018-02-18T09:21:36.000' AS DateTime), 17, N'~/CYWKMUL', 48, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (226, N'Make Your VideoA Reality', CAST(N'2018-02-27T00:00:00.000' AS DateTime), CAST(N'2018-02-27T04:33:36.000' AS DateTime), 73, N'~/ETJZWLE', 24, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (227, N'The Death Of Database And How To Avoid It', CAST(N'2018-02-20T01:12:00.000' AS DateTime), CAST(N'2018-02-20T05:16:48.000' AS DateTime), 75, N'~/MFYZHVC', 64, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (228, N'Rock Is Essential For Your Success. Read This To F', CAST(N'2018-01-22T08:38:24.000' AS DateTime), CAST(N'2018-01-22T11:16:48.000' AS DateTime), 40, N'~/YHVKNNM', 57, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (229, N'At Last, The Secret To Streaming Is Revealed', CAST(N'2018-01-02T09:36:00.000' AS DateTime), CAST(N'2018-01-02T10:48:00.000' AS DateTime), 69, N'~/SKRZOSY', 10, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (230, N'Stop Wasting Time And Start Video', CAST(N'2018-01-15T06:14:24.000' AS DateTime), CAST(N'2018-01-15T06:28:48.000' AS DateTime), 80, N'~/QDOIBNO', 17, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (231, N'3 Ways To Have (A) More Appealing Database', CAST(N'2018-02-13T14:52:48.000' AS DateTime), CAST(N'2018-02-13T16:04:48.000' AS DateTime), 45, N'~/TSDVMIU', 38, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (232, N'10 Tips That Will Make You Influential In Rock', CAST(N'2018-02-22T18:28:48.000' AS DateTime), CAST(N'2018-02-22T22:04:48.000' AS DateTime), 19, N'~/SBPHJPL', 7, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (233, N'The Secrets To Finding World Class Tools For Your ', CAST(N'2018-01-13T00:28:48.000' AS DateTime), CAST(N'2018-01-13T02:38:24.000' AS DateTime), 56, N'~/ALIUDMI', 8, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (234, N'10 Funny Video Quotes', CAST(N'2018-01-24T06:14:24.000' AS DateTime), CAST(N'2018-01-24T07:40:48.000' AS DateTime), 73, N'~/RZREOTV', 4, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (235, N'You Will Thank Us - 10 Tips About Database You Nee', CAST(N'2018-01-31T16:19:12.000' AS DateTime), CAST(N'2018-01-31T20:38:24.000' AS DateTime), 57, N'~/OLPZECR', 60, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (236, N'Does Rock Sometimes Make You Feel Stupid?', CAST(N'2018-02-04T20:24:00.000' AS DateTime), CAST(N'2018-02-04T23:45:36.000' AS DateTime), 69, N'~/GJZXTIA', 62, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (237, N'5 Ways To Get Through To Your Streaming', CAST(N'2018-02-22T17:16:48.000' AS DateTime), CAST(N'2018-02-22T20:52:48.000' AS DateTime), 87, N'~/VDNJUYX', 26, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (238, N'How To Win Buyers And Influence Sales with Rock', CAST(N'2018-02-06T05:02:24.000' AS DateTime), CAST(N'2018-02-06T09:07:12.000' AS DateTime), 57, N'~/TDJIDOR', 24, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (239, N'Need More Time? Read These Tips To Eliminate Strea', CAST(N'2018-01-27T17:45:36.000' AS DateTime), CAST(N'2018-01-27T22:04:48.000' AS DateTime), 27, N'~/DANXVSO', 57, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (240, N'How To Save Money with Video?', CAST(N'2018-02-21T05:31:12.000' AS DateTime), CAST(N'2018-02-21T07:55:12.000' AS DateTime), 73, N'~/FDNEIUL', 66, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (241, N'Can You Pass The Database Test?', CAST(N'2018-01-13T04:48:00.000' AS DateTime), CAST(N'2018-01-13T06:43:12.000' AS DateTime), 46, N'~/UTVYBUD', 46, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (242, N'Now You Can Have The Streaming Of Your Dreams – Ch', CAST(N'2018-01-27T19:26:24.000' AS DateTime), CAST(N'2018-01-27T20:24:00.000' AS DateTime), 32, N'~/RIZJHWQ', 31, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (243, N'What Can Instagramm Teach You About Video', CAST(N'2018-02-18T09:36:00.000' AS DateTime), CAST(N'2018-02-18T10:48:00.000' AS DateTime), 52, N'~/FSHPBBS', 31, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (244, N'How To Win Friends And Influence People with Datab', CAST(N'2018-02-04T20:09:36.000' AS DateTime), CAST(N'2018-02-04T23:45:36.000' AS DateTime), 42, N'~/UDNTZXS', 11, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (245, N'The Lazy Way To Rock', CAST(N'2018-01-28T10:04:48.000' AS DateTime), CAST(N'2018-01-28T10:48:00.000' AS DateTime), 25, N'~/LWALZWY', 21, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (246, N'101 Ideas For Video', CAST(N'2018-01-06T12:28:48.000' AS DateTime), CAST(N'2018-01-06T14:38:24.000' AS DateTime), 82, N'~/ZGRSJZT', 28, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (247, N'Database And Love Have 4 Things In Common', CAST(N'2018-02-27T23:31:12.000' AS DateTime), CAST(N'2018-02-28T01:12:00.000' AS DateTime), 41, N'~/YUXNMVZ', 14, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (248, N'7 and a Half Very Simple Things You Can Do To Save', CAST(N'2018-02-03T10:19:12.000' AS DateTime), CAST(N'2018-02-03T13:26:24.000' AS DateTime), 40, N'~/GDWOQJT', 32, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (249, N'3 Ways To Have (A) More Appealing Streaming', CAST(N'2018-01-18T08:09:36.000' AS DateTime), CAST(N'2018-01-18T12:57:36.000' AS DateTime), 30, N'~/UGAALTZ', 21, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (250, N'What Zombies Can Teach You About Video', CAST(N'2018-01-17T20:38:24.000' AS DateTime), CAST(N'2018-01-17T21:07:12.000' AS DateTime), 78, N'~/AMAWFBM', 16, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (251, N'5 Ways Database Will Help You Get More Business', CAST(N'2018-02-01T23:16:48.000' AS DateTime), CAST(N'2018-02-02T03:50:24.000' AS DateTime), 46, N'~/TDFNXXH', 61, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (252, N'Don''t Fall For This Streaming Scam', CAST(N'2018-01-22T20:52:48.000' AS DateTime), CAST(N'2018-01-22T23:45:36.000' AS DateTime), 73, N'~/WAABBNT', 58, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (253, N'How We Improved Our Database In One Week(Month, Da', CAST(N'2018-02-09T13:40:48.000' AS DateTime), CAST(N'2018-02-09T15:07:12.000' AS DateTime), 66, N'~/BOSMAMD', 45, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (254, N'Fast-Track Your Rock', CAST(N'2018-02-26T23:45:36.000' AS DateTime), CAST(N'2018-02-27T03:36:00.000' AS DateTime), 46, N'~/GQRMXMU', 25, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (255, N'Are You Making These Streaming Mistakes?', CAST(N'2018-01-03T13:40:48.000' AS DateTime), CAST(N'2018-01-03T16:48:00.000' AS DateTime), 78, N'~/JKPLPNG', 67, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (256, N'The Secrets To Finding World Class Tools For Your ', CAST(N'2018-02-18T23:02:24.000' AS DateTime), CAST(N'2018-02-19T00:57:36.000' AS DateTime), 46, N'~/QRXFWKQ', 33, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (257, N'5 Romantic Database Ideas', CAST(N'2018-01-02T21:50:24.000' AS DateTime), CAST(N'2018-01-03T00:57:36.000' AS DateTime), 53, N'~/NWMKIHQ', 42, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (258, N'The Best Way To Rock', CAST(N'2018-01-09T07:55:12.000' AS DateTime), CAST(N'2018-01-09T08:52:48.000' AS DateTime), 77, N'~/RIZVRGQ', 14, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (259, N'Secrets To Getting Streaming To Complete Tasks Qui', CAST(N'2018-01-28T11:16:48.000' AS DateTime), CAST(N'2018-01-28T11:31:12.000' AS DateTime), 58, N'~/AEMXSNC', 23, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (260, N'Get Better Video Results By Following 3 Simple Ste', CAST(N'2018-01-17T17:02:24.000' AS DateTime), CAST(N'2018-01-17T17:31:12.000' AS DateTime), 61, N'~/WVJETIK', 20, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (261, N'How To Make Your Database Look Like A Million Buck', CAST(N'2018-01-05T15:07:12.000' AS DateTime), CAST(N'2018-01-05T18:28:48.000' AS DateTime), 23, N'~/LEDBBVJ', 33, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (262, N'Find Out How I Cured My Database In 2 Days', CAST(N'2018-01-26T22:04:48.000' AS DateTime), CAST(N'2018-01-26T22:48:00.000' AS DateTime), 59, N'~/OFRPBYM', 43, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (263, N'How To Learn Rock', CAST(N'2018-01-07T01:40:48.000' AS DateTime), CAST(N'2018-01-07T01:55:12.000' AS DateTime), 61, N'~/VTWSHZH', 42, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (264, N'Streaming Is Bound To Make An Impact In Your Busin', CAST(N'2018-01-14T09:21:36.000' AS DateTime), CAST(N'2018-01-14T09:36:00.000' AS DateTime), 36, N'~/NXWTAKW', 35, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (265, N'How I Improved My Video In One Day', CAST(N'2018-01-13T04:04:48.000' AS DateTime), CAST(N'2018-01-13T07:40:48.000' AS DateTime), 81, N'~/TSEHTEZ', 26, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (266, N'Clear And Unbiased Facts About Video (Without All ', CAST(N'2018-01-17T11:16:48.000' AS DateTime), CAST(N'2018-01-17T12:14:24.000' AS DateTime), 87, N'~/WOIETRM', 20, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (267, N'How To Teach Database Like A Pro', CAST(N'2018-01-31T16:04:48.000' AS DateTime), CAST(N'2018-01-31T20:38:24.000' AS DateTime), 56, N'~/TGBDZYS', 54, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (268, N'Why You Never See Rock That Actually Works', CAST(N'2018-01-30T17:31:12.000' AS DateTime), CAST(N'2018-01-30T18:28:48.000' AS DateTime), 52, N'~/LEINWTY', 24, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (269, N'What You Should Have Asked Your Teachers About Str', CAST(N'2018-02-18T19:26:24.000' AS DateTime), CAST(N'2018-02-18T20:52:48.000' AS DateTime), 41, N'~/OKZHMYV', 45, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (270, N'How To Make More Database By Doing Less', CAST(N'2018-02-13T12:28:48.000' AS DateTime), CAST(N'2018-02-13T14:38:24.000' AS DateTime), 23, N'~/PDLRDNE', 20, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (271, N'How To Use Rock To Desire', CAST(N'2018-02-02T13:26:24.000' AS DateTime), CAST(N'2018-02-02T17:16:48.000' AS DateTime), 49, N'~/WKORKYB', 27, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (272, N'Have You Heard? Streaming Is Your Best Bet To Grow', CAST(N'2018-02-12T00:28:48.000' AS DateTime), CAST(N'2018-02-12T02:38:24.000' AS DateTime), 64, N'~/HNSSGTX', 38, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (273, N'Use Video To Make Someone Fall In Love With You', CAST(N'2018-01-28T09:36:00.000' AS DateTime), CAST(N'2018-01-28T13:12:00.000' AS DateTime), 74, N'~/JHURPDN', 37, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (274, N'Turn Your Database Into A High Performing Machine', CAST(N'2018-02-13T01:55:12.000' AS DateTime), CAST(N'2018-02-13T04:19:12.000' AS DateTime), 37, N'~/ZJCKVXZ', 26, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (275, N'52 Ways To Avoid Rock Burnout', CAST(N'2018-01-08T23:02:24.000' AS DateTime), CAST(N'2018-01-09T01:40:48.000' AS DateTime), 36, N'~/UTVKLUQ', 11, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (276, N'Warning: These 9 Mistakes Will Destroy Your Rock', CAST(N'2018-02-09T09:21:36.000' AS DateTime), CAST(N'2018-02-09T12:14:24.000' AS DateTime), 74, N'~/EPJKGHN', 46, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (277, N'5 Reasons Streaming Is A Waste Of Time', CAST(N'2018-02-23T14:38:24.000' AS DateTime), CAST(N'2018-02-23T15:36:00.000' AS DateTime), 37, N'~/GQMDNAS', 25, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (278, N'How We Improved Our Video In One Week(Month, Day)', CAST(N'2018-02-28T00:14:24.000' AS DateTime), CAST(N'2018-02-28T02:09:36.000' AS DateTime), 70, N'~/WLRVMYY', 24, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (279, N'World Class Tools Make Rock Push Button Easy', CAST(N'2018-02-20T11:16:48.000' AS DateTime), CAST(N'2018-02-20T12:43:12.000' AS DateTime), 49, N'~/OENUMLH', 1, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (280, N'The A - Z Guide Of Database', CAST(N'2018-02-09T17:02:24.000' AS DateTime), CAST(N'2018-02-09T19:26:24.000' AS DateTime), 28, N'~/ZEIMEKU', 25, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (281, N'Why Most Rock Fail', CAST(N'2018-01-20T03:21:36.000' AS DateTime), CAST(N'2018-01-20T07:26:24.000' AS DateTime), 70, N'~/PYXAPHW', 54, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (282, N'The Untold Secret To Mastering Video In Just 3 Day', CAST(N'2018-02-04T11:02:24.000' AS DateTime), CAST(N'2018-02-04T12:00:00.000' AS DateTime), 86, N'~/HVZXAMO', 10, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (283, N'The Untapped Gold Mine Of Database That Virtually ', CAST(N'2018-01-14T00:43:12.000' AS DateTime), CAST(N'2018-01-14T04:04:48.000' AS DateTime), 41, N'~/BATFDVN', 54, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (284, N'27 Ways To Improve Rock', CAST(N'2018-01-28T23:16:48.000' AS DateTime), CAST(N'2018-01-29T03:07:12.000' AS DateTime), 66, N'~/BKNIGLJ', 38, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (285, N'How To Win Clients And Influence Markets with Stre', CAST(N'2018-01-19T03:36:00.000' AS DateTime), CAST(N'2018-01-19T04:33:36.000' AS DateTime), 27, N'~/UQKQWKW', 28, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (286, N'How To Quit Video In 5 Days', CAST(N'2018-01-28T05:02:24.000' AS DateTime), CAST(N'2018-01-28T06:00:00.000' AS DateTime), 43, N'~/ZGOMDJC', 17, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (287, N'4 Ways You Can Grow Your Creativity Using Database', CAST(N'2018-01-06T05:45:36.000' AS DateTime), CAST(N'2018-01-06T07:55:12.000' AS DateTime), 89, N'~/CVEZGDR', 47, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (288, N'What You Can Learn From Bill Gates About Rock', CAST(N'2018-01-16T11:02:24.000' AS DateTime), CAST(N'2018-01-16T12:14:24.000' AS DateTime), 16, N'~/DOMLPTS', 11, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (289, N'At Last, The Secret To Streaming Is Revealed', CAST(N'2018-01-24T18:14:24.000' AS DateTime), CAST(N'2018-01-24T23:02:24.000' AS DateTime), 36, N'~/RKBWHRE', 53, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (290, N'This Study Will Perfect Your Video: Read Or Miss O', CAST(N'2018-01-16T08:24:00.000' AS DateTime), CAST(N'2018-01-16T08:52:48.000' AS DateTime), 64, N'~/CSUVUXA', 19, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (291, N'Database: This Is What Professionals Do', CAST(N'2018-02-15T18:00:00.000' AS DateTime), CAST(N'2018-02-15T21:36:00.000' AS DateTime), 61, N'~/HRPGQYF', 28, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (292, N'Are You Embarrassed By Your Rock Skills? Here''s Wh', CAST(N'2018-01-31T18:43:12.000' AS DateTime), CAST(N'2018-01-31T19:26:24.000' AS DateTime), 31, N'~/QORCWKR', 31, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (293, N'Got Stuck? Try These Tips To Streamline Your Strea', CAST(N'2018-02-26T16:19:12.000' AS DateTime), CAST(N'2018-02-26T17:02:24.000' AS DateTime), 22, N'~/EDYTRCY', 4, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (294, N'How To Handle Every Video Challenge With Ease Usin', CAST(N'2018-02-21T23:02:24.000' AS DateTime), CAST(N'2018-02-22T03:07:12.000' AS DateTime), 53, N'~/MYESBRL', 36, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (295, N'The Ugly Truth About Database', CAST(N'2018-01-03T14:24:00.000' AS DateTime), CAST(N'2018-01-03T16:04:48.000' AS DateTime), 26, N'~/MTBAGGQ', 18, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (296, N'If You Want To Be A Winner, Change Your Rock Philo', CAST(N'2018-01-04T03:50:24.000' AS DateTime), CAST(N'2018-01-04T05:45:36.000' AS DateTime), 63, N'~/EJAHFLP', 57, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (297, N'9 Ridiculous Rules About Video', CAST(N'2018-01-25T19:12:00.000' AS DateTime), CAST(N'2018-01-25T22:19:12.000' AS DateTime), 76, N'~/SXCXYNA', 17, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (298, N'Best 50 Tips For Database', CAST(N'2018-02-24T23:45:36.000' AS DateTime), CAST(N'2018-02-25T01:55:12.000' AS DateTime), 22, N'~/IHUXCJT', 24, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (299, N'The Rock Mystery Revealed', CAST(N'2018-02-18T03:07:12.000' AS DateTime), CAST(N'2018-02-18T07:12:00.000' AS DateTime), 86, N'~/YSZLYEU', 54, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (300, N'Succeed With Streaming In 24 Hours', CAST(N'2018-02-23T04:48:00.000' AS DateTime), CAST(N'2018-02-23T09:36:00.000' AS DateTime), 20, N'~/NGDUNCG', 50, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (301, N'Don''t Just Sit There! Start Video', CAST(N'2018-02-07T17:02:24.000' AS DateTime), CAST(N'2018-02-07T19:26:24.000' AS DateTime), 48, N'~/OYZXLHG', 63, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (302, N'The Next 3 Things To Immediately Do About Database', CAST(N'2018-01-04T16:33:36.000' AS DateTime), CAST(N'2018-01-04T17:31:12.000' AS DateTime), 59, N'~/PYOZWOM', 32, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (303, N'What You Should Have Asked Your Teachers About Roc', CAST(N'2018-01-17T12:43:12.000' AS DateTime), CAST(N'2018-01-17T14:38:24.000' AS DateTime), 76, N'~/GSFHZRA', 4, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (304, N'5 Problems Everyone Has With Streaming – How To So', CAST(N'2018-02-25T12:43:12.000' AS DateTime), CAST(N'2018-02-25T13:55:12.000' AS DateTime), 70, N'~/SYOQUFS', 11, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (305, N'Find Out How I Cured My Video In 2 Days', CAST(N'2018-02-08T22:48:00.000' AS DateTime), CAST(N'2018-02-09T00:14:24.000' AS DateTime), 49, N'~/RUBHPVL', 59, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (306, N'5 Actionable Tips on Database And Twitter.', CAST(N'2018-01-07T04:48:00.000' AS DateTime), CAST(N'2018-01-07T06:43:12.000' AS DateTime), 27, N'~/QNSSWAM', 45, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (307, N'How We Improved Our Streaming In One Week(Month, D', CAST(N'2018-01-02T21:50:24.000' AS DateTime), CAST(N'2018-01-03T00:00:00.000' AS DateTime), 90, N'~/YEYIQJF', 63, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (308, N'22 Tips To Start Building A Video You Always Wante', CAST(N'2018-02-13T20:24:00.000' AS DateTime), CAST(N'2018-02-13T20:52:48.000' AS DateTime), 60, N'~/KFMZBWZ', 8, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (309, N'How To Win Clients And Influence Markets with Data', CAST(N'2018-01-06T16:19:12.000' AS DateTime), CAST(N'2018-01-06T17:16:48.000' AS DateTime), 21, N'~/HESKYJW', 39, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (310, N'Rock Strategies For Beginners', CAST(N'2018-02-27T14:24:00.000' AS DateTime), CAST(N'2018-02-27T18:57:36.000' AS DateTime), 47, N'~/MKKTHGR', 44, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (311, N'Who Else Wants To Be Successful With Streaming', CAST(N'2018-01-06T06:57:36.000' AS DateTime), CAST(N'2018-01-06T09:36:00.000' AS DateTime), 23, N'~/FCFOIVK', 3, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (312, N'Wondering How To Make Your Video Rock? Read This!', CAST(N'2018-01-25T13:26:24.000' AS DateTime), CAST(N'2018-01-25T17:45:36.000' AS DateTime), 15, N'~/FBELRER', 55, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (313, N'Winning Tactics For Database', CAST(N'2018-01-24T12:14:24.000' AS DateTime), CAST(N'2018-01-24T16:48:00.000' AS DateTime), 52, N'~/FOAFQDG', 35, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (314, N'The Philosophy Of Rock', CAST(N'2018-01-20T06:57:36.000' AS DateTime), CAST(N'2018-01-20T09:07:12.000' AS DateTime), 45, N'~/CTTLLOY', 18, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (315, N'3 Streaming Secrets You Never Knew', CAST(N'2018-01-11T23:16:48.000' AS DateTime), CAST(N'2018-01-12T00:57:36.000' AS DateTime), 15, N'~/NLVYLFN', 20, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (316, N'Who Else Wants To Be Successful With Video', CAST(N'2018-01-16T16:19:12.000' AS DateTime), CAST(N'2018-01-16T20:09:36.000' AS DateTime), 81, N'~/VWXHMFF', 58, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (317, N'How To Win Friends And Influence People with Rock', CAST(N'2018-01-01T19:55:12.000' AS DateTime), CAST(N'2018-01-01T23:02:24.000' AS DateTime), 83, N'~/GUNGZQN', 2, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (318, N'17 Tricks About Streaming You Wish You Knew Before', CAST(N'2018-01-17T12:28:48.000' AS DateTime), CAST(N'2018-01-17T13:40:48.000' AS DateTime), 28, N'~/QFKZHVQ', 18, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (319, N'Video Shortcuts - The Easy Way', CAST(N'2018-02-11T10:04:48.000' AS DateTime), CAST(N'2018-02-11T14:09:36.000' AS DateTime), 32, N'~/FZWGJDG', 44, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (320, N'How To Make Your Rock Look Amazing In 5 Days', CAST(N'2018-01-29T21:50:24.000' AS DateTime), CAST(N'2018-01-29T22:04:48.000' AS DateTime), 79, N'~/HVKTWYU', 32, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (321, N'5 Brilliant Ways To Use Streaming', CAST(N'2018-01-12T06:43:12.000' AS DateTime), CAST(N'2018-01-12T08:09:36.000' AS DateTime), 87, N'~/UOOEAWS', 16, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (322, N'Get The Most Out of Video and Facebook', CAST(N'2018-02-14T19:40:48.000' AS DateTime), CAST(N'2018-02-14T21:07:12.000' AS DateTime), 18, N'~/GMAUUNK', 65, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (323, N'Guaranteed No Stress Database', CAST(N'2018-01-20T09:21:36.000' AS DateTime), CAST(N'2018-01-20T13:12:00.000' AS DateTime), 88, N'~/ZOQSNAZ', 59, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (324, N'5 Actionable Tips on Streaming And Twitter.', CAST(N'2018-02-07T01:26:24.000' AS DateTime), CAST(N'2018-02-07T02:09:36.000' AS DateTime), 46, N'~/PDNTCWB', 50, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (325, N'Why Video Succeeds', CAST(N'2018-01-30T23:02:24.000' AS DateTime), CAST(N'2018-01-31T00:57:36.000' AS DateTime), 77, N'~/HPXJUEH', 37, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (326, N'Do Database Better Than Barack Obama', CAST(N'2018-02-14T23:31:12.000' AS DateTime), CAST(N'2018-02-15T03:21:36.000' AS DateTime), 80, N'~/PMNOCRR', 51, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (327, N'Rock And The Chuck Norris Effect', CAST(N'2018-01-17T01:40:48.000' AS DateTime), CAST(N'2018-01-17T04:04:48.000' AS DateTime), 71, N'~/UZEOEQK', 46, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (328, N'Boost Your Streaming With These Tips', CAST(N'2018-01-26T19:26:24.000' AS DateTime), CAST(N'2018-01-26T23:02:24.000' AS DateTime), 88, N'~/OWWZAZD', 29, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (329, N'Never Changing Video Will Eventually Destroy You', CAST(N'2018-02-07T12:43:12.000' AS DateTime), CAST(N'2018-02-07T14:09:36.000' AS DateTime), 38, N'~/VFMHFJE', 63, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (330, N'How To Win Clients And Influence Markets with Rock', CAST(N'2018-01-24T18:14:24.000' AS DateTime), CAST(N'2018-01-24T20:09:36.000' AS DateTime), 25, N'~/XSXKSFZ', 6, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (331, N'Streaming And Love Have 4 Things In Common', CAST(N'2018-02-05T22:33:36.000' AS DateTime), CAST(N'2018-02-06T02:38:24.000' AS DateTime), 86, N'~/GLEQSNM', 51, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (332, N'3 Ways Create Better Streaming With The Help Of Yo', CAST(N'2018-01-10T19:55:12.000' AS DateTime), CAST(N'2018-01-10T21:21:36.000' AS DateTime), 70, N'~/DWGSLLH', 39, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (333, N'What Can You Do About Video Right Now', CAST(N'2018-01-19T09:50:24.000' AS DateTime), CAST(N'2018-01-19T14:09:36.000' AS DateTime), 53, N'~/UYBXFQG', 45, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (334, N'Database Made Simple - Even Your Kids Can Do It', CAST(N'2018-02-07T18:57:36.000' AS DateTime), CAST(N'2018-02-07T21:07:12.000' AS DateTime), 37, N'~/VKIBQZA', 1, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (335, N'14 Days To A Better Streaming', CAST(N'2018-02-20T06:14:24.000' AS DateTime), CAST(N'2018-02-20T09:50:24.000' AS DateTime), 60, N'~/XCXPQTS', 57, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (336, N'How To Make More Video By Doing Less', CAST(N'2018-01-08T14:52:48.000' AS DateTime), CAST(N'2018-01-08T16:19:12.000' AS DateTime), 15, N'~/EZYNSZY', 11, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (337, N'Why Database Is No Friend To Small Business', CAST(N'2018-02-13T12:00:00.000' AS DateTime), CAST(N'2018-02-13T13:40:48.000' AS DateTime), 20, N'~/SNMLOCZ', 65, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (338, N'How To Become Better With Rock In 10 Minutes', CAST(N'2018-02-07T15:36:00.000' AS DateTime), CAST(N'2018-02-07T17:16:48.000' AS DateTime), 43, N'~/ZLASAFS', 48, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (339, N'Streaming: What A Mistake!', CAST(N'2018-02-11T01:26:24.000' AS DateTime), CAST(N'2018-02-11T05:45:36.000' AS DateTime), 56, N'~/YNYSTAS', 62, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (340, N'10 Ways To Immediately Start Selling Database', CAST(N'2018-02-06T05:02:24.000' AS DateTime), CAST(N'2018-02-06T05:31:12.000' AS DateTime), 76, N'~/SIGSHTV', 43, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (341, N'The Lazy Man''s Guide To Video', CAST(N'2018-02-26T22:04:48.000' AS DateTime), CAST(N'2018-02-27T01:55:12.000' AS DateTime), 39, N'~/OOYBWZW', 2, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (342, N'Who Else Wants To Know The Mystery Behind Database', CAST(N'2018-01-29T14:52:48.000' AS DateTime), CAST(N'2018-01-29T17:31:12.000' AS DateTime), 41, N'~/WQRRJRP', 56, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (343, N'4 Ways You Can Grow Your Creativity Using Rock', CAST(N'2018-02-06T12:00:00.000' AS DateTime), CAST(N'2018-02-06T14:09:36.000' AS DateTime), 77, N'~/KAOMNCK', 61, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (344, N'Never Changing Streaming Will Eventually Destroy Y', CAST(N'2018-01-01T08:38:24.000' AS DateTime), CAST(N'2018-01-01T09:36:00.000' AS DateTime), 78, N'~/SQGBJCH', 43, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (345, N'Best Video Android/iPhone Apps', CAST(N'2018-01-03T10:33:36.000' AS DateTime), CAST(N'2018-01-03T12:00:00.000' AS DateTime), 27, N'~/ZYESAHA', 7, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (346, N'Rock - So Simple Even Your Kids Can Do It', CAST(N'2018-01-12T20:09:36.000' AS DateTime), CAST(N'2018-01-12T20:38:24.000' AS DateTime), 52, N'~/ZXMTXHY', 38, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (347, N'Everything You Wanted to Know About Streaming and ', CAST(N'2018-01-29T12:14:24.000' AS DateTime), CAST(N'2018-01-29T13:12:00.000' AS DateTime), 52, N'~/UNYKINM', 15, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (348, N'Using 7 Video Strategies Like The Pros', CAST(N'2018-01-04T05:31:12.000' AS DateTime), CAST(N'2018-01-04T07:40:48.000' AS DateTime), 37, N'~/ENOSIKC', 37, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (349, N'How I Improved My Database In One Easy Lesson', CAST(N'2018-02-23T05:16:48.000' AS DateTime), CAST(N'2018-02-23T07:26:24.000' AS DateTime), 75, N'~/EBUYFIU', 66, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (350, N'Believe In Your Video Skills But Never Stop Improv', CAST(N'2018-01-14T18:57:36.000' AS DateTime), CAST(N'2018-01-14T23:45:36.000' AS DateTime), 69, N'~/CVFCFPC', 53, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (351, N'Does Database Sometimes Make You Feel Stupid?', CAST(N'2018-01-16T08:09:36.000' AS DateTime), CAST(N'2018-01-16T12:28:48.000' AS DateTime), 70, N'~/HWRUTMB', 50, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (352, N'How To Sell Rock', CAST(N'2018-01-21T05:02:24.000' AS DateTime), CAST(N'2018-01-21T06:57:36.000' AS DateTime), 86, N'~/JVOUHSS', 55, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (353, N'Streaming Strategies For Beginners', CAST(N'2018-02-20T00:00:00.000' AS DateTime), CAST(N'2018-02-20T01:55:12.000' AS DateTime), 30, N'~/VZUBROP', 24, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (354, N'Picture Your Video On Top. Read This And Make It S', CAST(N'2018-01-31T13:55:12.000' AS DateTime), CAST(N'2018-01-31T17:45:36.000' AS DateTime), 53, N'~/DNLFSFI', 22, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (355, N'Why Rock Succeeds', CAST(N'2018-01-23T12:14:24.000' AS DateTime), CAST(N'2018-01-23T12:28:48.000' AS DateTime), 65, N'~/NNEZOKS', 55, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (356, N'Streaming Is Crucial To Your Business. Learn Why!', CAST(N'2018-02-21T20:52:48.000' AS DateTime), CAST(N'2018-02-22T01:40:48.000' AS DateTime), 49, N'~/NNNXXAB', 61, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (357, N'Turn Your Video Into A High Performing Machine', CAST(N'2018-01-30T03:07:12.000' AS DateTime), CAST(N'2018-01-30T04:33:36.000' AS DateTime), 24, N'~/YMILXDO', 21, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (358, N'The Ultimate Guide To Database', CAST(N'2018-02-23T00:14:24.000' AS DateTime), CAST(N'2018-02-23T01:26:24.000' AS DateTime), 83, N'~/QRYVNDT', 4, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (359, N'5 Incredibly Useful Rock Tips For Small Businesses', CAST(N'2018-02-11T14:09:36.000' AS DateTime), CAST(N'2018-02-11T15:36:00.000' AS DateTime), 31, N'~/GVTNQFV', 19, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (360, N'Can You Really Find Video (on the Web)?', CAST(N'2018-01-14T05:45:36.000' AS DateTime), CAST(N'2018-01-14T06:57:36.000' AS DateTime), 39, N'~/BZIJTBU', 3, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (361, N'10 Things You Have In Common With Database', CAST(N'2018-01-29T15:21:36.000' AS DateTime), CAST(N'2018-01-29T15:36:00.000' AS DateTime), 19, N'~/NQJAWIX', 51, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (362, N'Winning Tactics For Streaming', CAST(N'2018-02-03T12:43:12.000' AS DateTime), CAST(N'2018-02-03T17:16:48.000' AS DateTime), 46, N'~/ZRMCAYL', 12, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (363, N'Remarkable Website - Database Will Help You Get Th', CAST(N'2018-01-13T04:04:48.000' AS DateTime), CAST(N'2018-01-13T08:38:24.000' AS DateTime), 43, N'~/NHBMELK', 40, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (364, N'10 Funny Rock Quotes', CAST(N'2018-02-07T10:19:12.000' AS DateTime), CAST(N'2018-02-07T14:09:36.000' AS DateTime), 18, N'~/TIPAPGY', 53, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (365, N'How To Make Your Product Stand Out With Video', CAST(N'2018-02-08T17:31:12.000' AS DateTime), CAST(N'2018-02-08T20:24:00.000' AS DateTime), 67, N'~/SFUWWBO', 14, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (366, N'10 Warning Signs Of Your Database Demise', CAST(N'2018-01-27T20:38:24.000' AS DateTime), CAST(N'2018-01-27T21:50:24.000' AS DateTime), 25, N'~/TURAPGY', 7, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (367, N'What Your Customers Really Think About Your Rock?', CAST(N'2018-01-08T03:36:00.000' AS DateTime), CAST(N'2018-01-08T04:04:48.000' AS DateTime), 31, N'~/HHAEQND', 8, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (368, N'Streaming Works Only Under These Conditions', CAST(N'2018-02-02T05:31:12.000' AS DateTime), CAST(N'2018-02-02T08:38:24.000' AS DateTime), 67, N'~/ALFOSIB', 47, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (369, N'OMG! The Best Video Ever!', CAST(N'2018-01-22T19:12:00.000' AS DateTime), CAST(N'2018-01-22T20:24:00.000' AS DateTime), 90, N'~/HOBNFWP', 19, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (370, N'Answered: Your Most Burning Questions About Video', CAST(N'2018-02-24T22:19:12.000' AS DateTime), CAST(N'2018-02-25T02:09:36.000' AS DateTime), 53, N'~/KHOWUDG', 55, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (371, N'There’s Big Money In Streaming', CAST(N'2018-01-27T02:24:00.000' AS DateTime), CAST(N'2018-01-27T02:38:24.000' AS DateTime), 86, N'~/AUYOCTS', 59, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (372, N'22 Tips To Start Building A Database You Always Wa', CAST(N'2018-02-09T22:04:48.000' AS DateTime), CAST(N'2018-02-09T23:31:12.000' AS DateTime), 32, N'~/MDVWIYO', 7, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (373, N'Revolutionize Your Rock With These Easy-peasy Tips', CAST(N'2018-02-17T19:55:12.000' AS DateTime), CAST(N'2018-02-17T20:52:48.000' AS DateTime), 17, N'~/EGVBICE', 48, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (374, N'Don''t Just Sit There! Start Streaming', CAST(N'2018-01-28T11:02:24.000' AS DateTime), CAST(N'2018-01-28T11:31:12.000' AS DateTime), 57, N'~/YERZDKE', 47, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (375, N'3 Ways To Have (A) More Appealing Video', CAST(N'2018-01-06T08:24:00.000' AS DateTime), CAST(N'2018-01-06T12:28:48.000' AS DateTime), 53, N'~/CRHULBL', 1, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (376, N'7 Ways To Keep Your Database Growing Without Burni', CAST(N'2018-01-11T08:52:48.000' AS DateTime), CAST(N'2018-01-11T09:07:12.000' AS DateTime), 26, N'~/RRFONFB', 49, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (377, N'The Secrets To Finding World Class Tools For Your ', CAST(N'2018-01-01T10:48:00.000' AS DateTime), CAST(N'2018-01-01T11:02:24.000' AS DateTime), 79, N'~/CIITTZZ', 13, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (378, N'These 5 Simple Streaming Tricks Will Pump Up Your ', CAST(N'2018-01-31T00:57:36.000' AS DateTime), CAST(N'2018-01-31T04:33:36.000' AS DateTime), 27, N'~/UOXEIIZ', 38, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (379, N'Get Rid of Video For Good', CAST(N'2018-01-21T11:02:24.000' AS DateTime), CAST(N'2018-01-21T13:26:24.000' AS DateTime), 86, N'~/WHFNWES', 36, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (380, N'Database - So Simple Even Your Kids Can Do It', CAST(N'2018-02-04T07:40:48.000' AS DateTime), CAST(N'2018-02-04T09:36:00.000' AS DateTime), 68, N'~/KZOAATO', 30, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (381, N'Is Streaming Worth [$] To You?', CAST(N'2018-01-01T07:26:24.000' AS DateTime), CAST(N'2018-01-01T10:19:12.000' AS DateTime), 53, N'~/QETWQQA', 23, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (382, N'Learn To (Do) Video Like A Professional', CAST(N'2018-02-24T06:14:24.000' AS DateTime), CAST(N'2018-02-24T07:12:00.000' AS DateTime), 37, N'~/KYKQPBU', 34, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (383, N'Use Database To Make Someone Fall In Love With You', CAST(N'2018-02-12T03:36:00.000' AS DateTime), CAST(N'2018-02-12T05:16:48.000' AS DateTime), 90, N'~/WNTOBVB', 27, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (384, N'The Single Most Important Thing You Need To Know A', CAST(N'2018-01-04T19:40:48.000' AS DateTime), CAST(N'2018-01-04T23:02:24.000' AS DateTime), 59, N'~/KDDOQQS', 61, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (385, N'How To Save Money with Streaming?', CAST(N'2018-01-10T08:09:36.000' AS DateTime), CAST(N'2018-01-10T10:04:48.000' AS DateTime), 15, N'~/GLXBIKS', 34, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (386, N'Video Is Essential For Your Success. Read This To ', CAST(N'2018-03-01T05:02:24.000' AS DateTime), CAST(N'2018-03-01T07:12:00.000' AS DateTime), 39, N'~/HGMMAFV', 7, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (387, N'Should Fixing Rock Take 60 Steps?', CAST(N'2018-01-04T07:40:48.000' AS DateTime), CAST(N'2018-01-04T08:52:48.000' AS DateTime), 15, N'~/PUDFPRB', 59, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (388, N'In 10 Minutes, I''ll Give You The Truth About Strea', CAST(N'2018-01-08T22:19:12.000' AS DateTime), CAST(N'2018-01-09T00:14:24.000' AS DateTime), 16, N'~/FQUOOHD', 4, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (389, N'Rules Not To Follow About Video', CAST(N'2018-02-11T11:45:36.000' AS DateTime), CAST(N'2018-02-11T14:38:24.000' AS DateTime), 81, N'~/EMLMBOJ', 16, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (390, N'If You Want To Be A Winner, Change Your Streaming ', CAST(N'2018-02-15T17:02:24.000' AS DateTime), CAST(N'2018-02-15T20:38:24.000' AS DateTime), 44, N'~/RFWLTLA', 39, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (391, N'If You Want To Be A Winner, Change Your Video Phil', CAST(N'2018-02-24T15:36:00.000' AS DateTime), CAST(N'2018-02-24T18:43:12.000' AS DateTime), 41, N'~/YZKZEKJ', 65, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (392, N'Have You Heard? Rock Is Your Best Bet To Grow', CAST(N'2018-02-08T16:04:48.000' AS DateTime), CAST(N'2018-02-08T18:14:24.000' AS DateTime), 43, N'~/QSZVKZL', 61, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (393, N'5 Secrets: How To Use Streaming To Create A Succes', CAST(N'2018-01-05T16:33:36.000' AS DateTime), CAST(N'2018-01-05T17:16:48.000' AS DateTime), 72, N'~/YFLREYD', 61, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (394, N'Remarkable Website - Video Will Help You Get There', CAST(N'2018-01-17T00:00:00.000' AS DateTime), CAST(N'2018-01-17T02:52:48.000' AS DateTime), 58, N'~/KJZWYCL', 29, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (395, N'Your Key To Success: Database', CAST(N'2018-01-16T07:40:48.000' AS DateTime), CAST(N'2018-01-16T07:55:12.000' AS DateTime), 41, N'~/RWXQTHH', 14, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (396, N'Could This Report Be The Definitive Answer To Your', CAST(N'2018-01-13T15:36:00.000' AS DateTime), CAST(N'2018-01-13T17:31:12.000' AS DateTime), 21, N'~/KMYUKII', 28, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (397, N'Get Rid of Streaming For Good', CAST(N'2018-02-27T12:14:24.000' AS DateTime), CAST(N'2018-02-27T17:02:24.000' AS DateTime), 88, N'~/FROIKNM', 68, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (398, N'2 Things You Must Know About Video', CAST(N'2018-01-09T07:55:12.000' AS DateTime), CAST(N'2018-01-09T12:43:12.000' AS DateTime), 27, N'~/MNTEMWJ', 13, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (399, N'Want To Step Up Your Database? You Need To Read Th', CAST(N'2018-01-05T19:55:12.000' AS DateTime), CAST(N'2018-01-05T21:21:36.000' AS DateTime), 32, N'~/LBDQRXG', 29, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (400, N'How To Make More Rock By Doing Less', CAST(N'2018-02-03T17:16:48.000' AS DateTime), CAST(N'2018-02-03T21:50:24.000' AS DateTime), 65, N'~/OBSPKZH', 9, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (401, N'Where Can You Find Free Streaming Resources', CAST(N'2018-02-13T01:12:00.000' AS DateTime), CAST(N'2018-02-13T03:07:12.000' AS DateTime), 39, N'~/SXMPLUM', 20, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (402, N'Find Out Now, What Should You Do For Fast Database', CAST(N'2018-01-14T09:07:12.000' AS DateTime), CAST(N'2018-01-14T10:48:00.000' AS DateTime), 55, N'~/TCBLMMS', 43, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (403, N'Do Rock Better Than Barack Obama', CAST(N'2018-01-25T15:50:24.000' AS DateTime), CAST(N'2018-01-25T18:00:00.000' AS DateTime), 90, N'~/XKCMXJF', 3, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (404, N'Best Streaming Android/iPhone Apps', CAST(N'2018-01-11T04:04:48.000' AS DateTime), CAST(N'2018-01-11T07:55:12.000' AS DateTime), 59, N'~/ZQJBDLY', 42, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (405, N'3 Ways Twitter Destroyed My Database Without Me No', CAST(N'2018-01-22T03:07:12.000' AS DateTime), CAST(N'2018-01-22T05:02:24.000' AS DateTime), 58, N'~/TMHKCQB', 56, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (406, N'Ho To (Do) Streaming Without Leaving Your Office(H', CAST(N'2018-02-03T04:04:48.000' AS DateTime), CAST(N'2018-02-03T05:31:12.000' AS DateTime), 84, N'~/UFFSWEQ', 41, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (407, N'Don''t Just Sit There! Start Rock', CAST(N'2018-01-05T21:07:12.000' AS DateTime), CAST(N'2018-01-06T00:28:48.000' AS DateTime), 87, N'~/GSNTXAM', 40, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (408, N'The Death Of Streaming And How To Avoid It', CAST(N'2018-01-16T03:07:12.000' AS DateTime), CAST(N'2018-01-16T07:26:24.000' AS DateTime), 80, N'~/BKYRKSJ', 27, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (409, N'How To Turn Your Database From Zero To Hero', CAST(N'2018-02-14T00:28:48.000' AS DateTime), CAST(N'2018-02-14T03:21:36.000' AS DateTime), 27, N'~/RNHYSZV', 24, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (410, N'Some People Excel At Rock And Some Don''t - Which O', CAST(N'2018-02-27T11:31:12.000' AS DateTime), CAST(N'2018-02-27T15:50:24.000' AS DateTime), 60, N'~/GTREQTY', 57, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (411, N'OMG! The Best Streaming Ever!', CAST(N'2018-01-05T09:36:00.000' AS DateTime), CAST(N'2018-01-05T13:55:12.000' AS DateTime), 26, N'~/USEVVST', 36, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (412, N'Death, Video And Taxes', CAST(N'2018-02-07T05:16:48.000' AS DateTime), CAST(N'2018-02-07T08:09:36.000' AS DateTime), 59, N'~/PIBJOTQ', 59, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (413, N'Sick And Tired Of Doing Database The Old Way? Read', CAST(N'2018-01-14T03:07:12.000' AS DateTime), CAST(N'2018-01-14T07:40:48.000' AS DateTime), 40, N'~/ZNVSCUW', 28, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (414, N'The Video That Wins Customers', CAST(N'2018-02-02T18:28:48.000' AS DateTime), CAST(N'2018-02-02T21:36:00.000' AS DateTime), 88, N'~/GBAJKMT', 34, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (415, N'Never Lose Your Database Again', CAST(N'2018-02-28T11:45:36.000' AS DateTime), CAST(N'2018-02-28T14:38:24.000' AS DateTime), 68, N'~/APMVOGF', 53, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (416, N'Rock: What A Mistake!', CAST(N'2018-02-23T18:14:24.000' AS DateTime), CAST(N'2018-02-23T19:55:12.000' AS DateTime), 47, N'~/KZRRCBF', 44, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (417, N'Interesting Facts I Bet You Never Knew About Strea', CAST(N'2018-01-20T09:36:00.000' AS DateTime), CAST(N'2018-01-20T09:50:24.000' AS DateTime), 20, N'~/RXEPBHE', 42, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (418, N'The Truth Is You Are Not The Only Person Concerned', CAST(N'2018-02-18T16:04:48.000' AS DateTime), CAST(N'2018-02-18T19:26:24.000' AS DateTime), 72, N'~/RWOADKS', 1, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (419, N'Warning: These 9 Mistakes Will Destroy Your Databa', CAST(N'2018-01-11T06:43:12.000' AS DateTime), CAST(N'2018-01-11T07:26:24.000' AS DateTime), 85, N'~/WMGKGMG', 55, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (420, N'The Ugly Truth About Rock', CAST(N'2018-01-27T12:14:24.000' AS DateTime), CAST(N'2018-01-27T17:02:24.000' AS DateTime), 27, N'~/XGJDFDK', 67, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (421, N'You Will Thank Us - 10 Tips About Streaming You Ne', CAST(N'2018-01-06T19:12:00.000' AS DateTime), CAST(N'2018-01-06T21:50:24.000' AS DateTime), 65, N'~/JQHICGD', 48, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (422, N'How To Lose Money With Video', CAST(N'2018-01-01T15:36:00.000' AS DateTime), CAST(N'2018-01-01T19:26:24.000' AS DateTime), 66, N'~/UQSEKAI', 42, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (423, N'Why Ignoring Database Will Cost You Time and Sales', CAST(N'2018-02-26T06:43:12.000' AS DateTime), CAST(N'2018-02-26T09:50:24.000' AS DateTime), 80, N'~/ISKVCPT', 48, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (424, N'Make Your RockA Reality', CAST(N'2018-01-24T15:50:24.000' AS DateTime), CAST(N'2018-01-24T20:09:36.000' AS DateTime), 71, N'~/OUCOCFA', 21, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (425, N'You Can Thank Us Later - 3 Reasons To Stop Thinkin', CAST(N'2018-01-19T06:00:00.000' AS DateTime), CAST(N'2018-01-19T09:36:00.000' AS DateTime), 27, N'~/BWBBAQA', 33, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (426, N'3 Mistakes In Video That Make You Look Dumb', CAST(N'2018-01-26T16:33:36.000' AS DateTime), CAST(N'2018-01-26T18:14:24.000' AS DateTime), 18, N'~/CMODSSP', 32, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (427, N'3 Easy Ways To Make Database Faster', CAST(N'2018-02-21T05:02:24.000' AS DateTime), CAST(N'2018-02-21T07:12:00.000' AS DateTime), 20, N'~/JMBMLEZ', 29, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (428, N'14 Days To A Better Rock', CAST(N'2018-01-21T16:48:00.000' AS DateTime), CAST(N'2018-01-21T21:07:12.000' AS DateTime), 69, N'~/GPETIOD', 52, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (429, N'Remarkable Website - Streaming Will Help You Get T', CAST(N'2018-02-16T13:12:00.000' AS DateTime), CAST(N'2018-02-16T15:36:00.000' AS DateTime), 20, N'~/IUCDTDM', 50, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (430, N'The Secret of Successful Video', CAST(N'2018-01-26T02:52:48.000' AS DateTime), CAST(N'2018-01-26T04:33:36.000' AS DateTime), 74, N'~/DMZOAMV', 40, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (431, N'5 Problems Everyone Has With Database – How To Sol', CAST(N'2018-01-24T09:50:24.000' AS DateTime), CAST(N'2018-01-24T13:40:48.000' AS DateTime), 62, N'~/SBHKDSK', 39, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (432, N'101 Ideas For Streaming', CAST(N'2018-01-24T07:26:24.000' AS DateTime), CAST(N'2018-01-24T11:16:48.000' AS DateTime), 19, N'~/AUOJYMU', 47, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (433, N'Fall In Love With Video', CAST(N'2018-02-15T00:14:24.000' AS DateTime), CAST(N'2018-02-15T04:48:00.000' AS DateTime), 53, N'~/TOMZENI', 49, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (434, N'14 Days To A Better Database', CAST(N'2018-01-17T00:43:12.000' AS DateTime), CAST(N'2018-01-17T00:57:36.000' AS DateTime), 23, N'~/ZCTDLKR', 56, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (435, N'How To Make Your Rock Look Like A Million Bucks', CAST(N'2018-01-22T06:28:48.000' AS DateTime), CAST(N'2018-01-22T10:04:48.000' AS DateTime), 48, N'~/WSXNWQT', 47, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (436, N'The Number One Reason You Should (Do) Streaming', CAST(N'2018-01-26T22:04:48.000' AS DateTime), CAST(N'2018-01-27T00:28:48.000' AS DateTime), 33, N'~/BVKKNYR', 20, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (437, N'3 Ways You Can Reinvent Database Without Looking L', CAST(N'2018-01-03T08:24:00.000' AS DateTime), CAST(N'2018-01-03T12:57:36.000' AS DateTime), 38, N'~/UBEONVJ', 24, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (438, N'Top 10 Tips To Grow Your Rock', CAST(N'2018-01-31T20:52:48.000' AS DateTime), CAST(N'2018-02-01T01:26:24.000' AS DateTime), 64, N'~/CTKOBDV', 24, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (439, N'52 Ways To Avoid Streaming Burnout', CAST(N'2018-01-15T11:16:48.000' AS DateTime), CAST(N'2018-01-15T13:55:12.000' AS DateTime), 19, N'~/LBFMQRE', 4, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (440, N'How To Start Video With Less Than $100', CAST(N'2018-01-10T08:52:48.000' AS DateTime), CAST(N'2018-01-10T10:04:48.000' AS DateTime), 35, N'~/YQOMVXK', 61, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (441, N'Learn How To Start Database', CAST(N'2018-01-07T21:50:24.000' AS DateTime), CAST(N'2018-01-07T23:31:12.000' AS DateTime), 76, N'~/HBTNBPB', 44, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (442, N'Never Lose Your Streaming Again', CAST(N'2018-02-19T22:04:48.000' AS DateTime), CAST(N'2018-02-20T01:26:24.000' AS DateTime), 60, N'~/TPMCBFQ', 20, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (443, N'Why You Really Need (A) Video', CAST(N'2018-02-19T06:28:48.000' AS DateTime), CAST(N'2018-02-19T08:09:36.000' AS DateTime), 65, N'~/FPTPNQT', 11, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (444, N'Secrets To Getting Database To Complete Tasks Quic', CAST(N'2018-01-19T19:12:00.000' AS DateTime), CAST(N'2018-01-19T22:33:36.000' AS DateTime), 85, N'~/FYHTICX', 27, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (445, N'At Last, The Secret To Rock Is Revealed', CAST(N'2018-02-23T01:55:12.000' AS DateTime), CAST(N'2018-02-23T02:52:48.000' AS DateTime), 54, N'~/BHTNQTV', 22, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (446, N'Fast-Track Your Streaming', CAST(N'2018-01-27T15:07:12.000' AS DateTime), CAST(N'2018-01-27T19:26:24.000' AS DateTime), 35, N'~/DDOYHHF', 6, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (447, N'10 Best Practices For Video', CAST(N'2018-02-27T21:07:12.000' AS DateTime), CAST(N'2018-02-28T01:26:24.000' AS DateTime), 90, N'~/SBIDTKA', 56, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (448, N'Database Strategies For Beginners', CAST(N'2018-02-20T01:40:48.000' AS DateTime), CAST(N'2018-02-20T03:36:00.000' AS DateTime), 75, N'~/YBREUSB', 30, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (449, N'5 Easy Ways You Can Turn Streaming Into Success', CAST(N'2018-01-24T07:55:12.000' AS DateTime), CAST(N'2018-01-24T09:36:00.000' AS DateTime), 67, N'~/UZJKXHH', 24, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (450, N'How To Teach Video Like A Pro', CAST(N'2018-01-10T01:12:00.000' AS DateTime), CAST(N'2018-01-10T05:16:48.000' AS DateTime), 20, N'~/AQLTOJN', 21, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (451, N'Never Suffer From Database Again', CAST(N'2018-01-09T07:12:00.000' AS DateTime), CAST(N'2018-01-09T10:48:00.000' AS DateTime), 79, N'~/UJYMBEW', 2, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (452, N'Get The Most Out of Rock and Facebook', CAST(N'2018-01-19T02:52:48.000' AS DateTime), CAST(N'2018-01-19T05:16:48.000' AS DateTime), 30, N'~/HUSUNZY', 9, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (453, N'12 Questions Answered About Streaming', CAST(N'2018-02-25T19:12:00.000' AS DateTime), CAST(N'2018-02-25T22:04:48.000' AS DateTime), 55, N'~/RAPJZNC', 12, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (454, N'14 Days To A Better Video', CAST(N'2018-02-09T04:48:00.000' AS DateTime), CAST(N'2018-02-09T07:26:24.000' AS DateTime), 71, N'~/WETCXFM', 36, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (455, N'Congratulations! Your Database Is (Are) About To S', CAST(N'2018-01-10T00:57:36.000' AS DateTime), CAST(N'2018-01-10T04:19:12.000' AS DateTime), 26, N'~/HOJFIEQ', 60, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (456, N'7 Rules About Rock Meant To Be Broken', CAST(N'2018-02-13T17:02:24.000' AS DateTime), CAST(N'2018-02-13T20:52:48.000' AS DateTime), 48, N'~/FZETAGY', 58, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (457, N'The Death Of Video And How To Avoid It', CAST(N'2018-02-24T17:16:48.000' AS DateTime), CAST(N'2018-02-24T19:26:24.000' AS DateTime), 56, N'~/NHZMCHW', 1, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (458, N'The Hidden Mystery Behind Database', CAST(N'2018-01-26T07:40:48.000' AS DateTime), CAST(N'2018-01-26T10:19:12.000' AS DateTime), 84, N'~/EOTBKBF', 32, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (459, N'Where Is The Best Rock?', CAST(N'2018-02-25T23:31:12.000' AS DateTime), CAST(N'2018-02-26T03:21:36.000' AS DateTime), 73, N'~/VGSYKTE', 61, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (460, N'Why Some People Almost Always Make/Save Money With', CAST(N'2018-02-12T09:07:12.000' AS DateTime), CAST(N'2018-02-12T12:00:00.000' AS DateTime), 72, N'~/NRCVPFA', 36, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (461, N'Proof That Database Is Exactly What You Are Lookin', CAST(N'2018-02-14T18:43:12.000' AS DateTime), CAST(N'2018-02-14T19:26:24.000' AS DateTime), 18, N'~/VWKPJXP', 1, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (462, N'What Can Instagramm Teach You About Rock', CAST(N'2018-01-29T17:31:12.000' AS DateTime), CAST(N'2018-01-29T19:55:12.000' AS DateTime), 48, N'~/XBHYCMG', 2, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (463, N'Why Most Video Fail', CAST(N'2018-01-06T16:04:48.000' AS DateTime), CAST(N'2018-01-06T18:14:24.000' AS DateTime), 90, N'~/AMJWWFO', 12, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (464, N'At Last, The Secret To Rock Is Revealed', CAST(N'2018-01-22T20:09:36.000' AS DateTime), CAST(N'2018-01-22T23:45:36.000' AS DateTime), 42, N'~/IDFKUKQ', 40, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (465, N'How To Find The Right Streaming For Your Specific ', CAST(N'2018-02-26T17:02:24.000' AS DateTime), CAST(N'2018-02-26T21:07:12.000' AS DateTime), 80, N'~/XUYCWIN', 1, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (466, N'15 Unheard Ways To Achieve Greater Video', CAST(N'2018-01-07T07:12:00.000' AS DateTime), CAST(N'2018-01-07T10:19:12.000' AS DateTime), 74, N'~/EXEGZCC', 11, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (467, N'Answered: Your Most Burning Questions About Databa', CAST(N'2018-02-19T11:02:24.000' AS DateTime), CAST(N'2018-02-19T13:40:48.000' AS DateTime), 74, N'~/JTQGUFM', 43, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (468, N'Avoid The Top 10 Mistakes Made By Beginning Stream', CAST(N'2018-01-26T05:45:36.000' AS DateTime), CAST(N'2018-01-26T07:40:48.000' AS DateTime), 68, N'~/EQAKLGC', 61, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (469, N'Video Works Only Under These Conditions', CAST(N'2018-02-10T21:50:24.000' AS DateTime), CAST(N'2018-02-11T01:12:00.000' AS DateTime), 16, N'~/IBUNBAW', 60, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (470, N'2 Ways You Can Use Streaming To Become Irresistibl', CAST(N'2018-02-02T07:55:12.000' AS DateTime), CAST(N'2018-02-02T10:19:12.000' AS DateTime), 28, N'~/EFYTTUF', 43, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (471, N'Who Else Wants To Know The Mystery Behind Video?', CAST(N'2018-01-20T02:38:24.000' AS DateTime), CAST(N'2018-01-20T03:07:12.000' AS DateTime), 29, N'~/DGCETAT', 14, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (472, N'Streaming Iphone Apps', CAST(N'2018-02-13T10:04:48.000' AS DateTime), CAST(N'2018-02-13T14:52:48.000' AS DateTime), 90, N'~/CHMMAXN', 6, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (473, N'There’s Big Money In Database', CAST(N'2018-01-14T04:19:12.000' AS DateTime), CAST(N'2018-01-14T09:07:12.000' AS DateTime), 85, N'~/TRVMQSP', 58, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (474, N'How We Improved Our Rock In One Week(Month, Day)', CAST(N'2018-01-30T17:16:48.000' AS DateTime), CAST(N'2018-01-30T22:04:48.000' AS DateTime), 37, N'~/AFURUKX', 61, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (475, N'Streaming Shortcuts - The Easy Way', CAST(N'2018-01-24T09:07:12.000' AS DateTime), CAST(N'2018-01-24T11:31:12.000' AS DateTime), 54, N'~/WHNKKWG', 20, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (476, N'10 Unforgivable Sins Of Video', CAST(N'2018-01-21T13:26:24.000' AS DateTime), CAST(N'2018-01-21T18:00:00.000' AS DateTime), 17, N'~/SLGUUWG', 51, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (477, N'Lies And Damn Lies About Database', CAST(N'2018-02-23T04:33:36.000' AS DateTime), CAST(N'2018-02-23T07:26:24.000' AS DateTime), 79, N'~/IOZMIZD', 14, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (478, N'Apply These 5 Secret Techniques To Improve Rock', CAST(N'2018-01-31T23:02:24.000' AS DateTime), CAST(N'2018-01-31T23:31:12.000' AS DateTime), 74, N'~/KCZWWPJ', 52, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (479, N'Streaming An Incredibly Easy Method That Works For', CAST(N'2018-01-23T15:21:36.000' AS DateTime), CAST(N'2018-01-23T19:12:00.000' AS DateTime), 78, N'~/MANTHKX', 32, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (480, N'Read This Controversial Article And Find Out More ', CAST(N'2018-02-04T17:45:36.000' AS DateTime), CAST(N'2018-02-04T21:07:12.000' AS DateTime), 74, N'~/HFSZRIF', 41, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (481, N'How To Make Your Database Look Amazing In 5 Days', CAST(N'2018-02-20T06:28:48.000' AS DateTime), CAST(N'2018-02-20T08:52:48.000' AS DateTime), 79, N'~/NLBUOIY', 52, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (482, N'Top 10 Tips With Rock', CAST(N'2018-02-18T10:04:48.000' AS DateTime), CAST(N'2018-02-18T14:52:48.000' AS DateTime), 42, N'~/RGKWGAV', 4, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (483, N'Why You Never See Streaming That Actually Works', CAST(N'2018-01-25T01:26:24.000' AS DateTime), CAST(N'2018-01-25T05:02:24.000' AS DateTime), 50, N'~/THNMCSF', 42, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (484, N'Now You Can Have The Video Of Your Dreams – Cheape', CAST(N'2018-01-21T08:24:00.000' AS DateTime), CAST(N'2018-01-21T12:00:00.000' AS DateTime), 69, N'~/EKZYFSG', 30, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (485, N'How I Improved My Rock In One Day', CAST(N'2018-01-12T15:07:12.000' AS DateTime), CAST(N'2018-01-12T16:33:36.000' AS DateTime), 75, N'~/SPGDOZS', 24, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (486, N'5 Simple Steps To An Effective Video Strategy', CAST(N'2018-01-24T12:14:24.000' AS DateTime), CAST(N'2018-01-24T15:36:00.000' AS DateTime), 84, N'~/XJQNSFO', 21, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (487, N'The Ultimate Guide To Database', CAST(N'2018-01-29T05:16:48.000' AS DateTime), CAST(N'2018-01-29T10:04:48.000' AS DateTime), 77, N'~/RAKAHWW', 23, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (488, N'Don''t Fall For This Rock Scam', CAST(N'2018-01-13T05:31:12.000' AS DateTime), CAST(N'2018-01-13T07:55:12.000' AS DateTime), 82, N'~/ZGRXCHJ', 5, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (489, N'Do Streaming Better Than Barack Obama', CAST(N'2018-02-03T22:48:00.000' AS DateTime), CAST(N'2018-02-04T02:09:36.000' AS DateTime), 66, N'~/NMSMVNT', 56, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (490, N'Sexy Video', CAST(N'2018-03-01T06:00:00.000' AS DateTime), CAST(N'2018-03-01T09:21:36.000' AS DateTime), 31, N'~/NTOZVHX', 43, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (491, N'What Can You Do To Save Your Database From Destruc', CAST(N'2018-01-16T03:07:12.000' AS DateTime), CAST(N'2018-01-16T07:12:00.000' AS DateTime), 49, N'~/EGHLLWQ', 57, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (492, N'Never Lose Your Rock Again', CAST(N'2018-01-05T22:33:36.000' AS DateTime), CAST(N'2018-01-06T02:38:24.000' AS DateTime), 89, N'~/XYNTWFF', 57, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (493, N'Improve(Increase) Your Video In 3 Days', CAST(N'2018-02-26T00:14:24.000' AS DateTime), CAST(N'2018-02-26T02:24:00.000' AS DateTime), 86, N'~/JPOKKPF', 11, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (494, N'The Anthony Robins Guide To Database', CAST(N'2018-02-25T00:00:00.000' AS DateTime), CAST(N'2018-02-25T04:33:36.000' AS DateTime), 74, N'~/RGYROCO', 33, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (495, N'How To Deal With(A) Very Bad Rock', CAST(N'2018-01-20T12:57:36.000' AS DateTime), CAST(N'2018-01-20T15:50:24.000' AS DateTime), 58, N'~/GGPLTZQ', 18, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (496, N'Get Better Streaming Results By Following 3 Simple', CAST(N'2018-02-12T14:24:00.000' AS DateTime), CAST(N'2018-02-12T15:50:24.000' AS DateTime), 17, N'~/ZFJRKAT', 38, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (497, N'The Ultimate Guide To Video', CAST(N'2018-01-09T05:31:12.000' AS DateTime), CAST(N'2018-01-09T05:45:36.000' AS DateTime), 85, N'~/DDHDTJE', 62, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (498, N'Now You Can Have Your Database Done Safely', CAST(N'2018-02-06T16:19:12.000' AS DateTime), CAST(N'2018-02-06T19:12:00.000' AS DateTime), 35, N'~/NJTKXRK', 38, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (499, N'Proof That Streaming Is Exactly What You Are Looki', CAST(N'2018-01-10T08:24:00.000' AS DateTime), CAST(N'2018-01-10T12:57:36.000' AS DateTime), 88, N'~/VQIALJV', 49, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (500, N'How To Improve At Video In 60 Minutes', CAST(N'2018-01-17T13:55:12.000' AS DateTime), CAST(N'2018-01-17T17:16:48.000' AS DateTime), 46, N'~/QVDIQUT', 60, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (501, N'Take 10 Minutes to Get Started With Rock', CAST(N'2018-02-23T04:19:12.000' AS DateTime), CAST(N'2018-02-23T04:48:00.000' AS DateTime), 29, N'~/HIHOBIU', 34, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (502, N'Improve(Increase) Your Streaming In 3 Days', CAST(N'2018-02-15T20:52:48.000' AS DateTime), CAST(N'2018-02-15T21:50:24.000' AS DateTime), 70, N'~/VHSBHAS', 53, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (503, N'4 Ways You Can Grow Your Creativity Using Video', CAST(N'2018-01-15T08:52:48.000' AS DateTime), CAST(N'2018-01-15T10:48:00.000' AS DateTime), 30, N'~/GCZFQLX', 26, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (504, N'Succeed With Database In 24 Hours', CAST(N'2018-02-20T20:52:48.000' AS DateTime), CAST(N'2018-02-21T00:43:12.000' AS DateTime), 72, N'~/AIEOSIP', 45, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (505, N'How To Win Friends And Influence People with Strea', CAST(N'2018-01-06T12:43:12.000' AS DateTime), CAST(N'2018-01-06T13:26:24.000' AS DateTime), 72, N'~/OHOUVLR', 61, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (506, N'10 Tips That Will Make You Influential In Video', CAST(N'2018-02-04T20:09:36.000' AS DateTime), CAST(N'2018-02-05T00:43:12.000' AS DateTime), 72, N'~/XTHHFBW', 37, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (507, N'Winning Tactics For Rock', CAST(N'2018-02-01T23:16:48.000' AS DateTime), CAST(N'2018-02-02T03:50:24.000' AS DateTime), 38, N'~/YJFIFKW', 64, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (508, N'How To Make Your Streaming Look Amazing In 5 Days', CAST(N'2018-02-18T21:07:12.000' AS DateTime), CAST(N'2018-02-18T23:02:24.000' AS DateTime), 33, N'~/JLCUQMB', 5, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (509, N'10 Things You Have In Common With Video', CAST(N'2018-02-11T06:14:24.000' AS DateTime), CAST(N'2018-02-11T10:19:12.000' AS DateTime), 53, N'~/WEZOKAL', 1, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (510, N'How To Teach Database Better Than Anyone Else', CAST(N'2018-02-04T04:48:00.000' AS DateTime), CAST(N'2018-02-04T07:40:48.000' AS DateTime), 29, N'~/HSXCSUY', 63, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (511, N'22 Tips To Start Building A Rock You Always Wanted', CAST(N'2018-01-25T02:24:00.000' AS DateTime), CAST(N'2018-01-25T03:36:00.000' AS DateTime), 80, N'~/UWEIOCI', 33, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (512, N'Listen To Your Customers. They Will Tell You All A', CAST(N'2018-02-16T00:43:12.000' AS DateTime), CAST(N'2018-02-16T02:09:36.000' AS DateTime), 56, N'~/UMTRMFF', 26, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (513, N'3 Tips About Video You Can''t Afford To Miss', CAST(N'2018-02-11T07:40:48.000' AS DateTime), CAST(N'2018-02-11T10:48:00.000' AS DateTime), 20, N'~/YOBNUNP', 31, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (514, N'15 Unheard Ways To Achieve Greater Database', CAST(N'2018-01-01T12:14:24.000' AS DateTime), CAST(N'2018-01-01T13:40:48.000' AS DateTime), 40, N'~/AYQBEPT', 59, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (515, N'SuperEasy Ways To Learn Everything About Rock', CAST(N'2018-02-08T20:38:24.000' AS DateTime), CAST(N'2018-02-09T01:12:00.000' AS DateTime), 50, N'~/PJBCDEN', 27, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (516, N'You Will Thank Us - 10 Tips About Video You Need T', CAST(N'2018-01-16T02:52:48.000' AS DateTime), CAST(N'2018-01-16T07:12:00.000' AS DateTime), 78, N'~/FXXLOWS', 7, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (517, N'Want More Money? Start Database', CAST(N'2018-02-05T17:31:12.000' AS DateTime), CAST(N'2018-02-05T19:55:12.000' AS DateTime), 42, N'~/GUYENAM', 62, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (518, N'5 Secrets: How To Use Rock To Create A Successful ', CAST(N'2018-01-14T18:14:24.000' AS DateTime), CAST(N'2018-01-14T23:02:24.000' AS DateTime), 81, N'~/KRPHVRP', 8, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (519, N'How To Take The Headache Out Of Streaming', CAST(N'2018-02-03T11:02:24.000' AS DateTime), CAST(N'2018-02-03T14:52:48.000' AS DateTime), 48, N'~/DEPTCBP', 6, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (520, N'How To Become Better With Video In 10 Minutes', CAST(N'2018-01-25T14:24:00.000' AS DateTime), CAST(N'2018-01-25T16:48:00.000' AS DateTime), 49, N'~/ISDKPVZ', 43, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (521, N'Don''t Be Fooled By Database', CAST(N'2018-01-29T12:43:12.000' AS DateTime), CAST(N'2018-01-29T14:52:48.000' AS DateTime), 15, N'~/FTIGEUY', 48, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (522, N'You Don''t Have To Be A Big Corporation To Start Ro', CAST(N'2018-01-28T06:28:48.000' AS DateTime), CAST(N'2018-01-28T07:26:24.000' AS DateTime), 83, N'~/OKCJFAA', 12, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (523, N'What You Can Learn From Bill Gates About Video', CAST(N'2018-01-06T03:07:12.000' AS DateTime), CAST(N'2018-01-06T05:16:48.000' AS DateTime), 72, N'~/GEUXNDG', 55, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (524, N'Interesting Facts I Bet You Never Knew About Rock', CAST(N'2018-01-06T15:07:12.000' AS DateTime), CAST(N'2018-01-06T19:26:24.000' AS DateTime), 44, N'~/BBBCKSM', 59, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (525, N'Find Out How I Cured My Streaming In 2 Days', CAST(N'2018-01-03T05:02:24.000' AS DateTime), CAST(N'2018-01-03T06:28:48.000' AS DateTime), 31, N'~/YPPRMXJ', 56, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (526, N'12 Questions Answered About Video', CAST(N'2018-01-31T22:33:36.000' AS DateTime), CAST(N'2018-02-01T00:28:48.000' AS DateTime), 62, N'~/CUEQNJL', 45, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (527, N'101 Ideas For Rock', CAST(N'2018-01-06T04:04:48.000' AS DateTime), CAST(N'2018-01-06T07:55:12.000' AS DateTime), 53, N'~/IHPJHBL', 25, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (528, N'Streaming Made Simple - Even Your Kids Can Do It', CAST(N'2018-02-01T02:24:00.000' AS DateTime), CAST(N'2018-02-01T06:57:36.000' AS DateTime), 17, N'~/PAATUPO', 55, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (529, N'It''s All About (The) Video', CAST(N'2018-01-28T04:33:36.000' AS DateTime), CAST(N'2018-01-28T05:45:36.000' AS DateTime), 89, N'~/MCRQZOK', 34, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (530, N'How To Become Better With Database In 10 Minutes', CAST(N'2018-01-04T23:16:48.000' AS DateTime), CAST(N'2018-01-05T03:50:24.000' AS DateTime), 37, N'~/CPYZAVQ', 22, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (531, N'Rock Adventures', CAST(N'2018-02-19T23:02:24.000' AS DateTime), CAST(N'2018-02-20T00:28:48.000' AS DateTime), 37, N'~/ATOMIGV', 42, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (532, N'5 Sexy Ways To Improve Your Streaming', CAST(N'2018-01-19T00:14:24.000' AS DateTime), CAST(N'2018-01-19T00:43:12.000' AS DateTime), 28, N'~/XGAKCRM', 39, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (533, N'The Secret of Database', CAST(N'2018-02-27T17:16:48.000' AS DateTime), CAST(N'2018-02-27T18:00:00.000' AS DateTime), 31, N'~/PQZSUVY', 60, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (534, N'Learn Exactly How We Made Rock Last Month', CAST(N'2018-02-14T22:19:12.000' AS DateTime), CAST(N'2018-02-15T00:14:24.000' AS DateTime), 68, N'~/YVKPWQN', 53, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (535, N'Streaming Smackdown!', CAST(N'2018-01-24T02:24:00.000' AS DateTime), CAST(N'2018-01-24T05:02:24.000' AS DateTime), 42, N'~/NRTMKJI', 25, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (536, N'Secrets To Video – Even In This Down Economy', CAST(N'2018-02-13T15:07:12.000' AS DateTime), CAST(N'2018-02-13T19:40:48.000' AS DateTime), 47, N'~/JOPMSJZ', 19, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (537, N'To People That Want To Start Database But Are Affr', CAST(N'2018-02-25T02:09:36.000' AS DateTime), CAST(N'2018-02-25T06:14:24.000' AS DateTime), 88, N'~/EZKAIRW', 40, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (538, N'The Secret Of Rock', CAST(N'2018-01-02T15:36:00.000' AS DateTime), CAST(N'2018-01-02T18:00:00.000' AS DateTime), 53, N'~/ABOSKQT', 24, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (539, N'10 Tips That Will Make You Influential In Streamin', CAST(N'2018-01-02T20:52:48.000' AS DateTime), CAST(N'2018-01-03T00:00:00.000' AS DateTime), 16, N'~/NYDTQNR', 5, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (540, N'Are You Embarrassed By Your Video Skills? Here''s W', CAST(N'2018-01-05T08:09:36.000' AS DateTime), CAST(N'2018-01-05T09:36:00.000' AS DateTime), 48, N'~/JVNSNVB', 49, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (541, N'How To Start Database With Less Than $100', CAST(N'2018-02-26T23:02:24.000' AS DateTime), CAST(N'2018-02-26T23:31:12.000' AS DateTime), 39, N'~/VGFZQYH', 6, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (542, N'Boost Your Rock With These Tips', CAST(N'2018-01-29T14:24:00.000' AS DateTime), CAST(N'2018-01-29T18:28:48.000' AS DateTime), 48, N'~/UZSJGWC', 29, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (543, N'Quick and Easy Fix For Your Video', CAST(N'2018-02-08T13:55:12.000' AS DateTime), CAST(N'2018-02-08T16:04:48.000' AS DateTime), 36, N'~/CDSGGCE', 5, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (544, N'Believe In Your Rock Skills But Never Stop Improvi', CAST(N'2018-02-20T17:16:48.000' AS DateTime), CAST(N'2018-02-20T20:52:48.000' AS DateTime), 87, N'~/HHLCGDC', 24, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (545, N'7 Easy Ways To Make Streaming Faster', CAST(N'2018-01-25T05:31:12.000' AS DateTime), CAST(N'2018-01-25T06:43:12.000' AS DateTime), 53, N'~/WTVKVVZ', 51, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (546, N'A Guide To Video At Any Age', CAST(N'2018-02-03T16:48:00.000' AS DateTime), CAST(N'2018-02-03T19:55:12.000' AS DateTime), 57, N'~/TCYIBAE', 20, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (547, N'Top 3 Ways To Buy A Used Database', CAST(N'2018-02-12T14:09:36.000' AS DateTime), CAST(N'2018-02-12T14:24:00.000' AS DateTime), 37, N'~/HFJWRGX', 38, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (548, N'These 5 Simple Rock Tricks Will Pump Up Your Sales', CAST(N'2018-01-22T08:24:00.000' AS DateTime), CAST(N'2018-01-22T09:07:12.000' AS DateTime), 46, N'~/OPJCQPV', 9, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (549, N'Proof That Rock Really Works', CAST(N'2018-01-06T10:48:00.000' AS DateTime), CAST(N'2018-01-06T12:00:00.000' AS DateTime), 41, N'~/QQHLIPD', 32, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (550, N'What Your Customers Really Think About Your Stream', CAST(N'2018-01-08T00:14:24.000' AS DateTime), CAST(N'2018-01-08T03:36:00.000' AS DateTime), 70, N'~/LEHOUND', 53, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (551, N'Secrets To Getting Video To Complete Tasks Quickly', CAST(N'2018-02-20T21:07:12.000' AS DateTime), CAST(N'2018-02-20T22:48:00.000' AS DateTime), 38, N'~/OZGFCIV', 66, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (552, N'Interesting Facts I Bet You Never Knew About Datab', CAST(N'2018-01-21T00:28:48.000' AS DateTime), CAST(N'2018-01-21T04:48:00.000' AS DateTime), 72, N'~/DTFVTWV', 39, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (553, N'5 Incredibly Useful Streaming Tips For Small Busin', CAST(N'2018-02-07T09:07:12.000' AS DateTime), CAST(N'2018-02-07T12:28:48.000' AS DateTime), 87, N'~/DMCRDTN', 30, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (554, N'3 Ways You Can Reinvent Video Without Looking Like', CAST(N'2018-01-06T06:00:00.000' AS DateTime), CAST(N'2018-01-06T10:19:12.000' AS DateTime), 31, N'~/TBMSBIX', 58, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (555, N'The Biggest Lie In Database', CAST(N'2018-02-06T02:24:00.000' AS DateTime), CAST(N'2018-02-06T03:50:24.000' AS DateTime), 37, N'~/TVUFTRL', 13, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (556, N'Where Is The Best Streaming?', CAST(N'2018-01-17T15:50:24.000' AS DateTime), CAST(N'2018-01-17T17:31:12.000' AS DateTime), 73, N'~/CSSLVSA', 27, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (557, N'The Single Most Important Thing You Need To Know A', CAST(N'2018-01-16T20:52:48.000' AS DateTime), CAST(N'2018-01-16T22:33:36.000' AS DateTime), 63, N'~/FYEAHBO', 18, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (558, N'Clear And Unbiased Facts About Streaming (Without ', CAST(N'2018-01-15T23:16:48.000' AS DateTime), CAST(N'2018-01-16T00:57:36.000' AS DateTime), 58, N'~/ZGFOAZH', 25, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (559, N'Why You Never See Database That Actually Works', CAST(N'2018-02-17T08:09:36.000' AS DateTime), CAST(N'2018-02-17T08:52:48.000' AS DateTime), 75, N'~/CJGQPRV', 47, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (560, N'Improve(Increase) Your Rock In 3 Days', CAST(N'2018-01-19T12:43:12.000' AS DateTime), CAST(N'2018-01-19T16:19:12.000' AS DateTime), 38, N'~/WZAKKQP', 43, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (561, N'Why Video Is The Only Skill You Really Need', CAST(N'2018-02-20T01:26:24.000' AS DateTime), CAST(N'2018-02-20T06:00:00.000' AS DateTime), 28, N'~/FEJEYBA', 52, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (562, N'The Secret of Successful Database', CAST(N'2018-02-07T02:38:24.000' AS DateTime), CAST(N'2018-02-07T03:36:00.000' AS DateTime), 21, N'~/RWUPMVY', 39, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (563, N'How To Find The Right Rock For Your Specific Produ', CAST(N'2018-02-01T17:31:12.000' AS DateTime), CAST(N'2018-02-01T21:07:12.000' AS DateTime), 56, N'~/WBTDKPV', 24, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (564, N'Learn Exactly How I Improved Streaming In 2 Days', CAST(N'2018-01-19T11:16:48.000' AS DateTime), CAST(N'2018-01-19T15:07:12.000' AS DateTime), 16, N'~/MTSBYTN', 41, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (565, N'The Ultimate Secret Of Video', CAST(N'2018-02-26T08:24:00.000' AS DateTime), CAST(N'2018-02-26T12:00:00.000' AS DateTime), 25, N'~/COOXGZS', 46, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (566, N'Take 10 Minutes to Get Started With Database', CAST(N'2018-02-11T01:12:00.000' AS DateTime), CAST(N'2018-02-11T05:02:24.000' AS DateTime), 87, N'~/MLOECQV', 35, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (567, N'3 Simple Tips For Using Rock To Get Ahead Your Com', CAST(N'2018-02-05T02:38:24.000' AS DateTime), CAST(N'2018-02-05T06:00:00.000' AS DateTime), 64, N'~/GRERCRQ', 54, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (568, N'What Zombies Can Teach You About Streaming', CAST(N'2018-02-11T23:31:12.000' AS DateTime), CAST(N'2018-02-12T00:43:12.000' AS DateTime), 39, N'~/SRWCSAO', 62, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (569, N'Here Is A Quick Cure For Database', CAST(N'2018-01-27T05:16:48.000' AS DateTime), CAST(N'2018-01-27T06:14:24.000' AS DateTime), 29, N'~/XCEUXIX', 17, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (570, N'Read This Controversial Article And Find Out More ', CAST(N'2018-01-09T05:45:36.000' AS DateTime), CAST(N'2018-01-09T10:33:36.000' AS DateTime), 39, N'~/JBWHWJE', 63, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (571, N'How Video Made Me A Better Salesperson', CAST(N'2018-02-12T03:36:00.000' AS DateTime), CAST(N'2018-02-12T03:50:24.000' AS DateTime), 65, N'~/IUSWUBH', 44, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (572, N'3 Ways Twitter Destroyed My Rock Without Me Notici', CAST(N'2018-02-23T19:40:48.000' AS DateTime), CAST(N'2018-02-23T21:21:36.000' AS DateTime), 34, N'~/FNZVRVN', 55, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (573, N'Why Streaming Is No Friend To Small Business', CAST(N'2018-01-17T16:04:48.000' AS DateTime), CAST(N'2018-01-17T20:52:48.000' AS DateTime), 46, N'~/BTJTSCC', 31, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (574, N'The Untold Secret To Video In Less Than Ten Minute', CAST(N'2018-01-18T07:55:12.000' AS DateTime), CAST(N'2018-01-18T11:16:48.000' AS DateTime), 43, N'~/LWNWJFK', 49, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (575, N'Best 50 Tips For Rock', CAST(N'2018-02-22T15:07:12.000' AS DateTime), CAST(N'2018-02-22T16:48:00.000' AS DateTime), 71, N'~/OVKLGNQ', 20, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (576, N'Could This Report Be The Definitive Answer To Your', CAST(N'2018-02-25T18:43:12.000' AS DateTime), CAST(N'2018-02-25T23:02:24.000' AS DateTime), 34, N'~/PJDZFLK', 59, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (577, N'Savvy|Smart|Sexy People Do Video :)', CAST(N'2018-01-30T17:31:12.000' AS DateTime), CAST(N'2018-01-30T21:21:36.000' AS DateTime), 81, N'~/QPZQNKU', 48, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (578, N'7 Rules About Streaming Meant To Be Broken', CAST(N'2018-01-23T07:26:24.000' AS DateTime), CAST(N'2018-01-23T11:31:12.000' AS DateTime), 26, N'~/WRFXXFX', 24, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (579, N'What Your Customers Really Think About Your Video?', CAST(N'2018-01-07T02:24:00.000' AS DateTime), CAST(N'2018-01-07T05:31:12.000' AS DateTime), 15, N'~/YLMDRWI', 2, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (580, N'How To Lose Money With Rock', CAST(N'2018-01-14T08:38:24.000' AS DateTime), CAST(N'2018-01-14T11:31:12.000' AS DateTime), 84, N'~/HRHJRVV', 27, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (581, N'Avoid The Top 10 Streaming Mistakes', CAST(N'2018-01-10T12:14:24.000' AS DateTime), CAST(N'2018-01-10T14:24:00.000' AS DateTime), 20, N'~/GDLSBGU', 6, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (582, N'Video Made Simple - Even Your Kids Can Do It', CAST(N'2018-02-11T01:26:24.000' AS DateTime), CAST(N'2018-02-11T03:21:36.000' AS DateTime), 67, N'~/KMJJMOE', 40, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (583, N'Turn Your Rock Into A High Performing Machine', CAST(N'2018-01-09T10:19:12.000' AS DateTime), CAST(N'2018-01-09T11:02:24.000' AS DateTime), 15, N'~/ABAQYYU', 4, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (584, N'Learn How To Start Video', CAST(N'2018-01-04T12:14:24.000' AS DateTime), CAST(N'2018-01-04T12:43:12.000' AS DateTime), 52, N'~/AQBLMRP', 24, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (585, N'3 Ways Create Better Rock With The Help Of Your Do', CAST(N'2018-01-10T11:45:36.000' AS DateTime), CAST(N'2018-01-10T12:28:48.000' AS DateTime), 52, N'~/BBXNOGE', 29, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (586, N'Can You Pass The Video Test?', CAST(N'2018-03-01T10:48:00.000' AS DateTime), CAST(N'2018-03-01T13:55:12.000' AS DateTime), 81, N'~/ZPFETEB', 56, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (587, N'Why My Rock Is Better Than Yours', CAST(N'2018-02-12T00:00:00.000' AS DateTime), CAST(N'2018-02-12T04:48:00.000' AS DateTime), 89, N'~/XUVSJYC', 48, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (588, N'Streaming And The Chuck Norris Effect', CAST(N'2018-02-07T12:43:12.000' AS DateTime), CAST(N'2018-02-07T15:36:00.000' AS DateTime), 67, N'~/GBGCKNO', 38, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (589, N'5 Sexy Ways To Improve Your Video', CAST(N'2018-02-19T20:24:00.000' AS DateTime), CAST(N'2018-02-19T23:16:48.000' AS DateTime), 25, N'~/VZLETLQ', 39, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (590, N'Why Rock Is No Friend To Small Business', CAST(N'2018-01-22T06:28:48.000' AS DateTime), CAST(N'2018-01-22T07:55:12.000' AS DateTime), 22, N'~/JYIXTSG', 34, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (591, N'If Streaming Is So Terrible, Why Don''t Statistics ', CAST(N'2018-02-05T07:12:00.000' AS DateTime), CAST(N'2018-02-05T08:38:24.000' AS DateTime), 68, N'~/UQSIVHT', 57, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (592, N'How You Can (Do) Video In 24 Hours Or Less For Fre', CAST(N'2018-01-17T13:55:12.000' AS DateTime), CAST(N'2018-01-17T17:16:48.000' AS DateTime), 62, N'~/ELUTZPR', 10, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (593, N'A Surprising Tool To Help You Rock', CAST(N'2018-02-25T23:16:48.000' AS DateTime), CAST(N'2018-02-26T01:26:24.000' AS DateTime), 75, N'~/MGGWUCO', 29, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (594, N'Master (Your) Streaming in 5 Minutes A Day', CAST(N'2018-01-24T23:16:48.000' AS DateTime), CAST(N'2018-01-25T02:24:00.000' AS DateTime), 45, N'~/ZGYBIKE', 23, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (595, N'Avoid The Top 10 Mistakes Made By Beginning Video', CAST(N'2018-01-18T05:16:48.000' AS DateTime), CAST(N'2018-01-18T07:40:48.000' AS DateTime), 41, N'~/NURANJI', 7, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (596, N'Get Rid of Streaming Once and For All', CAST(N'2018-02-04T03:36:00.000' AS DateTime), CAST(N'2018-02-04T05:02:24.000' AS DateTime), 54, N'~/GCKTLIX', 37, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (597, N'Video Adventures', CAST(N'2018-01-28T23:45:36.000' AS DateTime), CAST(N'2018-01-29T00:28:48.000' AS DateTime), 38, N'~/CNYJGBH', 46, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (598, N'Essential Rock Smartphone Apps', CAST(N'2018-02-15T16:19:12.000' AS DateTime), CAST(N'2018-02-15T19:12:00.000' AS DateTime), 40, N'~/XKMPZEZ', 8, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (599, N'How Streaming Made Me A Better Salesperson', CAST(N'2018-01-11T16:19:12.000' AS DateTime), CAST(N'2018-01-11T18:57:36.000' AS DateTime), 55, N'~/OIKVTYO', 35, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (600, N'What Everyone Ought To Know About Video', CAST(N'2018-01-27T07:55:12.000' AS DateTime), CAST(N'2018-01-27T10:33:36.000' AS DateTime), 15, N'~/DZWRNLS', 31, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (601, N'What Is Rock and How Does It Work?', CAST(N'2018-02-16T21:50:24.000' AS DateTime), CAST(N'2018-02-17T02:24:00.000' AS DateTime), 55, N'~/OXVMCIT', 5, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (602, N'Why Ignoring Streaming Will Cost You Time and Sale', CAST(N'2018-01-18T22:33:36.000' AS DateTime), CAST(N'2018-01-19T01:55:12.000' AS DateTime), 54, N'~/WPJUBZG', 28, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (603, N'Now You Can Have Your Video Done Safely', CAST(N'2018-02-05T15:21:36.000' AS DateTime), CAST(N'2018-02-05T17:02:24.000' AS DateTime), 48, N'~/GEFWRKY', 24, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (604, N'The Ultimate Guide To Rock', CAST(N'2018-02-26T02:09:36.000' AS DateTime), CAST(N'2018-02-26T02:38:24.000' AS DateTime), 62, N'~/ONCZWIK', 59, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (605, N'The Anthony Robins Guide To Streaming', CAST(N'2018-01-07T09:50:24.000' AS DateTime), CAST(N'2018-01-07T14:38:24.000' AS DateTime), 37, N'~/OKWHVQH', 21, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (606, N'The A - Z Guide Of Video', CAST(N'2018-01-11T20:24:00.000' AS DateTime), CAST(N'2018-01-11T23:45:36.000' AS DateTime), 61, N'~/ZSCWRHJ', 67, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (607, N'How You Can (Do) Streaming In 24 Hours Or Less For', CAST(N'2018-02-20T05:45:36.000' AS DateTime), CAST(N'2018-02-20T09:21:36.000' AS DateTime), 72, N'~/MENTAXX', 53, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (608, N'If You Do Not (Do)Rock Now, You Will Hate Yourself', CAST(N'2018-02-04T04:33:36.000' AS DateTime), CAST(N'2018-02-04T06:57:36.000' AS DateTime), 28, N'~/JCPDWSV', 51, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (609, N'3 Ways Create Better Video With The Help Of Your D', CAST(N'2018-02-10T13:12:00.000' AS DateTime), CAST(N'2018-02-10T13:55:12.000' AS DateTime), 45, N'~/MGKNUEU', 47, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (610, N'Secrets To Getting Rock To Complete Tasks Quickly ', CAST(N'2018-01-01T21:07:12.000' AS DateTime), CAST(N'2018-01-02T01:12:00.000' AS DateTime), 71, N'~/TFIJTFY', 64, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (611, N'Secrets To Rock – Even In This Down Economy', CAST(N'2018-01-14T06:43:12.000' AS DateTime), CAST(N'2018-01-14T08:09:36.000' AS DateTime), 72, N'~/CFCSGIQ', 55, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (612, N'Picture Your Streaming On Top. Read This And Make ', CAST(N'2018-01-09T08:52:48.000' AS DateTime), CAST(N'2018-01-09T13:40:48.000' AS DateTime), 36, N'~/ZYCWPVD', 4, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (613, N'How To Learn Video', CAST(N'2018-01-04T15:21:36.000' AS DateTime), CAST(N'2018-01-04T19:26:24.000' AS DateTime), 89, N'~/YQNQINE', 18, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (614, N'Beware The Rock Scam', CAST(N'2018-02-13T03:07:12.000' AS DateTime), CAST(N'2018-02-13T07:55:12.000' AS DateTime), 76, N'~/IYYKGMY', 45, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (615, N'The Untold Secret To Streaming In Less Than Ten Mi', CAST(N'2018-02-23T18:14:24.000' AS DateTime), CAST(N'2018-02-23T19:26:24.000' AS DateTime), 43, N'~/JHUCAFI', 6, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (616, N'Succeed With Video In 24 Hours', CAST(N'2018-02-12T08:38:24.000' AS DateTime), CAST(N'2018-02-12T09:50:24.000' AS DateTime), 78, N'~/NTXYVAB', 54, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (617, N'What Make Rock Don''t Want You To Know', CAST(N'2018-01-17T22:04:48.000' AS DateTime), CAST(N'2018-01-18T02:09:36.000' AS DateTime), 63, N'~/INPVUNY', 15, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (618, N'Stop Wasting Time And Start Streaming', CAST(N'2018-01-09T02:24:00.000' AS DateTime), CAST(N'2018-01-09T03:21:36.000' AS DateTime), 72, N'~/MJOCSWK', 64, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (619, N'Ho To (Do) Video Without Leaving Your Office(House', CAST(N'2018-01-17T23:02:24.000' AS DateTime), CAST(N'2018-01-18T00:28:48.000' AS DateTime), 28, N'~/GBICQTO', 15, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (620, N'Rock And Love Have 4 Things In Common', CAST(N'2018-02-07T08:52:48.000' AS DateTime), CAST(N'2018-02-07T12:43:12.000' AS DateTime), 88, N'~/YNRMTVM', 63, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (621, N'Want A Thriving Business? Focus On Streaming!', CAST(N'2018-02-23T17:16:48.000' AS DateTime), CAST(N'2018-02-23T20:09:36.000' AS DateTime), 49, N'~/MPDAGJD', 62, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (622, N'Little Known Ways To Rid Yourself Of Rock', CAST(N'2018-01-14T08:38:24.000' AS DateTime), CAST(N'2018-01-14T12:57:36.000' AS DateTime), 23, N'~/LROGMBU', 39, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (623, N'Learn To (Do) Streaming Like A Professional', CAST(N'2018-01-09T12:14:24.000' AS DateTime), CAST(N'2018-01-09T16:19:12.000' AS DateTime), 83, N'~/WWNXCLP', 54, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (624, N'How To Make Your Video Look Like A Million Bucks', CAST(N'2018-01-06T17:45:36.000' AS DateTime), CAST(N'2018-01-06T19:55:12.000' AS DateTime), 86, N'~/HFFPRYB', 10, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (625, N'Guaranteed No Stress Streaming', CAST(N'2018-01-29T19:40:48.000' AS DateTime), CAST(N'2018-01-29T23:31:12.000' AS DateTime), 80, N'~/IZORTBI', 67, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (626, N'5 Sexy Ways To Improve Your Rock', CAST(N'2018-01-18T00:00:00.000' AS DateTime), CAST(N'2018-01-18T00:43:12.000' AS DateTime), 36, N'~/QIADTSE', 11, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (627, N'Short Story: The Truth About Streaming', CAST(N'2018-01-06T21:50:24.000' AS DateTime), CAST(N'2018-01-06T23:16:48.000' AS DateTime), 34, N'~/BPVMBTG', 31, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (628, N'Video? It''s Easy If You Do It Smart', CAST(N'2018-01-18T19:12:00.000' AS DateTime), CAST(N'2018-01-18T20:52:48.000' AS DateTime), 39, N'~/KYABQDS', 19, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (629, N'What Can You Do To Save Your Rock From Destruction', CAST(N'2018-02-25T02:09:36.000' AS DateTime), CAST(N'2018-02-25T02:52:48.000' AS DateTime), 89, N'~/QLMETNY', 68, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (630, N'What Alberto Savoia Can Teach You About Streaming', CAST(N'2018-02-19T22:48:00.000' AS DateTime), CAST(N'2018-02-20T03:21:36.000' AS DateTime), 26, N'~/INFVWHF', 40, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (631, N'Video Strategies For Beginners', CAST(N'2018-02-08T13:12:00.000' AS DateTime), CAST(N'2018-02-08T15:07:12.000' AS DateTime), 22, N'~/DXNXWZN', 30, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (632, N'If Rock Is So Terrible, Why Don''t Statistics Show ', CAST(N'2018-02-02T00:43:12.000' AS DateTime), CAST(N'2018-02-02T03:50:24.000' AS DateTime), 75, N'~/WHSPKRH', 66, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (633, N'How To Earn $398/Day Using Streaming', CAST(N'2018-01-25T06:00:00.000' AS DateTime), CAST(N'2018-01-25T08:09:36.000' AS DateTime), 28, N'~/YTZKDSK', 65, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (634, N'Top 25 Quotes On Video', CAST(N'2018-02-22T03:36:00.000' AS DateTime), CAST(N'2018-02-22T06:14:24.000' AS DateTime), 61, N'~/GMQMBST', 28, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (635, N'Want A Thriving Business? Focus On Rock!', CAST(N'2018-02-15T22:33:36.000' AS DateTime), CAST(N'2018-02-16T00:14:24.000' AS DateTime), 33, N'~/OJTNKOO', 60, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (636, N'Little Known Ways to Streaming', CAST(N'2018-02-27T02:24:00.000' AS DateTime), CAST(N'2018-02-27T03:36:00.000' AS DateTime), 21, N'~/FFSABGR', 54, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (637, N'How To Win Clients And Influence Markets with Vide', CAST(N'2018-01-21T21:50:24.000' AS DateTime), CAST(N'2018-01-21T23:45:36.000' AS DateTime), 66, N'~/GEYFZAR', 44, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (638, N'15 Tips For Rock Success', CAST(N'2018-02-11T21:36:00.000' AS DateTime), CAST(N'2018-02-11T22:33:36.000' AS DateTime), 33, N'~/DXINDYG', 28, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (639, N'No More Mistakes With Video', CAST(N'2018-01-08T13:12:00.000' AS DateTime), CAST(N'2018-01-08T13:55:12.000' AS DateTime), 64, N'~/XVJIDDA', 43, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (640, N'What Zombies Can Teach You About Rock', CAST(N'2018-01-08T05:45:36.000' AS DateTime), CAST(N'2018-01-08T07:26:24.000' AS DateTime), 64, N'~/BTQXNDV', 63, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (641, N'Here Is What You Should Do For Your Streaming', CAST(N'2018-01-21T12:14:24.000' AS DateTime), CAST(N'2018-01-21T16:48:00.000' AS DateTime), 70, N'~/ILORKJN', 47, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (642, N'Video: The Samurai Way', CAST(N'2018-02-08T08:38:24.000' AS DateTime), CAST(N'2018-02-08T11:45:36.000' AS DateTime), 17, N'~/EVTBBHW', 36, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (643, N'Get Rid of Rock Once and For All', CAST(N'2018-02-01T10:48:00.000' AS DateTime), CAST(N'2018-02-01T11:02:24.000' AS DateTime), 49, N'~/JQYTZSM', 54, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (644, N'Never Suffer From Video Again', CAST(N'2018-01-05T17:16:48.000' AS DateTime), CAST(N'2018-01-05T22:04:48.000' AS DateTime), 16, N'~/ZPZYUNY', 19, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (645, N'Savvy|Smart|Sexy People Do Rock :)', CAST(N'2018-01-05T19:40:48.000' AS DateTime), CAST(N'2018-01-05T20:24:00.000' AS DateTime), 26, N'~/CHWJKLS', 20, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (646, N'Here Is A Method That Is Helping Streaming', CAST(N'2018-01-08T22:04:48.000' AS DateTime), CAST(N'2018-01-09T01:40:48.000' AS DateTime), 53, N'~/BIYPMJM', 61, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (647, N'Should Fixing Video Take 60 Steps?', CAST(N'2018-01-09T22:19:12.000' AS DateTime), CAST(N'2018-01-09T23:02:24.000' AS DateTime), 77, N'~/ITNBKDX', 63, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (648, N'How To Make Your Product Stand Out With Rock', CAST(N'2018-01-25T10:04:48.000' AS DateTime), CAST(N'2018-01-25T11:02:24.000' AS DateTime), 31, N'~/YHNXBBS', 64, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (649, N'The Single Most Important Thing You Need To Know A', CAST(N'2018-01-03T01:55:12.000' AS DateTime), CAST(N'2018-01-03T05:45:36.000' AS DateTime), 86, N'~/JWXQHHY', 51, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (650, N'Learn Exactly How We Made Video Last Month', CAST(N'2018-02-14T09:21:36.000' AS DateTime), CAST(N'2018-02-14T11:45:36.000' AS DateTime), 87, N'~/IPTCEFT', 41, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (651, N'Who Else Wants To Be Successful With Rock', CAST(N'2018-01-31T13:26:24.000' AS DateTime), CAST(N'2018-01-31T15:50:24.000' AS DateTime), 71, N'~/FSXLOSC', 33, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (652, N'How To Use Streaming To Desire', CAST(N'2018-01-11T14:52:48.000' AS DateTime), CAST(N'2018-01-11T18:43:12.000' AS DateTime), 45, N'~/QWTPWZE', 68, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (653, N'Video: This Is What Professionals Do', CAST(N'2018-01-25T23:16:48.000' AS DateTime), CAST(N'2018-01-25T23:45:36.000' AS DateTime), 42, N'~/MZXQKWY', 66, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (654, N'Wondering How To Make Your Rock Rock? Read This!', CAST(N'2018-01-23T12:14:24.000' AS DateTime), CAST(N'2018-01-23T16:19:12.000' AS DateTime), 43, N'~/UPIGCDG', 45, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (655, N'Read This Controversial Article And Find Out More ', CAST(N'2018-01-03T04:19:12.000' AS DateTime), CAST(N'2018-01-03T06:57:36.000' AS DateTime), 17, N'~/BSIPSUX', 41, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (656, N'5 Romantic Video Ideas', CAST(N'2018-01-17T01:55:12.000' AS DateTime), CAST(N'2018-01-17T04:19:12.000' AS DateTime), 67, N'~/RARCVEJ', 15, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (657, N'Why Streaming Succeeds', CAST(N'2018-02-06T00:14:24.000' AS DateTime), CAST(N'2018-02-06T03:36:00.000' AS DateTime), 18, N'~/FJJQLQD', 28, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (658, N'Where Is The Best Video?', CAST(N'2018-02-10T07:26:24.000' AS DateTime), CAST(N'2018-02-10T12:00:00.000' AS DateTime), 60, N'~/HMNBUTD', 64, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (659, N'3 Rock Secrets You Never Knew', CAST(N'2018-02-04T03:36:00.000' AS DateTime), CAST(N'2018-02-04T06:28:48.000' AS DateTime), 77, N'~/TAGPOFR', 13, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (660, N'Warning: These 9 Mistakes Will Destroy Your Stream', CAST(N'2018-02-02T22:48:00.000' AS DateTime), CAST(N'2018-02-03T02:52:48.000' AS DateTime), 27, N'~/HWFPACV', 25, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (661, N'A Surprising Tool To Help You Video', CAST(N'2018-01-26T06:00:00.000' AS DateTime), CAST(N'2018-01-26T07:40:48.000' AS DateTime), 48, N'~/QBPCYEZ', 55, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (662, N'Streaming Is Essential For Your Success. Read This', CAST(N'2018-01-31T08:38:24.000' AS DateTime), CAST(N'2018-01-31T12:00:00.000' AS DateTime), 18, N'~/LKIUDKZ', 45, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (663, N'Fascinating Video Tactics That Can Help Your Busin', CAST(N'2018-01-21T20:09:36.000' AS DateTime), CAST(N'2018-01-22T00:00:00.000' AS DateTime), 34, N'~/HHJVNPW', 26, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (664, N'SuperEasy Ways To Learn Everything About Streaming', CAST(N'2018-02-12T10:19:12.000' AS DateTime), CAST(N'2018-02-12T14:38:24.000' AS DateTime), 39, N'~/TZYILTV', 18, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (665, N'9 Ways Video Can Make You Invincible', CAST(N'2018-02-14T16:48:00.000' AS DateTime), CAST(N'2018-02-14T20:38:24.000' AS DateTime), 17, N'~/DDKBFSZ', 6, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (666, N'Death, Streaming And Taxes', CAST(N'2018-01-27T22:48:00.000' AS DateTime), CAST(N'2018-01-28T00:28:48.000' AS DateTime), 65, N'~/LZFXZWP', 9, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (667, N'Video Is Bound To Make An Impact In Your Business', CAST(N'2018-02-03T17:31:12.000' AS DateTime), CAST(N'2018-02-03T18:57:36.000' AS DateTime), 65, N'~/XGQCGDE', 39, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (668, N'Learn To (Do) Rock Like A Professional', CAST(N'2018-01-18T08:09:36.000' AS DateTime), CAST(N'2018-01-18T09:36:00.000' AS DateTime), 73, N'~/ZUYJLWF', 41, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (669, N'Are You Making These Video Mistakes?', CAST(N'2018-02-08T16:33:36.000' AS DateTime), CAST(N'2018-02-08T20:24:00.000' AS DateTime), 36, N'~/VOPNVKR', 18, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (670, N'Congratulations! Your Streaming Is (Are) About To ', CAST(N'2018-02-01T01:55:12.000' AS DateTime), CAST(N'2018-02-01T04:04:48.000' AS DateTime), 43, N'~/ASKJXFB', 10, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (671, N'3 Things Everyone Knows About Video That You Don''t', CAST(N'2018-01-22T03:50:24.000' AS DateTime), CAST(N'2018-01-22T04:33:36.000' AS DateTime), 30, N'~/GTTROGU', 25, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (672, N'How To Teach Streaming Better Than Anyone Else', CAST(N'2018-01-15T20:24:00.000' AS DateTime), CAST(N'2018-01-15T21:21:36.000' AS DateTime), 54, N'~/VBDNJKP', 43, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (673, N'The Secrets To Video', CAST(N'2018-02-01T19:55:12.000' AS DateTime), CAST(N'2018-02-01T22:48:00.000' AS DateTime), 38, N'~/YWSXJND', 50, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (674, N'Little Known Ways to Rock', CAST(N'2018-02-10T04:19:12.000' AS DateTime), CAST(N'2018-02-10T06:43:12.000' AS DateTime), 88, N'~/EATXVGC', 26, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (675, N'Streaming Expert Interview', CAST(N'2018-02-03T18:28:48.000' AS DateTime), CAST(N'2018-02-03T22:19:12.000' AS DateTime), 65, N'~/WGNDFFF', 14, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (676, N'Video And Love Have 4 Things In Common', CAST(N'2018-02-20T00:00:00.000' AS DateTime), CAST(N'2018-02-20T02:24:00.000' AS DateTime), 69, N'~/GPDQZVC', 47, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (677, N'Short Story: The Truth About Rock', CAST(N'2018-02-19T19:26:24.000' AS DateTime), CAST(N'2018-02-19T20:24:00.000' AS DateTime), 69, N'~/HYUTLMO', 56, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (678, N'Turn Your Streaming Into A High Performing Machine', CAST(N'2018-01-23T06:43:12.000' AS DateTime), CAST(N'2018-01-23T07:26:24.000' AS DateTime), 18, N'~/CJTPXMQ', 30, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (679, N'Winning Tactics For Video', CAST(N'2018-02-01T02:09:36.000' AS DateTime), CAST(N'2018-02-01T02:52:48.000' AS DateTime), 56, N'~/YXZXMYI', 26, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (680, N'Listen To Your Customers. They Will Tell You All A', CAST(N'2018-02-05T09:50:24.000' AS DateTime), CAST(N'2018-02-05T10:19:12.000' AS DateTime), 66, N'~/SGPDDNG', 32, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (681, N'15 Unheard Ways To Achieve Greater Streaming', CAST(N'2018-01-20T19:26:24.000' AS DateTime), CAST(N'2018-01-20T22:04:48.000' AS DateTime), 64, N'~/HTMNIWT', 8, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (682, N'Fast-Track Your Video', CAST(N'2018-01-02T10:33:36.000' AS DateTime), CAST(N'2018-01-02T12:57:36.000' AS DateTime), 21, N'~/UIRGOMI', 40, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (683, N'Rock Is Bound To Make An Impact In Your Business', CAST(N'2018-01-04T23:02:24.000' AS DateTime), CAST(N'2018-01-05T01:55:12.000' AS DateTime), 87, N'~/MSKFEWC', 21, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (684, N'7 Ways To Keep Your Streaming Growing Without Burn', CAST(N'2018-03-01T08:52:48.000' AS DateTime), CAST(N'2018-03-01T09:07:12.000' AS DateTime), 78, N'~/WMJITWZ', 67, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (685, N'The Lazy Man''s Guide To Rock', CAST(N'2018-01-16T21:36:00.000' AS DateTime), CAST(N'2018-01-16T22:33:36.000' AS DateTime), 43, N'~/OGMNWBR', 62, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (686, N'5 Ways To Get Through To Your Video', CAST(N'2018-02-24T04:33:36.000' AS DateTime), CAST(N'2018-02-24T07:40:48.000' AS DateTime), 24, N'~/WKBQEKU', 2, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (687, N'5 Simple Steps To An Effective Rock Strategy', CAST(N'2018-01-21T13:55:12.000' AS DateTime), CAST(N'2018-01-21T18:43:12.000' AS DateTime), 87, N'~/OOLRHUD', 51, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (688, N'5 Surefire Ways Streaming Will Drive Your Business', CAST(N'2018-01-28T02:52:48.000' AS DateTime), CAST(N'2018-01-28T07:40:48.000' AS DateTime), 68, N'~/KVSPFGP', 59, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (689, N'3 Ways To Master Video Without Breaking A Sweat', CAST(N'2018-02-05T14:09:36.000' AS DateTime), CAST(N'2018-02-05T16:04:48.000' AS DateTime), 23, N'~/AFVDOXF', 40, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (690, N'To People That Want To Start Rock But Are Affraid ', CAST(N'2018-02-09T00:28:48.000' AS DateTime), CAST(N'2018-02-09T05:02:24.000' AS DateTime), 52, N'~/VMIGYWS', 58, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (691, N'The Ultimate Secret Of Streaming', CAST(N'2018-01-18T15:07:12.000' AS DateTime), CAST(N'2018-01-18T19:55:12.000' AS DateTime), 75, N'~/LRVTAZW', 49, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (692, N'Video And The Chuck Norris Effect', CAST(N'2018-02-20T04:04:48.000' AS DateTime), CAST(N'2018-02-20T07:55:12.000' AS DateTime), 82, N'~/JJUMVNW', 67, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (693, N'The Ultimate Guide To Rock', CAST(N'2018-01-16T03:50:24.000' AS DateTime), CAST(N'2018-01-16T08:24:00.000' AS DateTime), 34, N'~/NBAWHUR', 65, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (694, N'Video: An Incredibly Easy Method That Works For Al', CAST(N'2018-02-07T13:26:24.000' AS DateTime), CAST(N'2018-02-07T18:14:24.000' AS DateTime), 26, N'~/QWXCZIN', 12, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (695, N'5 Actionable Tips on Rock And Twitter.', CAST(N'2018-01-22T07:55:12.000' AS DateTime), CAST(N'2018-01-22T12:14:24.000' AS DateTime), 84, N'~/ZCWTHRB', 34, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (696, N'Why My Streaming Is Better Than Yours', CAST(N'2018-02-13T02:09:36.000' AS DateTime), CAST(N'2018-02-13T04:19:12.000' AS DateTime), 82, N'~/WXIGMXV', 65, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (697, N'The A - Z Guide Of Rock', CAST(N'2018-02-17T14:09:36.000' AS DateTime), CAST(N'2018-02-17T16:04:48.000' AS DateTime), 16, N'~/NKGDJGH', 65, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (698, N'Want More Money? Start Streaming', CAST(N'2018-01-27T17:31:12.000' AS DateTime), CAST(N'2018-01-27T22:04:48.000' AS DateTime), 57, N'~/TKRHXAG', 40, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (699, N'Is Video Worth [$] To You?', CAST(N'2018-01-29T17:45:36.000' AS DateTime), CAST(N'2018-01-29T18:43:12.000' AS DateTime), 50, N'~/OQWVUDQ', 9, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (700, N'If You Do Not (Do)Streaming Now, You Will Hate You', CAST(N'2018-01-13T21:07:12.000' AS DateTime), CAST(N'2018-01-14T00:00:00.000' AS DateTime), 82, N'~/OLVYDFQ', 51, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (701, N'Warning: These 9 Mistakes Will Destroy Your Video', CAST(N'2018-01-24T11:31:12.000' AS DateTime), CAST(N'2018-01-24T13:26:24.000' AS DateTime), 72, N'~/OLBGIFX', 57, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (702, N'Marriage And Video Have More In Common Than You Th', CAST(N'2018-01-05T08:09:36.000' AS DateTime), CAST(N'2018-01-05T10:48:00.000' AS DateTime), 20, N'~/ZFLHFRQ', 20, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (703, N'5 Problems Everyone Has With Rock – How To Solved ', CAST(N'2018-02-17T13:40:48.000' AS DateTime), CAST(N'2018-02-17T18:00:00.000' AS DateTime), 56, N'~/OHMFZNT', 12, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (704, N'Why I Hate Streaming', CAST(N'2018-01-14T01:55:12.000' AS DateTime), CAST(N'2018-01-14T05:16:48.000' AS DateTime), 69, N'~/SILTKLX', 52, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (705, N'Do Video Better Than Barack Obama', CAST(N'2018-01-15T16:48:00.000' AS DateTime), CAST(N'2018-01-15T17:31:12.000' AS DateTime), 68, N'~/ZKSFPAS', 25, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (706, N'3 Ways To Master Rock Without Breaking A Sweat', CAST(N'2018-01-26T03:21:36.000' AS DateTime), CAST(N'2018-01-26T04:19:12.000' AS DateTime), 17, N'~/RDMQKEY', 66, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (707, N'15 Lessons About Video You Need To Learn To Succee', CAST(N'2018-01-02T15:07:12.000' AS DateTime), CAST(N'2018-01-02T16:04:48.000' AS DateTime), 35, N'~/NAQJYVJ', 66, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (708, N'Rock Is Crucial To Your Business. Learn Why!', CAST(N'2018-01-13T09:50:24.000' AS DateTime), CAST(N'2018-01-13T13:26:24.000' AS DateTime), 87, N'~/NRYUJUS', 26, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (709, N'9 Ridiculous Rules About Streaming', CAST(N'2018-01-14T02:24:00.000' AS DateTime), CAST(N'2018-01-14T06:00:00.000' AS DateTime), 53, N'~/QNQKBBF', 50, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (710, N'Don''t Be Fooled By Video', CAST(N'2018-02-02T10:19:12.000' AS DateTime), CAST(N'2018-02-02T15:07:12.000' AS DateTime), 90, N'~/PHZUXBK', 28, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (711, N'Need More Time? Read These Tips To Eliminate Rock', CAST(N'2018-02-27T15:07:12.000' AS DateTime), CAST(N'2018-02-27T17:16:48.000' AS DateTime), 57, N'~/SVXKYCC', 25, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (712, N'Fear? Not If You Use Streaming The Right Way!', CAST(N'2018-01-15T23:31:12.000' AS DateTime), CAST(N'2018-01-16T02:09:36.000' AS DateTime), 25, N'~/LFBMGXS', 68, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (713, N'You Don''t Have To Be A Big Corporation To Start Vi', CAST(N'2018-01-16T06:00:00.000' AS DateTime), CAST(N'2018-01-16T09:21:36.000' AS DateTime), 73, N'~/RZSFGKL', 56, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (714, N'What Can You Do About Rock Right Now', CAST(N'2018-01-20T00:43:12.000' AS DateTime), CAST(N'2018-01-20T03:36:00.000' AS DateTime), 47, N'~/IRRMOJO', 60, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (715, N'3 Ways You Can Reinvent Streaming Without Looking ', CAST(N'2018-01-21T04:19:12.000' AS DateTime), CAST(N'2018-01-21T08:38:24.000' AS DateTime), 35, N'~/SRNKQRN', 62, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (716, N'Proof That Video Really Works', CAST(N'2018-02-24T12:28:48.000' AS DateTime), CAST(N'2018-02-24T16:19:12.000' AS DateTime), 41, N'~/GRSQBWG', 28, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (717, N'Why Most People Will Never Be Great At Rock', CAST(N'2018-02-07T21:36:00.000' AS DateTime), CAST(N'2018-02-08T00:57:36.000' AS DateTime), 35, N'~/ZYINDSU', 41, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (718, N'Proof That Streaming Really Works', CAST(N'2018-02-09T16:33:36.000' AS DateTime), CAST(N'2018-02-09T18:14:24.000' AS DateTime), 56, N'~/CPIRCDX', 8, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (719, N'Video Your Way To Success', CAST(N'2018-01-18T14:09:36.000' AS DateTime), CAST(N'2018-01-18T16:48:00.000' AS DateTime), 89, N'~/KJGNFGD', 39, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (720, N'The Secrets To Streaming', CAST(N'2018-01-06T01:55:12.000' AS DateTime), CAST(N'2018-01-06T02:38:24.000' AS DateTime), 25, N'~/ZVWYCUB', 29, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (721, N'Here Is A Quick Cure For Streaming', CAST(N'2018-02-28T00:00:00.000' AS DateTime), CAST(N'2018-02-28T00:14:24.000' AS DateTime), 90, N'~/QYRYFUC', 47, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (722, N'Don''t Be Fooled By Rock', CAST(N'2018-02-17T13:12:00.000' AS DateTime), CAST(N'2018-02-17T17:31:12.000' AS DateTime), 69, N'~/AEHBTVQ', 36, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (723, N'Sick And Tired Of Doing Streaming The Old Way? Rea', CAST(N'2018-01-26T13:12:00.000' AS DateTime), CAST(N'2018-01-26T15:36:00.000' AS DateTime), 34, N'~/JMBCKMG', 44, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (724, N'Video: Do You Really Need It? This Will Help You D', CAST(N'2018-02-16T18:57:36.000' AS DateTime), CAST(N'2018-02-16T20:38:24.000' AS DateTime), 23, N'~/DFHOEUB', 42, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (725, N'Why Most Streaming Fail', CAST(N'2018-02-20T05:45:36.000' AS DateTime), CAST(N'2018-02-20T08:52:48.000' AS DateTime), 70, N'~/TRNIJHM', 42, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (726, N'Take The Stress Out Of Video', CAST(N'2018-02-25T07:55:12.000' AS DateTime), CAST(N'2018-02-25T09:36:00.000' AS DateTime), 79, N'~/QRPNJYZ', 43, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (727, N'10 Unforgivable Sins Of Streaming', CAST(N'2018-01-19T11:31:12.000' AS DateTime), CAST(N'2018-01-19T15:07:12.000' AS DateTime), 53, N'~/DMVRHNI', 56, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (728, N'Master (Your) Video in 5 Minutes A Day', CAST(N'2018-02-09T05:45:36.000' AS DateTime), CAST(N'2018-02-09T07:26:24.000' AS DateTime), 73, N'~/KGJGNWI', 26, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (729, N'How To Turn Your Rock From Zero To Hero', CAST(N'2018-01-04T10:04:48.000' AS DateTime), CAST(N'2018-01-04T10:33:36.000' AS DateTime), 17, N'~/HALXMIF', 63, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (730, N'5 Best Ways To Sell Streaming', CAST(N'2018-02-18T19:55:12.000' AS DateTime), CAST(N'2018-02-18T21:50:24.000' AS DateTime), 62, N'~/EANJSFV', 36, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (731, N'Rock Smackdown!', CAST(N'2018-01-20T17:16:48.000' AS DateTime), CAST(N'2018-01-20T18:14:24.000' AS DateTime), 37, N'~/FXGQUUM', 17, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (732, N'7 Easy Ways To Make Video Faster', CAST(N'2018-02-26T10:04:48.000' AS DateTime), CAST(N'2018-02-26T12:00:00.000' AS DateTime), 67, N'~/CWFETDE', 40, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (733, N'Why Everything You Know About Streaming Is A Lie', CAST(N'2018-01-14T17:02:24.000' AS DateTime), CAST(N'2018-01-14T21:50:24.000' AS DateTime), 70, N'~/GYQDFDA', 36, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (734, N'Beware The Video Scam', CAST(N'2018-01-02T11:16:48.000' AS DateTime), CAST(N'2018-01-02T15:50:24.000' AS DateTime), 52, N'~/VRYHSWE', 6, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (735, N'Never Suffer From Rock Again', CAST(N'2018-02-01T04:04:48.000' AS DateTime), CAST(N'2018-02-01T05:02:24.000' AS DateTime), 16, N'~/IBRWGAE', 14, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (736, N'3 Ways Twitter Destroyed My Streaming Without Me N', CAST(N'2018-01-18T20:24:00.000' AS DateTime), CAST(N'2018-01-18T23:45:36.000' AS DateTime), 46, N'~/LWVCUNS', 9, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (737, N'How To Sell Video', CAST(N'2018-03-01T05:02:24.000' AS DateTime), CAST(N'2018-03-01T06:28:48.000' AS DateTime), 63, N'~/UCYRTCP', 9, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (738, N'5 Things To Do Immediately About Rock', CAST(N'2018-02-08T04:04:48.000' AS DateTime), CAST(N'2018-02-08T08:24:00.000' AS DateTime), 81, N'~/XBIAPQV', 13, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (739, N'The Ultimate Guide To Streaming', CAST(N'2018-02-11T00:57:36.000' AS DateTime), CAST(N'2018-02-11T05:31:12.000' AS DateTime), 40, N'~/DZVAGYL', 5, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (740, N'How To Quit Rock In 5 Days', CAST(N'2018-02-17T12:28:48.000' AS DateTime), CAST(N'2018-02-17T16:04:48.000' AS DateTime), 49, N'~/ATPMUWI', 62, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (741, N'What Is Streaming and How Does It Work?', CAST(N'2018-01-06T07:40:48.000' AS DateTime), CAST(N'2018-01-06T11:02:24.000' AS DateTime), 86, N'~/WTHXHBO', 30, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (742, N'The Single Most Important Thing You Need To Know A', CAST(N'2018-01-25T14:09:36.000' AS DateTime), CAST(N'2018-01-25T15:07:12.000' AS DateTime), 37, N'~/TMUUKZH', 22, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (743, N'Top 10 Tips To Grow Your Streaming', CAST(N'2018-01-10T03:36:00.000' AS DateTime), CAST(N'2018-01-10T07:55:12.000' AS DateTime), 15, N'~/BCARZNJ', 23, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (744, N'The Lazy Way To Streaming', CAST(N'2018-01-25T16:48:00.000' AS DateTime), CAST(N'2018-01-25T19:40:48.000' AS DateTime), 65, N'~/ABQKSEE', 37, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (745, N'The Number One Reason You Should (Do) Video', CAST(N'2018-02-08T17:31:12.000' AS DateTime), CAST(N'2018-02-08T22:04:48.000' AS DateTime), 72, N'~/THFCYSB', 13, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (746, N'Find Out Now, What Should You Do For Fast Streamin', CAST(N'2018-02-26T06:43:12.000' AS DateTime), CAST(N'2018-02-26T07:26:24.000' AS DateTime), 23, N'~/XWZDXML', 64, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (747, N'Who Else Wants To Enjoy Video', CAST(N'2018-01-06T09:36:00.000' AS DateTime), CAST(N'2018-01-06T13:12:00.000' AS DateTime), 27, N'~/GGXLJTX', 8, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (748, N'12 Questions Answered About Rock', CAST(N'2018-02-05T00:14:24.000' AS DateTime), CAST(N'2018-02-05T04:04:48.000' AS DateTime), 27, N'~/XHZDUST', 13, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (749, N'10 Warning Signs Of Your Video Demise', CAST(N'2018-02-06T15:50:24.000' AS DateTime), CAST(N'2018-02-06T19:26:24.000' AS DateTime), 55, N'~/KYCQBSP', 41, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (750, N'The Quickest & Easiest Way To Rock', CAST(N'2018-01-02T12:43:12.000' AS DateTime), CAST(N'2018-01-02T14:52:48.000' AS DateTime), 70, N'~/ZYDVXLZ', 40, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (751, N'The Secret of Successful Streaming', CAST(N'2018-02-14T15:21:36.000' AS DateTime), CAST(N'2018-02-14T20:09:36.000' AS DateTime), 40, N'~/LKKXZRY', 60, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (752, N'What Everyone Must Know About Video', CAST(N'2018-01-14T21:21:36.000' AS DateTime), CAST(N'2018-01-15T01:40:48.000' AS DateTime), 79, N'~/YXNSHRO', 64, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (753, N'Essential Streaming Smartphone Apps', CAST(N'2018-02-11T01:12:00.000' AS DateTime), CAST(N'2018-02-11T04:04:48.000' AS DateTime), 30, N'~/JCCSMFB', 3, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (754, N'A Surprising Tool To Help You Streaming', CAST(N'2018-02-16T16:33:36.000' AS DateTime), CAST(N'2018-02-16T18:57:36.000' AS DateTime), 40, N'~/GZSLRIK', 28, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (755, N'Ho To (Do) Rock Without Leaving Your Office(House)', CAST(N'2018-02-03T17:31:12.000' AS DateTime), CAST(N'2018-02-03T17:45:36.000' AS DateTime), 46, N'~/KXZWNLE', 48, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (756, N'3 Ways To Master Streaming Without Breaking A Swea', CAST(N'2018-01-31T02:52:48.000' AS DateTime), CAST(N'2018-01-31T05:45:36.000' AS DateTime), 58, N'~/ZRGIYUN', 11, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (757, N'Lies And Damn Lies About Video', CAST(N'2018-02-04T17:16:48.000' AS DateTime), CAST(N'2018-02-04T18:00:00.000' AS DateTime), 77, N'~/IJLFMKE', 51, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (758, N'What Everyone Must Know About Rock', CAST(N'2018-01-30T21:21:36.000' AS DateTime), CAST(N'2018-01-31T00:43:12.000' AS DateTime), 33, N'~/UTJWBJD', 41, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (759, N'5 Simple Steps To An Effective Streaming Strategy', CAST(N'2018-02-04T16:33:36.000' AS DateTime), CAST(N'2018-02-04T19:55:12.000' AS DateTime), 61, N'~/LTZWDKN', 57, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (760, N'Want More Money? Start Video', CAST(N'2018-02-18T14:09:36.000' AS DateTime), CAST(N'2018-02-18T17:31:12.000' AS DateTime), 17, N'~/LQUQDXQ', 68, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (761, N'Some People Excel At Streaming And Some Don''t - Wh', CAST(N'2018-01-11T04:33:36.000' AS DateTime), CAST(N'2018-01-11T06:57:36.000' AS DateTime), 37, N'~/XWEQFVT', 13, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (762, N'Here''s A Quick Way To Solve A Problem with Video', CAST(N'2018-03-01T13:55:12.000' AS DateTime), CAST(N'2018-03-01T17:31:12.000' AS DateTime), 37, N'~/JUMAYUN', 68, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (763, N'Why You Really Need (A) Streaming', CAST(N'2018-02-06T15:21:36.000' AS DateTime), CAST(N'2018-02-06T19:26:24.000' AS DateTime), 43, N'~/NMSPJJA', 27, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (764, N'The Ugly Truth About Video', CAST(N'2018-01-23T17:16:48.000' AS DateTime), CAST(N'2018-01-23T19:26:24.000' AS DateTime), 47, N'~/HHYZHQS', 32, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (765, N'How To Get (A) Fabulous Rock On A Tight Budget', CAST(N'2018-02-16T14:24:00.000' AS DateTime), CAST(N'2018-02-16T17:16:48.000' AS DateTime), 76, N'~/XECTXNF', 66, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (766, N'No More Mistakes With Streaming', CAST(N'2018-01-01T00:28:48.000' AS DateTime), CAST(N'2018-01-01T03:07:12.000' AS DateTime), 30, N'~/QKJSXPV', 26, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (767, N'How To Turn Video Into Success', CAST(N'2018-02-24T16:04:48.000' AS DateTime), CAST(N'2018-02-24T16:19:12.000' AS DateTime), 33, N'~/IAZIULN', 5, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (768, N'Can You Really Find Streaming (on the Web)?', CAST(N'2018-01-01T10:19:12.000' AS DateTime), CAST(N'2018-01-01T13:55:12.000' AS DateTime), 40, N'~/PMMNNRG', 36, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (769, N'Find A Quick Way To Video', CAST(N'2018-01-14T03:36:00.000' AS DateTime), CAST(N'2018-01-14T06:57:36.000' AS DateTime), 43, N'~/XXFGJXC', 61, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (770, N'5 Romantic Rock Ideas', CAST(N'2018-02-02T12:28:48.000' AS DateTime), CAST(N'2018-02-02T14:24:00.000' AS DateTime), 88, N'~/WGUZOKU', 35, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (771, N'How I Improved My Streaming In One Day', CAST(N'2018-02-28T12:43:12.000' AS DateTime), CAST(N'2018-02-28T15:50:24.000' AS DateTime), 70, N'~/NUJLRSY', 19, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (772, N'The Biggest Lie In Video', CAST(N'2018-01-16T02:24:00.000' AS DateTime), CAST(N'2018-01-16T03:50:24.000' AS DateTime), 27, N'~/VUFZERA', 20, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (773, N'Why Everything You Know About Rock Is A Lie', CAST(N'2018-02-12T17:16:48.000' AS DateTime), CAST(N'2018-02-12T21:36:00.000' AS DateTime), 27, N'~/JAKOQIS', 14, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (774, N'Savvy|Smart|Sexy People Do Streaming :)', CAST(N'2018-01-29T20:38:24.000' AS DateTime), CAST(N'2018-01-30T00:00:00.000' AS DateTime), 67, N'~/JDAWQNQ', 65, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (775, N'Everything You Wanted to Know About Video and Were', CAST(N'2018-01-29T18:57:36.000' AS DateTime), CAST(N'2018-01-29T23:16:48.000' AS DateTime), 25, N'~/CESIEEV', 14, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (776, N'How To Handle Every Rock Challenge With Ease Using', CAST(N'2018-02-10T01:12:00.000' AS DateTime), CAST(N'2018-02-10T03:36:00.000' AS DateTime), 39, N'~/XFFOKMX', 7, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (777, N'Streaming: The Samurai Way', CAST(N'2018-02-15T18:43:12.000' AS DateTime), CAST(N'2018-02-15T21:21:36.000' AS DateTime), 23, N'~/DBFQHLP', 66, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (778, N'Secrets To Streaming – Even In This Down Economy', CAST(N'2018-02-26T14:24:00.000' AS DateTime), CAST(N'2018-02-26T17:16:48.000' AS DateTime), 67, N'~/UMPIWWJ', 52, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (779, N'Video Is Crucial To Your Business. Learn Why!', CAST(N'2018-02-02T09:21:36.000' AS DateTime), CAST(N'2018-02-02T13:40:48.000' AS DateTime), 36, N'~/QMOUUIP', 8, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (780, N'The Death Of Rock And How To Avoid It', CAST(N'2018-02-15T23:45:36.000' AS DateTime), CAST(N'2018-02-16T02:09:36.000' AS DateTime), 87, N'~/XMQRNYH', 35, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (781, N'The Philosophy Of Streaming', CAST(N'2018-02-01T02:38:24.000' AS DateTime), CAST(N'2018-02-01T07:26:24.000' AS DateTime), 70, N'~/HLHSGFQ', 68, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (782, N'The Quickest & Easiest Way To Video', CAST(N'2018-01-05T21:50:24.000' AS DateTime), CAST(N'2018-01-06T00:00:00.000' AS DateTime), 42, N'~/DWWSGBB', 42, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (783, N'11 Methods Of Rock Domination', CAST(N'2018-02-27T00:28:48.000' AS DateTime), CAST(N'2018-02-27T05:02:24.000' AS DateTime), 64, N'~/MUEYOIC', 46, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (784, N'The Secret of Streaming', CAST(N'2018-01-29T17:02:24.000' AS DateTime), CAST(N'2018-01-29T17:31:12.000' AS DateTime), 52, N'~/ZTJGOYQ', 48, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (785, N'5 Easy Ways You Can Turn Video Into Success', CAST(N'2018-02-19T17:16:48.000' AS DateTime), CAST(N'2018-02-19T20:38:24.000' AS DateTime), 56, N'~/GXFTBEQ', 41, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (786, N'15 Tips For Streaming Success', CAST(N'2018-02-05T18:57:36.000' AS DateTime), CAST(N'2018-02-05T22:19:12.000' AS DateTime), 42, N'~/GNEKOTS', 40, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (787, N'Short Story: The Truth About Video', CAST(N'2018-02-23T04:48:00.000' AS DateTime), CAST(N'2018-02-23T09:36:00.000' AS DateTime), 74, N'~/BTZSYAU', 7, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (788, N'Who Else Wants To Enjoy Rock', CAST(N'2018-01-01T06:00:00.000' AS DateTime), CAST(N'2018-01-01T06:28:48.000' AS DateTime), 71, N'~/UAYACRX', 17, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (789, N'5 Ways You Can Get More Video While Spending Less', CAST(N'2018-01-13T12:28:48.000' AS DateTime), CAST(N'2018-01-13T13:55:12.000' AS DateTime), 57, N'~/WBOECXC', 13, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (790, N'What Can You Do To Save Your Streaming From Destru', CAST(N'2018-02-06T08:24:00.000' AS DateTime), CAST(N'2018-02-06T12:00:00.000' AS DateTime), 84, N'~/QOSBBDT', 1, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (791, N'Don''t Fall For This Video Scam', CAST(N'2018-01-21T07:12:00.000' AS DateTime), CAST(N'2018-01-21T10:48:00.000' AS DateTime), 49, N'~/BKTKCKZ', 37, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (792, N'Top 3 Ways To Buy A Used Rock', CAST(N'2018-02-10T06:00:00.000' AS DateTime), CAST(N'2018-02-10T09:36:00.000' AS DateTime), 76, N'~/YZHRUBL', 50, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (793, N'The Secret Of Streaming', CAST(N'2018-01-29T17:02:24.000' AS DateTime), CAST(N'2018-01-29T18:28:48.000' AS DateTime), 89, N'~/ACFBDUX', 46, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (794, N'5 Problems Everyone Has With Video – How To Solved', CAST(N'2018-02-19T08:24:00.000' AS DateTime), CAST(N'2018-02-19T09:21:36.000' AS DateTime), 66, N'~/HBFOFBZ', 57, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (795, N'Rock Expert Interview', CAST(N'2018-01-04T22:19:12.000' AS DateTime), CAST(N'2018-01-05T00:57:36.000' AS DateTime), 33, N'~/HZDRQQK', 51, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (796, N'The Streaming That Wins Customers', CAST(N'2018-01-27T00:14:24.000' AS DateTime), CAST(N'2018-01-27T01:26:24.000' AS DateTime), 48, N'~/OMCKSLT', 61, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (797, N'Your Key To Success: Video', CAST(N'2018-01-26T08:52:48.000' AS DateTime), CAST(N'2018-01-26T10:19:12.000' AS DateTime), 70, N'~/OTLTAHT', 30, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (798, N'The Anthony Robins Guide To Rock', CAST(N'2018-02-17T18:57:36.000' AS DateTime), CAST(N'2018-02-17T20:09:36.000' AS DateTime), 19, N'~/OCSCCIV', 55, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (799, N'Lies And Damn Lies About Streaming', CAST(N'2018-01-07T00:00:00.000' AS DateTime), CAST(N'2018-01-07T00:14:24.000' AS DateTime), 23, N'~/JHALZIT', 26, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (800, N'Rock An Incredibly Easy Method That Works For All', CAST(N'2018-01-31T01:55:12.000' AS DateTime), CAST(N'2018-01-31T03:07:12.000' AS DateTime), 41, N'~/CAYNJLR', 67, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (801, N'In 10 Minutes, I''ll Give You The Truth About Video', CAST(N'2018-01-04T05:16:48.000' AS DateTime), CAST(N'2018-01-04T05:31:12.000' AS DateTime), 67, N'~/HXRFEZO', 4, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (802, N'The Ultimate Deal On Streaming', CAST(N'2018-02-14T02:09:36.000' AS DateTime), CAST(N'2018-02-14T05:02:24.000' AS DateTime), 35, N'~/JEIWPNA', 29, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (803, N'Being A Star In Your Industry Is A Matter Of Video', CAST(N'2018-01-21T08:24:00.000' AS DateTime), CAST(N'2018-01-21T10:19:12.000' AS DateTime), 34, N'~/GUAWGBC', 40, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (804, N'Rock? It''s Easy If You Do It Smart', CAST(N'2018-02-27T02:09:36.000' AS DateTime), CAST(N'2018-02-27T06:00:00.000' AS DateTime), 86, N'~/UTSDEET', 33, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (805, N'Learn How To Start Streaming', CAST(N'2018-02-28T22:48:00.000' AS DateTime), CAST(N'2018-02-28T23:02:24.000' AS DateTime), 24, N'~/PUHLTMX', 23, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (806, N'3 Easy Ways To Make Video Faster', CAST(N'2018-01-14T08:38:24.000' AS DateTime), CAST(N'2018-01-14T12:57:36.000' AS DateTime), 89, N'~/PQZWEMT', 41, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (807, N'Death, Rock And Taxes', CAST(N'2018-01-19T19:40:48.000' AS DateTime), CAST(N'2018-01-19T21:50:24.000' AS DateTime), 44, N'~/KMWZFVU', 21, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (808, N'Can You Pass The Streaming Test?', CAST(N'2018-02-14T04:04:48.000' AS DateTime), CAST(N'2018-02-14T04:48:00.000' AS DateTime), 58, N'~/QATNYLB', 54, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (809, N'The Truth About Video In 3 Minutes', CAST(N'2018-02-26T13:40:48.000' AS DateTime), CAST(N'2018-02-26T13:55:12.000' AS DateTime), 26, N'~/RRYFLZL', 36, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (810, N'The Hidden Mystery Behind Rock', CAST(N'2018-01-07T14:52:48.000' AS DateTime), CAST(N'2018-01-07T15:36:00.000' AS DateTime), 52, N'~/EGIAQEY', 21, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (811, N'Best 50 Tips For Video', CAST(N'2018-02-11T02:24:00.000' AS DateTime), CAST(N'2018-02-11T06:14:24.000' AS DateTime), 37, N'~/TOZJOFJ', 67, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (812, N'5 Brilliant Ways To Use Rock', CAST(N'2018-01-20T04:48:00.000' AS DateTime), CAST(N'2018-01-20T08:24:00.000' AS DateTime), 80, N'~/QXPRZMV', 2, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (813, N'Want To Step Up Your Video? You Need To Read This ', CAST(N'2018-02-16T19:40:48.000' AS DateTime), CAST(N'2018-02-16T23:16:48.000' AS DateTime), 87, N'~/NULBGFQ', 60, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (814, N'Stop Wasting Time And Start Rock', CAST(N'2018-02-19T02:24:00.000' AS DateTime), CAST(N'2018-02-19T02:52:48.000' AS DateTime), 87, N'~/GSNCYIH', 33, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (815, N'5 Ways You Can Get More Streaming While Spending L', CAST(N'2018-01-17T03:36:00.000' AS DateTime), CAST(N'2018-01-17T04:33:36.000' AS DateTime), 22, N'~/YZGDOWA', 63, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (816, N'Everything You Wanted to Know About Rock and Were ', CAST(N'2018-01-16T08:52:48.000' AS DateTime), CAST(N'2018-01-16T11:45:36.000' AS DateTime), 67, N'~/YUDEEMO', 36, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (817, N'The A - Z Guide Of Streaming', CAST(N'2018-02-13T16:04:48.000' AS DateTime), CAST(N'2018-02-13T19:55:12.000' AS DateTime), 60, N'~/QCNMJIE', 60, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (818, N'The Untapped Gold Mine Of Video That Virtually No ', CAST(N'2018-01-19T21:50:24.000' AS DateTime), CAST(N'2018-01-20T00:14:24.000' AS DateTime), 22, N'~/OBPTGUD', 11, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (819, N'3 Mistakes In Rock That Make You Look Dumb', CAST(N'2018-01-07T09:50:24.000' AS DateTime), CAST(N'2018-01-07T13:26:24.000' AS DateTime), 40, N'~/DWPEESU', 66, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (820, N'9 Ways Streaming Can Make You Invincible', CAST(N'2018-02-19T01:55:12.000' AS DateTime), CAST(N'2018-02-19T02:38:24.000' AS DateTime), 90, N'~/KPHHXJD', 56, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (821, N'How To Win Buyers And Influence Sales with Video', CAST(N'2018-02-11T01:12:00.000' AS DateTime), CAST(N'2018-02-11T04:48:00.000' AS DateTime), 37, N'~/RDGNNTV', 13, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (822, N'Streaming - So Simple Even Your Kids Can Do It', CAST(N'2018-02-28T16:04:48.000' AS DateTime), CAST(N'2018-02-28T20:38:24.000' AS DateTime), 71, N'~/CPPVDDT', 52, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (823, N'17 Tricks About Video You Wish You Knew Before', CAST(N'2018-01-18T16:48:00.000' AS DateTime), CAST(N'2018-01-18T17:31:12.000' AS DateTime), 49, N'~/BUINRNU', 20, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (824, N'The Number One Reason You Should (Do) Rock', CAST(N'2018-01-24T20:52:48.000' AS DateTime), CAST(N'2018-01-25T01:12:00.000' AS DateTime), 80, N'~/YCZUWAD', 7, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (825, N'How To Get (A) Fabulous Streaming On A Tight Budge', CAST(N'2018-02-04T22:48:00.000' AS DateTime), CAST(N'2018-02-05T03:07:12.000' AS DateTime), 89, N'~/JCLBDZF', 36, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (826, N'Why I Hate Video', CAST(N'2018-02-23T16:19:12.000' AS DateTime), CAST(N'2018-02-23T18:43:12.000' AS DateTime), 82, N'~/VWHMXQU', 29, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (827, N'If Video Is So Terrible, Why Don''t Statistics Show', CAST(N'2018-01-08T05:45:36.000' AS DateTime), CAST(N'2018-01-08T09:36:00.000' AS DateTime), 32, N'~/KLITKBH', 18, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (828, N'Master (Your) Rock in 5 Minutes A Day', CAST(N'2018-02-17T10:19:12.000' AS DateTime), CAST(N'2018-02-17T11:45:36.000' AS DateTime), 67, N'~/GWMNRDX', 51, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (829, N'Make Your StreamingA Reality', CAST(N'2018-02-20T05:02:24.000' AS DateTime), CAST(N'2018-02-20T08:52:48.000' AS DateTime), 64, N'~/BQYYTFC', 14, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (830, N'Boost Your Video With These Tips', CAST(N'2018-02-25T00:28:48.000' AS DateTime), CAST(N'2018-02-25T00:57:36.000' AS DateTime), 21, N'~/IIYIIDV', 40, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (831, N'I Don''t Want To Spend This Much Time On Rock. How ', CAST(N'2018-01-17T05:45:36.000' AS DateTime), CAST(N'2018-01-17T07:12:00.000' AS DateTime), 83, N'~/MDHYTAL', 64, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (832, N'How To Win Buyers And Influence Sales with Streami', CAST(N'2018-02-17T02:09:36.000' AS DateTime), CAST(N'2018-02-17T04:19:12.000' AS DateTime), 76, N'~/AGQMTDK', 23, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (833, N'The Philosophy Of Video', CAST(N'2018-01-19T01:12:00.000' AS DateTime), CAST(N'2018-01-19T06:00:00.000' AS DateTime), 17, N'~/OVOAESG', 37, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (834, N'How To Turn Rock Into Success', CAST(N'2018-01-18T01:12:00.000' AS DateTime), CAST(N'2018-01-18T03:50:24.000' AS DateTime), 52, N'~/DNWBRLW', 47, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (835, N'Being A Star In Your Industry Is A Matter Of Strea', CAST(N'2018-02-24T06:00:00.000' AS DateTime), CAST(N'2018-02-24T07:26:24.000' AS DateTime), 22, N'~/SZRAPCQ', 50, 3)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (836, N'At Last, The Secret To Video Is Revealed', CAST(N'2018-03-01T20:38:24.000' AS DateTime), NULL, 24, NULL, 25, 1)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (837, N'The Untapped Gold Mine Of Rock That Virtually No O', CAST(N'2018-03-01T03:21:36.000' AS DateTime), NULL, 32, NULL, 7, 1)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (838, N'Rock Your Way To Success', CAST(N'2018-03-01T13:12:00.000' AS DateTime), NULL, 63, NULL, 62, 1)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (839, N'Why Most People Will Never Be Great At Streaming', CAST(N'2018-03-01T20:38:24.000' AS DateTime), NULL, 74, NULL, 2, 1)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (840, N'Now You Can Buy An App That is Really Made For Roc', CAST(N'2018-03-01T00:43:12.000' AS DateTime), NULL, 68, NULL, 57, 1)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (841, N'What Alberto Savoia Can Teach You About Video', CAST(N'2018-03-01T17:16:48.000' AS DateTime), NULL, 31, NULL, 15, 1)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (842, N'10 Things You Have In Common With Rock', CAST(N'2018-03-01T13:40:48.000' AS DateTime), NULL, 21, NULL, 67, 1)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (843, N'5 Ways You Can Get More Rock While Spending Less', CAST(N'2018-03-01T14:09:36.000' AS DateTime), NULL, 44, NULL, 16, 1)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (844, N'Learn Exactly How We Made Streaming Last Month', CAST(N'2018-03-01T22:19:12.000' AS DateTime), NULL, 87, NULL, 58, 1)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (845, N'The Secret of Video', CAST(N'2018-03-01T00:14:24.000' AS DateTime), NULL, 57, NULL, 28, 1)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (846, N'Your Key To Success: Rock', CAST(N'2018-03-01T14:24:00.000' AS DateTime), NULL, 16, NULL, 11, 1)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (847, N'The Lazy Man''s Guide To Streaming', CAST(N'2018-03-01T23:02:24.000' AS DateTime), NULL, 21, NULL, 64, 1)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (848, N'27 Ways To Improve Video', CAST(N'2018-03-01T21:36:00.000' AS DateTime), NULL, 76, NULL, 34, 1)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (849, N'Clear And Unbiased Facts About Rock (Without All t', CAST(N'2018-03-01T20:09:36.000' AS DateTime), NULL, 25, NULL, 47, 1)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (850, N'5 Ways Streaming Will Help You Get More Business', CAST(N'2018-03-01T14:24:00.000' AS DateTime), NULL, 41, NULL, 26, 1)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (851, N'Why You Never See Video That Actually Works', CAST(N'2018-03-01T08:38:24.000' AS DateTime), NULL, 69, NULL, 19, 1)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (852, N'Learn Exactly How I Improved Rock In 2 Days', CAST(N'2018-03-01T00:28:48.000' AS DateTime), NULL, 84, NULL, 64, 1)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (853, N'How To Make Your Streaming Look Like A Million Buc', CAST(N'2018-03-01T22:33:36.000' AS DateTime), NULL, 89, NULL, 21, 1)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (854, N'How To Use Video To Desire', CAST(N'2018-03-01T14:38:24.000' AS DateTime), NULL, 27, NULL, 8, 1)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (855, N'Proof That Rock Is Exactly What You Are Looking Fo', CAST(N'2018-03-01T14:24:00.000' AS DateTime), NULL, 68, NULL, 50, 1)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (856, N'4 Ways You Can Grow Your Creativity Using Streamin', CAST(N'2018-03-01T06:57:36.000' AS DateTime), NULL, 27, NULL, 32, 1)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (857, N'Fear? Not If You Use Video The Right Way!', CAST(N'2018-03-01T13:40:48.000' AS DateTime), NULL, 24, NULL, 6, 1)
GO
INSERT [dbo].[vc_VidCast] ([vc_VidCastID], [VidCastTitle], [StartDateTime], [EndDateTime], [ScheduleDurationMinutes], [RecordingURL], [vc_UserID], [vc_StatusID]) VALUES (858, N'15 Unheard Ways To Achieve Greater Rock', CAST(N'2018-03-01T22:33:36.000' AS DateTime), NULL, 85, NULL, 7, 1)
GO
SET IDENTITY_INSERT [dbo].[vc_VidCast] OFF
GO
SET IDENTITY_INSERT [dbo].[vc_VidCastTagList] ON 
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3607, 1, 1)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3598, 1, 5)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3593, 1, 6)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3579, 1, 8)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3576, 1, 9)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3546, 1, 17)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3539, 1, 19)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3537, 1, 20)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3523, 1, 22)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3518, 1, 24)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3499, 1, 28)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3491, 1, 30)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3484, 1, 32)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3476, 1, 33)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3471, 1, 34)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3468, 1, 35)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3464, 1, 36)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3453, 1, 39)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3449, 1, 40)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3429, 1, 43)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3425, 1, 45)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3404, 1, 52)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3398, 1, 53)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3395, 1, 54)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3353, 1, 62)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3337, 1, 66)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3332, 1, 67)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3325, 1, 68)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3321, 1, 69)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3314, 1, 70)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3302, 1, 73)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3280, 1, 78)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3275, 1, 79)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3254, 1, 84)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3243, 1, 87)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3238, 1, 88)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3231, 1, 90)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3229, 1, 91)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3207, 1, 96)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3204, 1, 97)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3179, 1, 103)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3168, 1, 105)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3158, 1, 106)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3154, 1, 107)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3132, 1, 113)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3116, 1, 117)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3111, 1, 118)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3088, 1, 124)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3084, 1, 125)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3051, 1, 136)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3047, 1, 137)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3045, 1, 138)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3035, 1, 140)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3007, 1, 148)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2970, 1, 156)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2938, 1, 163)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2932, 1, 164)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2911, 1, 168)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2890, 1, 173)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2884, 1, 174)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2880, 1, 175)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2862, 1, 180)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2859, 1, 181)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2855, 1, 182)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2851, 1, 183)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2835, 1, 189)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2815, 1, 194)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2805, 1, 197)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2797, 1, 199)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2776, 1, 203)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2769, 1, 204)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2766, 1, 205)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2762, 1, 207)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2746, 1, 209)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2736, 1, 212)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2722, 1, 215)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2707, 1, 220)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2693, 1, 222)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2687, 1, 223)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2677, 1, 226)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2669, 1, 228)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2664, 1, 230)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2652, 1, 234)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2634, 1, 238)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2624, 1, 241)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2609, 1, 244)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2599, 1, 246)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2584, 1, 249)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2567, 1, 253)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2541, 1, 260)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2525, 1, 262)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2521, 1, 264)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2511, 1, 266)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2509, 1, 267)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2483, 1, 274)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2476, 1, 275)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2458, 1, 279)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2454, 1, 280)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2451, 1, 281)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2426, 1, 286)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2420, 1, 287)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2414, 1, 288)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2403, 1, 291)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2400, 1, 292)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2391, 1, 294)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2365, 1, 300)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2347, 1, 304)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2339, 1, 306)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2332, 1, 308)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2318, 1, 311)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2310, 1, 312)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2304, 1, 314)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2278, 1, 319)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2264, 1, 324)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2239, 1, 329)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2212, 1, 336)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2198, 1, 339)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2186, 1, 341)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2180, 1, 343)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2170, 1, 345)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2166, 1, 346)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2142, 1, 350)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2138, 1, 351)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2117, 1, 357)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2115, 1, 358)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2101, 1, 361)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2098, 1, 362)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2079, 1, 368)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2069, 1, 372)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2049, 1, 376)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2022, 1, 380)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2020, 1, 381)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1963, 1, 394)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1945, 1, 398)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1917, 1, 406)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1910, 1, 407)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1905, 1, 410)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1901, 1, 411)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1880, 1, 416)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1874, 1, 417)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1851, 1, 422)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1825, 1, 428)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1821, 1, 429)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1811, 1, 431)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1792, 1, 436)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1764, 1, 442)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1748, 1, 446)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1725, 1, 451)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1713, 1, 454)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1693, 1, 459)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1685, 1, 460)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1663, 1, 465)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1658, 1, 466)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1637, 1, 470)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1627, 1, 472)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1619, 1, 473)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1609, 1, 475)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1591, 1, 480)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1585, 1, 482)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1573, 1, 485)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1566, 1, 487)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1554, 1, 489)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1548, 1, 490)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1521, 1, 496)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1517, 1, 497)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1487, 1, 504)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1480, 1, 505)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1470, 1, 509)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1462, 1, 510)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1451, 1, 513)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1445, 1, 514)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1428, 1, 517)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1405, 1, 520)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1373, 1, 528)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1362, 1, 530)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1346, 1, 534)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1333, 1, 538)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1301, 1, 547)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1291, 1, 550)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1270, 1, 555)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1249, 1, 560)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1233, 1, 563)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1174, 1, 575)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1170, 1, 577)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1163, 1, 579)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1159, 1, 580)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1139, 1, 585)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1135, 1, 586)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1124, 1, 590)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1114, 1, 592)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1107, 1, 593)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1095, 1, 595)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1058, 1, 604)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1055, 1, 605)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1028, 1, 612)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1020, 1, 614)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1000, 1, 617)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (998, 1, 618)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (984, 1, 622)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (956, 1, 628)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (935, 1, 633)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (919, 1, 636)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (911, 1, 638)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (890, 1, 644)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (882, 1, 646)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (874, 1, 648)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (861, 1, 651)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (853, 1, 654)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (845, 1, 656)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (825, 1, 660)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (802, 1, 665)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (790, 1, 668)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (754, 1, 678)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (739, 1, 681)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (726, 1, 685)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (709, 1, 687)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (706, 1, 688)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (679, 1, 696)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (653, 1, 702)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (638, 1, 706)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (620, 1, 711)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (595, 1, 717)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (585, 1, 719)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (571, 1, 722)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (549, 1, 728)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (536, 1, 731)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (531, 1, 732)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (526, 1, 733)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (521, 1, 734)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (514, 1, 736)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (504, 1, 738)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (499, 1, 739)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (481, 1, 742)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (473, 1, 744)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (453, 1, 750)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (451, 1, 751)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (407, 1, 761)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (392, 1, 764)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (388, 1, 765)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (376, 1, 768)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (368, 1, 770)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (366, 1, 771)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (360, 1, 772)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (336, 1, 779)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (315, 1, 782)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (311, 1, 783)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (289, 1, 789)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (280, 1, 791)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (272, 1, 794)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (246, 1, 801)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (238, 1, 802)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (230, 1, 804)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (219, 1, 806)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (196, 1, 813)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (189, 1, 814)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (171, 1, 818)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (152, 1, 822)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (136, 1, 826)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (109, 1, 834)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (102, 1, 835)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (86, 1, 838)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (79, 1, 839)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (70, 1, 842)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (60, 1, 845)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (45, 1, 848)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (38, 1, 850)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (31, 1, 851)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1, 1, 858)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3604, 2, 2)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3585, 2, 8)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3568, 2, 12)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3556, 2, 14)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3550, 2, 17)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3534, 2, 20)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3516, 2, 24)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3506, 2, 26)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3489, 2, 31)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3480, 2, 33)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3459, 2, 38)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3452, 2, 39)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3445, 2, 40)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3441, 2, 41)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3435, 2, 42)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3428, 2, 44)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3417, 2, 48)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3405, 2, 51)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3384, 2, 57)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3375, 2, 58)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3372, 2, 59)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3352, 2, 62)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3328, 2, 67)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3320, 2, 69)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3309, 2, 71)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3291, 2, 75)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3277, 2, 79)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3192, 2, 99)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3190, 2, 100)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3143, 2, 110)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3130, 2, 114)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3106, 2, 120)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3066, 2, 131)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3059, 2, 133)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3055, 2, 135)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3050, 2, 136)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3026, 2, 142)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3017, 2, 145)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3011, 2, 147)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3005, 2, 148)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2974, 2, 155)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2956, 2, 160)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2948, 2, 162)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2926, 2, 165)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2921, 2, 166)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2913, 2, 167)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2909, 2, 168)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2899, 2, 171)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2876, 2, 176)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2871, 2, 178)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2853, 2, 183)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2849, 2, 184)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2841, 2, 187)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2824, 2, 191)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2822, 2, 192)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2819, 2, 193)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2809, 2, 196)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2803, 2, 197)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2795, 2, 199)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2787, 2, 201)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2779, 2, 202)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2773, 2, 204)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2761, 2, 207)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2738, 2, 211)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2724, 2, 214)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2718, 2, 216)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2712, 2, 218)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2701, 2, 221)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2682, 2, 224)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2616, 2, 242)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2611, 2, 243)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2596, 2, 246)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2592, 2, 247)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2577, 2, 250)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2575, 2, 251)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2565, 2, 254)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2530, 2, 262)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2503, 2, 269)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2499, 2, 270)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2492, 2, 271)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2475, 2, 275)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2472, 2, 277)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2437, 2, 284)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2432, 2, 285)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2419, 2, 287)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2405, 2, 291)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2395, 2, 293)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2387, 2, 295)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2378, 2, 297)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2336, 2, 307)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2327, 2, 309)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2324, 2, 310)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2308, 2, 313)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2287, 2, 318)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2276, 2, 320)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2268, 2, 322)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2263, 2, 324)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2258, 2, 325)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2249, 2, 327)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2242, 2, 328)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2238, 2, 329)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2235, 2, 330)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2227, 2, 332)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2219, 2, 334)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2216, 2, 335)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2213, 2, 336)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2188, 2, 341)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2184, 2, 342)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2174, 2, 345)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2150, 2, 349)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2141, 2, 350)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2119, 2, 357)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2113, 2, 359)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2110, 2, 360)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2094, 2, 363)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2089, 2, 365)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2072, 2, 371)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2068, 2, 372)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2051, 2, 375)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2037, 2, 378)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2030, 2, 379)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2025, 2, 380)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2016, 2, 382)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2009, 2, 384)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1997, 2, 386)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1994, 2, 387)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1989, 2, 389)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1976, 2, 391)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1970, 2, 392)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1968, 2, 393)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1962, 2, 394)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1951, 2, 397)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1940, 2, 399)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1939, 2, 400)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1925, 2, 404)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1916, 2, 406)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1912, 2, 407)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1869, 2, 419)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1861, 2, 420)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1849, 2, 423)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1839, 2, 425)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1823, 2, 428)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1784, 2, 437)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1749, 2, 445)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1736, 2, 449)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1708, 2, 456)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1704, 2, 457)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1698, 2, 458)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1678, 2, 461)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1660, 2, 465)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1649, 2, 468)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1644, 2, 469)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1631, 2, 471)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1617, 2, 474)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1602, 2, 476)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1595, 2, 478)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1578, 2, 483)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1550, 2, 490)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1503, 2, 500)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1493, 2, 502)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1489, 2, 504)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1463, 2, 510)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1457, 2, 512)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1443, 2, 515)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1436, 2, 516)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1423, 2, 517)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1422, 2, 518)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1412, 2, 519)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1403, 2, 521)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1398, 2, 522)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1391, 2, 524)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1386, 2, 525)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1379, 2, 527)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1360, 2, 531)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1356, 2, 532)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1324, 2, 541)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1313, 2, 544)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1297, 2, 547)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1283, 2, 552)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1246, 2, 561)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1238, 2, 563)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1230, 2, 564)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1217, 2, 566)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1215, 2, 567)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1183, 2, 574)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1173, 2, 576)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1164, 2, 579)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1162, 2, 580)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1151, 2, 582)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1142, 2, 584)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1129, 2, 588)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1110, 2, 593)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1087, 2, 598)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1045, 2, 608)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1015, 2, 615)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1012, 2, 616)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1007, 2, 617)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (999, 2, 618)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (986, 2, 621)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (968, 2, 625)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (959, 2, 627)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (953, 2, 629)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (948, 2, 630)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (934, 2, 633)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (917, 2, 637)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (902, 2, 641)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (894, 2, 643)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (863, 2, 651)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (842, 2, 656)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (828, 2, 659)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (817, 2, 662)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (815, 2, 663)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (807, 2, 665)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (793, 2, 667)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (789, 2, 668)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (783, 2, 670)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (772, 2, 674)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (762, 2, 676)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (722, 2, 685)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (699, 2, 690)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (673, 2, 698)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (667, 2, 699)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (649, 2, 703)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (635, 2, 707)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (628, 2, 709)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (610, 2, 713)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (558, 2, 724)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (552, 2, 726)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (546, 2, 728)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (544, 2, 729)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (529, 2, 732)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (518, 2, 734)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (515, 2, 736)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (492, 2, 739)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (480, 2, 742)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (471, 2, 744)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (464, 2, 748)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (455, 2, 750)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (446, 2, 752)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (424, 2, 758)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (416, 2, 759)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (403, 2, 762)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (384, 2, 766)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (380, 2, 767)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (374, 2, 769)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (333, 2, 779)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (322, 2, 781)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (297, 2, 786)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (295, 2, 787)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (293, 2, 788)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (282, 2, 791)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (279, 2, 792)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (270, 2, 794)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (251, 2, 799)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (234, 2, 803)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (194, 2, 813)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (192, 2, 814)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (176, 2, 817)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (169, 2, 819)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (134, 2, 827)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (131, 2, 829)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (120, 2, 831)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (106, 2, 834)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (100, 2, 835)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (87, 2, 838)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (83, 2, 839)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (58, 2, 845)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (44, 2, 848)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (39, 2, 849)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (22, 2, 853)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (8, 2, 856)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2, 2, 858)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3608, 3, 1)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3596, 3, 5)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3572, 3, 10)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3565, 3, 12)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3543, 3, 18)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3540, 3, 19)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3527, 3, 22)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3472, 3, 34)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3460, 3, 38)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3447, 3, 40)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3439, 3, 41)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3434, 3, 42)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3422, 3, 46)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3416, 3, 48)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3410, 3, 50)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3396, 3, 54)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3383, 3, 57)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3378, 3, 58)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3368, 3, 60)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3355, 3, 62)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3349, 3, 63)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3318, 3, 70)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3311, 3, 71)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3294, 3, 75)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3289, 3, 76)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3278, 3, 79)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3266, 3, 81)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3260, 3, 82)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3259, 3, 83)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3234, 3, 89)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3227, 3, 91)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3220, 3, 93)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3208, 3, 96)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3201, 3, 98)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3183, 3, 102)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3178, 3, 103)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3170, 3, 104)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3165, 3, 105)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3148, 3, 109)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3109, 3, 119)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3107, 3, 120)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3087, 3, 124)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3080, 3, 126)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3076, 3, 127)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3041, 3, 139)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3036, 3, 140)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3010, 3, 147)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2990, 3, 151)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2981, 3, 153)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2975, 3, 154)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2949, 3, 162)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2927, 3, 165)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2908, 3, 168)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2904, 3, 169)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2893, 3, 172)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2847, 3, 184)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2838, 3, 188)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2813, 3, 194)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2804, 3, 197)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2777, 3, 203)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2767, 3, 205)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2756, 3, 207)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2742, 3, 210)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2737, 3, 211)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2727, 3, 213)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2720, 3, 216)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2714, 3, 217)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2695, 3, 222)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2673, 3, 227)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2665, 3, 229)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2650, 3, 234)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2626, 3, 240)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2603, 3, 245)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2582, 3, 249)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2556, 3, 256)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2549, 3, 257)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2527, 3, 262)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2517, 3, 264)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2515, 3, 265)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2501, 3, 269)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2494, 3, 271)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2482, 3, 274)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2473, 3, 276)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2470, 3, 277)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2447, 3, 282)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2397, 3, 293)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2386, 3, 295)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2381, 3, 296)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2343, 3, 305)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2342, 3, 306)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2331, 3, 309)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2319, 3, 311)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2314, 3, 312)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2303, 3, 315)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2291, 3, 317)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2286, 3, 318)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2282, 3, 319)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2266, 3, 323)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2252, 3, 326)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2234, 3, 330)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2168, 3, 346)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2162, 3, 347)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2154, 3, 348)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2139, 3, 351)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2130, 3, 355)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2114, 3, 359)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2092, 3, 364)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2062, 3, 373)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2059, 3, 374)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2031, 3, 379)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2019, 3, 381)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1961, 3, 395)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1952, 3, 397)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1947, 3, 398)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1892, 3, 412)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1888, 3, 414)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1884, 3, 415)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1871, 3, 418)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1866, 3, 419)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1841, 3, 425)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1833, 3, 426)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1805, 3, 432)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1802, 3, 433)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1797, 3, 434)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1746, 3, 446)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1735, 3, 449)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1715, 3, 454)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1696, 3, 458)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1680, 3, 461)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1672, 3, 462)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1670, 3, 463)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1661, 3, 465)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1652, 3, 467)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1621, 3, 473)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1618, 3, 474)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1607, 3, 475)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1581, 3, 483)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1562, 3, 487)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1549, 3, 490)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1530, 3, 494)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1522, 3, 496)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1454, 3, 512)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1433, 3, 516)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1429, 3, 517)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1406, 3, 520)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1380, 3, 527)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1366, 3, 529)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1359, 3, 531)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1354, 3, 532)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1350, 3, 533)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1337, 3, 536)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1332, 3, 538)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1322, 3, 541)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1307, 3, 545)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1295, 3, 548)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1278, 3, 552)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1266, 3, 555)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1226, 3, 565)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1203, 3, 568)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1201, 3, 569)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1194, 3, 570)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1190, 3, 571)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1185, 3, 573)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1178, 3, 574)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1176, 3, 575)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1168, 3, 577)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1157, 3, 580)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1154, 3, 581)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1144, 3, 584)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1112, 3, 593)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1102, 3, 594)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1096, 3, 595)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1088, 3, 598)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1053, 3, 605)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1047, 3, 607)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1043, 3, 609)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1029, 3, 612)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1027, 3, 613)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1001, 3, 617)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (990, 3, 621)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (978, 3, 623)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (952, 3, 629)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (933, 3, 633)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (925, 3, 636)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (897, 3, 642)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (885, 3, 645)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (805, 3, 665)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (773, 3, 674)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (752, 3, 678)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (738, 3, 682)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (680, 3, 696)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (675, 3, 697)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (671, 3, 698)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (663, 3, 700)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (657, 3, 701)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (645, 3, 704)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (639, 3, 706)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (636, 3, 707)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (634, 3, 708)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (629, 3, 709)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (622, 3, 710)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (613, 3, 712)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (606, 3, 714)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (598, 3, 716)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (584, 3, 719)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (575, 3, 721)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (569, 3, 722)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (563, 3, 723)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (556, 3, 725)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (551, 3, 728)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (538, 3, 730)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (534, 3, 731)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (530, 3, 732)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (506, 3, 738)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (494, 3, 739)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (483, 3, 742)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (414, 3, 759)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (412, 3, 760)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (409, 3, 761)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (405, 3, 762)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (337, 3, 778)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (332, 3, 780)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (312, 3, 783)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (302, 3, 785)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (278, 3, 792)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (264, 3, 795)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (257, 3, 798)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (198, 3, 812)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (187, 3, 814)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (173, 3, 818)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (162, 3, 820)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (122, 3, 830)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (119, 3, 831)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (101, 3, 835)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (62, 3, 844)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (49, 3, 848)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (29, 3, 852)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (21, 3, 853)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (7, 3, 856)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3588, 4, 7)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3567, 4, 12)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3548, 4, 17)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3514, 4, 24)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3505, 4, 26)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3502, 4, 27)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3494, 4, 30)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3458, 4, 38)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3451, 4, 39)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3442, 4, 41)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3420, 4, 46)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3393, 4, 54)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3391, 4, 55)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3389, 4, 56)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3381, 4, 58)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3361, 4, 61)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3350, 4, 63)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3344, 4, 64)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3341, 4, 65)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3323, 4, 68)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3305, 4, 72)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3282, 4, 77)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3255, 4, 83)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3245, 4, 86)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3213, 4, 95)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3209, 4, 96)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3206, 4, 97)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3194, 4, 99)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3180, 4, 102)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3145, 4, 110)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3114, 4, 118)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3100, 4, 122)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3097, 4, 123)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3091, 4, 124)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3074, 4, 128)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3061, 4, 132)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3057, 4, 134)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3044, 4, 138)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3037, 4, 139)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3033, 4, 140)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3030, 4, 141)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3027, 4, 142)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3002, 4, 149)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2997, 4, 150)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2958, 4, 159)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2955, 4, 160)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2943, 4, 162)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2939, 4, 163)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2935, 4, 164)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2850, 4, 183)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2848, 4, 184)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2831, 4, 189)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2828, 4, 190)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2825, 4, 191)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2817, 4, 194)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2800, 4, 199)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2788, 4, 200)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2752, 4, 208)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2715, 4, 217)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2689, 4, 222)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2676, 4, 226)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2658, 4, 232)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2647, 4, 234)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2645, 4, 235)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2642, 4, 236)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2633, 4, 238)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2622, 4, 241)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2604, 4, 245)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2588, 4, 248)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2578, 4, 250)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2573, 4, 251)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2537, 4, 260)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2533, 4, 261)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2518, 4, 264)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2514, 4, 266)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2479, 4, 274)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2468, 4, 277)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2446, 4, 282)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2439, 4, 284)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2423, 4, 286)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2384, 4, 296)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2370, 4, 299)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2363, 4, 300)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2353, 4, 302)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2335, 4, 307)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2312, 4, 312)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2309, 4, 313)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2290, 4, 317)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2270, 4, 321)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2262, 4, 324)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2233, 4, 330)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2209, 4, 337)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2183, 4, 343)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2145, 4, 350)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2128, 4, 355)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2120, 4, 356)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2105, 4, 361)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2095, 4, 363)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2081, 4, 368)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2065, 4, 373)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2054, 4, 374)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2045, 4, 376)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2038, 4, 378)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2034, 4, 379)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2027, 4, 380)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2018, 4, 382)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2007, 4, 384)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1974, 4, 391)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1946, 4, 398)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1935, 4, 401)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1932, 4, 402)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1877, 4, 416)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1860, 4, 420)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1858, 4, 421)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1848, 4, 423)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1846, 4, 424)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1822, 4, 429)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1813, 4, 431)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1808, 4, 432)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1789, 4, 437)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1762, 4, 443)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1756, 4, 444)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1734, 4, 449)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1722, 4, 452)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1712, 4, 455)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1692, 4, 459)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1674, 4, 462)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1646, 4, 469)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1636, 4, 470)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1632, 4, 471)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1625, 4, 472)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1613, 4, 474)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1608, 4, 475)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1604, 4, 476)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1559, 4, 488)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1555, 4, 489)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1541, 4, 492)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1532, 4, 493)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1524, 4, 495)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1519, 4, 496)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1511, 4, 499)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1507, 4, 500)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1486, 4, 504)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1484, 4, 505)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1477, 4, 507)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1467, 4, 510)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1440, 4, 515)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1415, 4, 518)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1369, 4, 529)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1345, 4, 534)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1339, 4, 536)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1330, 4, 538)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1329, 4, 539)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1298, 4, 547)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1289, 4, 550)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1277, 4, 552)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1273, 4, 554)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1264, 4, 556)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1259, 4, 557)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1235, 4, 563)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1227, 4, 564)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1225, 4, 565)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1198, 4, 569)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1191, 4, 571)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1105, 4, 594)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1080, 4, 599)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1068, 4, 602)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1063, 4, 603)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1046, 4, 608)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1024, 4, 613)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1019, 4, 614)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (975, 4, 623)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (951, 4, 629)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (921, 4, 636)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (896, 4, 643)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (883, 4, 646)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (875, 4, 647)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (854, 4, 653)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (832, 4, 659)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (821, 4, 661)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (801, 4, 665)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (782, 4, 670)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (768, 4, 674)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (760, 4, 677)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (745, 4, 679)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (719, 4, 686)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (713, 4, 687)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (702, 4, 689)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (693, 4, 693)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (687, 4, 694)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (683, 4, 695)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (668, 4, 699)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (656, 4, 701)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (625, 4, 710)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (616, 4, 712)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (605, 4, 714)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (591, 4, 717)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (589, 4, 718)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (583, 4, 719)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (567, 4, 723)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (540, 4, 730)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (528, 4, 732)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (505, 4, 738)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (489, 4, 740)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (467, 4, 747)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (459, 4, 749)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (456, 4, 750)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (448, 4, 751)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (447, 4, 752)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (441, 4, 753)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (434, 4, 755)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (427, 4, 758)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (413, 4, 760)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (383, 4, 766)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (378, 4, 767)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (364, 4, 771)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (362, 4, 772)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (346, 4, 777)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (340, 4, 778)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (335, 4, 779)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (313, 4, 783)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (307, 4, 784)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (281, 4, 791)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (274, 4, 793)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (252, 4, 799)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (242, 4, 801)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (229, 4, 804)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (214, 4, 807)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (206, 4, 810)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (193, 4, 813)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (168, 4, 819)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (160, 4, 820)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (154, 4, 822)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (138, 4, 826)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (114, 4, 832)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (111, 4, 833)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (95, 4, 836)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (84, 4, 838)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (76, 4, 840)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (67, 4, 843)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (61, 4, 845)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (20, 4, 853)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (14, 4, 854)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (4, 4, 858)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3614, 5, 1)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3601, 5, 4)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3587, 5, 7)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3573, 5, 9)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3557, 5, 14)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3528, 5, 21)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3519, 5, 24)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3509, 5, 26)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3504, 5, 27)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3497, 5, 29)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3490, 5, 31)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3485, 5, 32)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3482, 5, 33)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3474, 5, 34)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3463, 5, 37)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3448, 5, 40)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3431, 5, 43)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3418, 5, 47)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3388, 5, 56)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3360, 5, 61)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3356, 5, 62)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3346, 5, 64)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3338, 5, 65)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3316, 5, 70)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3303, 5, 72)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3299, 5, 74)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3293, 5, 75)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3263, 5, 82)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3249, 5, 85)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3239, 5, 88)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3236, 5, 89)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3226, 5, 91)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3181, 5, 102)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3164, 5, 106)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3141, 5, 111)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3126, 5, 115)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3121, 5, 116)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3113, 5, 118)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3077, 5, 127)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3056, 5, 134)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3048, 5, 137)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3028, 5, 142)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3018, 5, 145)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3003, 5, 149)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2996, 5, 150)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2989, 5, 151)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2960, 5, 159)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2954, 5, 160)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2951, 5, 161)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2945, 5, 162)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2933, 5, 164)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2929, 5, 165)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2919, 5, 166)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2885, 5, 174)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2867, 5, 178)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2827, 5, 190)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2818, 5, 193)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2806, 5, 197)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2798, 5, 199)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2728, 5, 213)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2710, 5, 218)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2705, 5, 220)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2672, 5, 228)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2663, 5, 230)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2661, 5, 231)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2659, 5, 232)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2654, 5, 233)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2631, 5, 239)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2608, 5, 244)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2597, 5, 246)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2594, 5, 247)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2585, 5, 248)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2580, 5, 249)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2552, 5, 257)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2545, 5, 259)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2526, 5, 262)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2519, 5, 264)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2507, 5, 268)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2500, 5, 270)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2488, 5, 273)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2465, 5, 278)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2435, 5, 284)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2429, 5, 285)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2421, 5, 287)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2393, 5, 294)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2376, 5, 297)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2372, 5, 298)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2362, 5, 300)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2330, 5, 309)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2321, 5, 311)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2313, 5, 312)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2244, 5, 328)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2240, 5, 329)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2224, 5, 333)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2211, 5, 336)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2203, 5, 338)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2196, 5, 339)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2182, 5, 343)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2106, 5, 361)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2099, 5, 362)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2093, 5, 364)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2080, 5, 368)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2070, 5, 371)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2064, 5, 373)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2060, 5, 374)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2046, 5, 376)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2042, 5, 377)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2033, 5, 379)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2012, 5, 383)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2008, 5, 384)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1998, 5, 386)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1988, 5, 389)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1972, 5, 392)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1965, 5, 394)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1950, 5, 397)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1934, 5, 401)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1929, 5, 402)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1924, 5, 404)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1911, 5, 407)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1909, 5, 409)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1896, 5, 411)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1882, 5, 415)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1879, 5, 416)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1872, 5, 418)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1864, 5, 420)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1855, 5, 421)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1854, 5, 422)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1824, 5, 428)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1810, 5, 431)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1794, 5, 436)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1787, 5, 437)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1780, 5, 438)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1769, 5, 441)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1747, 5, 446)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1741, 5, 447)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1739, 5, 448)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1731, 5, 450)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1724, 5, 451)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1710, 5, 455)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1689, 5, 459)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1668, 5, 463)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1641, 5, 469)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1639, 5, 470)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1626, 5, 472)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1597, 5, 478)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1587, 5, 481)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1579, 5, 483)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1553, 5, 490)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1518, 5, 497)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1513, 5, 499)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1498, 5, 502)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1492, 5, 503)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1476, 5, 507)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1473, 5, 508)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1469, 5, 509)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1461, 5, 510)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1434, 5, 516)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1418, 5, 518)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1385, 5, 525)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1381, 5, 526)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1374, 5, 528)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1347, 5, 534)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1343, 5, 535)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1321, 5, 542)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1315, 5, 543)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1311, 5, 545)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1268, 5, 555)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1248, 5, 560)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1247, 5, 561)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1243, 5, 562)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1223, 5, 565)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1218, 5, 566)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1214, 5, 567)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1202, 5, 568)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1184, 5, 573)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1181, 5, 574)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1177, 5, 575)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1161, 5, 580)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1152, 5, 582)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1123, 5, 590)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1109, 5, 593)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1098, 5, 594)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1079, 5, 599)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1052, 5, 606)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1048, 5, 607)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1034, 5, 611)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1031, 5, 612)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1017, 5, 614)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (993, 5, 620)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (988, 5, 621)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (973, 5, 623)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (964, 5, 627)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (945, 5, 630)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (940, 5, 631)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (931, 5, 634)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (927, 5, 635)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (918, 5, 636)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (910, 5, 638)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (903, 5, 640)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (901, 5, 641)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (898, 5, 642)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (888, 5, 644)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (886, 5, 645)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (880, 5, 646)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (871, 5, 648)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (837, 5, 657)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (831, 5, 659)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (826, 5, 660)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (786, 5, 669)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (757, 5, 677)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (742, 5, 680)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (740, 5, 681)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (734, 5, 683)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (712, 5, 687)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (689, 5, 693)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (677, 5, 697)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (658, 5, 701)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (654, 5, 702)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (627, 5, 709)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (600, 5, 715)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (579, 5, 720)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (576, 5, 721)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (566, 5, 723)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (561, 5, 724)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (543, 5, 729)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (523, 5, 733)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (507, 5, 737)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (493, 5, 739)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (490, 5, 740)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (478, 5, 743)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (472, 5, 744)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (444, 5, 753)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (440, 5, 754)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (389, 5, 765)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (372, 5, 769)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (361, 5, 772)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (344, 5, 777)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (329, 5, 780)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (321, 5, 781)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (304, 5, 784)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (300, 5, 785)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (299, 5, 786)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (291, 5, 789)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (283, 5, 791)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (258, 5, 797)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (239, 5, 802)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (227, 5, 804)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (210, 5, 809)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (207, 5, 810)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (195, 5, 813)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (158, 5, 821)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (142, 5, 824)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (135, 5, 826)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (132, 5, 828)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (128, 5, 829)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (123, 5, 830)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (116, 5, 832)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (85, 5, 838)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (66, 5, 844)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (59, 5, 845)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (47, 5, 848)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (33, 5, 851)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (26, 5, 852)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (23, 5, 853)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3609, 6, 1)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3592, 6, 6)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3580, 6, 8)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3577, 6, 9)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3566, 6, 12)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3560, 6, 13)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3554, 6, 15)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3535, 6, 20)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3520, 6, 23)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3501, 6, 27)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3488, 6, 31)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3486, 6, 32)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3461, 6, 38)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3444, 6, 41)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3426, 6, 45)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3402, 6, 52)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3364, 6, 61)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3326, 6, 67)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3300, 6, 74)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3290, 6, 75)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3273, 6, 79)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3270, 6, 80)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3257, 6, 83)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3246, 6, 86)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3217, 6, 93)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3216, 6, 94)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3199, 6, 98)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3195, 6, 99)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3185, 6, 101)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3177, 6, 103)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3153, 6, 107)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3136, 6, 112)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3120, 6, 116)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3086, 6, 125)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3073, 6, 128)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3071, 6, 129)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3053, 6, 135)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2984, 6, 152)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2963, 6, 158)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2957, 6, 160)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2941, 6, 163)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2928, 6, 165)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2918, 6, 166)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2864, 6, 180)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2843, 6, 186)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2842, 6, 187)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2837, 6, 188)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2821, 6, 192)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2816, 6, 194)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2808, 6, 196)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2790, 6, 200)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2745, 6, 210)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2725, 6, 214)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2708, 6, 219)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2700, 6, 221)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2692, 6, 222)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2680, 6, 225)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2674, 6, 227)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2666, 6, 229)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2655, 6, 232)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2613, 6, 243)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2595, 6, 247)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2553, 6, 257)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2544, 6, 259)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2522, 6, 263)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2508, 6, 268)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2487, 6, 274)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2467, 6, 277)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2450, 6, 281)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2438, 6, 284)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2434, 6, 285)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2417, 6, 287)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2399, 6, 292)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2394, 6, 294)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2382, 6, 296)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2344, 6, 305)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2340, 6, 306)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2333, 6, 308)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2316, 6, 311)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2300, 6, 315)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2297, 6, 316)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2293, 6, 317)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2280, 6, 319)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2267, 6, 323)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2241, 6, 328)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2230, 6, 331)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2220, 6, 334)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2214, 6, 336)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2210, 6, 337)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2185, 6, 342)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2164, 6, 346)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2155, 6, 348)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2147, 6, 350)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2132, 6, 353)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2126, 6, 355)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2123, 6, 356)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2116, 6, 357)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2084, 6, 367)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2067, 6, 372)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2052, 6, 375)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2036, 6, 378)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2032, 6, 379)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2026, 6, 380)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2017, 6, 382)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2010, 6, 383)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2005, 6, 384)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2004, 6, 385)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2000, 6, 386)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1995, 6, 387)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1973, 6, 392)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1957, 6, 395)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1937, 6, 400)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1931, 6, 402)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1906, 6, 410)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1898, 6, 411)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1831, 6, 427)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1820, 6, 430)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1815, 6, 431)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1795, 6, 435)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1790, 6, 437)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1781, 6, 438)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1774, 6, 440)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1765, 6, 442)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1761, 6, 443)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1755, 6, 444)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1745, 6, 446)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1728, 6, 451)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1721, 6, 452)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1718, 6, 453)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1683, 6, 460)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1657, 6, 466)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1640, 6, 469)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1630, 6, 471)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1616, 6, 474)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1588, 6, 481)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1563, 6, 487)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1552, 6, 490)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1546, 6, 491)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1505, 6, 500)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1497, 6, 502)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1482, 6, 505)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1430, 6, 516)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1421, 6, 518)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1410, 6, 520)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1397, 6, 522)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1377, 6, 528)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1368, 6, 529)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1363, 6, 530)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1336, 6, 536)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1316, 6, 543)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1288, 6, 551)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1263, 6, 556)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1257, 6, 557)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1237, 6, 563)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1228, 6, 564)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1208, 6, 568)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1179, 6, 574)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1160, 6, 580)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1146, 6, 584)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1140, 6, 585)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1137, 6, 586)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1133, 6, 587)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1125, 6, 590)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1113, 6, 593)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1104, 6, 594)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1092, 6, 596)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1085, 6, 598)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1074, 6, 601)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1067, 6, 602)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1059, 6, 604)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1050, 6, 606)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1037, 6, 610)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1011, 6, 616)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (989, 6, 621)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (981, 6, 622)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (965, 6, 626)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (958, 6, 628)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (949, 6, 629)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (946, 6, 630)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (916, 6, 637)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (881, 6, 646)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (868, 6, 649)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (860, 6, 652)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (857, 6, 653)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (844, 6, 656)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (811, 6, 664)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (803, 6, 665)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (785, 6, 669)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (776, 6, 672)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (774, 6, 673)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (771, 6, 674)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (751, 6, 678)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (749, 6, 679)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (736, 6, 682)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (729, 6, 684)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (708, 6, 687)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (698, 6, 690)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (664, 6, 700)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (646, 6, 704)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (641, 6, 705)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (632, 6, 708)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (619, 6, 711)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (590, 6, 718)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (572, 6, 722)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (564, 6, 723)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (550, 6, 728)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (524, 6, 733)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (511, 6, 737)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (502, 6, 738)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (498, 6, 739)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (486, 6, 741)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (476, 6, 743)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (468, 6, 746)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (463, 6, 748)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (461, 6, 749)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (436, 6, 754)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (419, 6, 759)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (396, 6, 763)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (386, 6, 766)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (348, 6, 776)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (345, 6, 777)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (341, 6, 778)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (314, 6, 783)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (301, 6, 785)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (266, 6, 795)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (255, 6, 798)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (249, 6, 799)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (232, 6, 803)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (212, 6, 809)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (197, 6, 812)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (188, 6, 814)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (174, 6, 818)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (165, 6, 819)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (164, 6, 820)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (144, 6, 823)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (137, 6, 826)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (125, 6, 829)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (97, 6, 835)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (93, 6, 837)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (82, 6, 839)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (75, 6, 840)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (73, 6, 841)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (55, 6, 846)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (52, 6, 847)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (25, 6, 853)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (11, 6, 855)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3613, 7, 1)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3562, 7, 13)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3544, 7, 18)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3530, 7, 21)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3512, 7, 24)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3462, 7, 37)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3450, 7, 39)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3446, 7, 40)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3438, 7, 42)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3423, 7, 46)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3407, 7, 51)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3400, 7, 53)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3382, 7, 57)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3376, 7, 58)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3370, 7, 60)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3365, 7, 61)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3357, 7, 62)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3345, 7, 64)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3340, 7, 65)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3333, 7, 66)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3331, 7, 67)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3304, 7, 72)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3288, 7, 76)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3265, 7, 81)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3256, 7, 83)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3253, 7, 85)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3235, 7, 89)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3230, 7, 90)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3228, 7, 91)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3221, 7, 92)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3211, 7, 96)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3188, 7, 101)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3172, 7, 104)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3163, 7, 106)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3151, 7, 108)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3140, 7, 111)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3125, 7, 116)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3103, 7, 121)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3092, 7, 123)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3082, 7, 126)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3072, 7, 129)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3058, 7, 133)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3054, 7, 135)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3039, 7, 139)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3034, 7, 140)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3022, 7, 143)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2987, 7, 152)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2964, 7, 158)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2959, 7, 159)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2917, 7, 166)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2894, 7, 172)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2877, 7, 176)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2872, 7, 177)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2868, 7, 178)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2863, 7, 180)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2836, 7, 188)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2820, 7, 192)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2811, 7, 195)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2785, 7, 201)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2782, 7, 202)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2775, 7, 203)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2758, 7, 207)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2734, 7, 212)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2730, 7, 213)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2723, 7, 214)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2719, 7, 216)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2709, 7, 219)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2698, 7, 221)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2656, 7, 232)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2651, 7, 234)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2628, 7, 239)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2612, 7, 243)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2593, 7, 247)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2587, 7, 248)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2581, 7, 249)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2548, 7, 258)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2529, 7, 262)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2520, 7, 264)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2491, 7, 272)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2478, 7, 274)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2448, 7, 282)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2427, 7, 286)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2415, 7, 288)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2411, 7, 289)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2383, 7, 296)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2369, 7, 299)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2366, 7, 300)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2354, 7, 302)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2350, 7, 303)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2348, 7, 304)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2338, 7, 306)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2328, 7, 309)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2322, 7, 310)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2307, 7, 313)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2301, 7, 315)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2292, 7, 317)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2281, 7, 319)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2272, 7, 321)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2269, 7, 322)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2265, 7, 324)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2259, 7, 325)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2251, 7, 326)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2247, 7, 327)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2231, 7, 331)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2225, 7, 333)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2171, 7, 345)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2161, 7, 347)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2157, 7, 348)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2146, 7, 350)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2131, 7, 354)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2129, 7, 355)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2122, 7, 356)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2107, 7, 360)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2091, 7, 364)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2083, 7, 367)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2071, 7, 371)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2014, 7, 383)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2003, 7, 385)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1999, 7, 386)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1996, 7, 387)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1990, 7, 389)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1981, 7, 390)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1942, 7, 399)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1933, 7, 401)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1923, 7, 404)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1920, 7, 405)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1913, 7, 407)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1908, 7, 409)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1904, 7, 410)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1889, 7, 413)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1886, 7, 414)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1881, 7, 416)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1873, 7, 418)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1867, 7, 419)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1862, 7, 420)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1834, 7, 426)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1830, 7, 427)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1814, 7, 431)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1806, 7, 432)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1800, 7, 433)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1783, 7, 438)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1768, 7, 442)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1753, 7, 445)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1732, 7, 450)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1730, 7, 451)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1695, 7, 458)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1676, 7, 462)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1662, 7, 465)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1586, 7, 482)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1576, 7, 484)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1571, 7, 485)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1558, 7, 488)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1538, 7, 492)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1526, 7, 494)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1499, 7, 501)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1481, 7, 505)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1466, 7, 510)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1447, 7, 514)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1417, 7, 518)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1414, 7, 519)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1408, 7, 520)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1400, 7, 521)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1394, 7, 523)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1389, 7, 524)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1387, 7, 525)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1375, 7, 528)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1353, 7, 533)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1326, 7, 540)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1320, 7, 542)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1302, 7, 547)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1239, 7, 563)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1229, 7, 564)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1224, 7, 565)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1219, 7, 566)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1193, 7, 570)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1186, 7, 573)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1153, 7, 581)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1150, 7, 582)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1141, 7, 585)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1134, 7, 586)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1100, 7, 594)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1081, 7, 599)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1077, 7, 600)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1071, 7, 601)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1069, 7, 602)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1035, 7, 611)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1006, 7, 617)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (982, 7, 622)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (950, 7, 629)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (942, 7, 631)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (937, 7, 632)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (923, 7, 636)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (904, 7, 640)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (895, 7, 643)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (891, 7, 644)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (852, 7, 654)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (839, 7, 657)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (829, 7, 659)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (816, 7, 662)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (810, 7, 664)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (787, 7, 669)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (779, 7, 670)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (761, 7, 677)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (716, 7, 686)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (714, 7, 687)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (701, 7, 689)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (697, 7, 690)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (691, 7, 693)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (688, 7, 694)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (648, 7, 703)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (609, 7, 714)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (601, 7, 715)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (578, 7, 720)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (568, 7, 723)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (553, 7, 726)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (548, 7, 728)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (533, 7, 731)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (501, 7, 738)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (500, 7, 739)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (428, 7, 757)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (423, 7, 758)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (420, 7, 759)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (411, 7, 760)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (406, 7, 761)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (404, 7, 762)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (397, 7, 763)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (367, 7, 770)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (356, 7, 773)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (338, 7, 778)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (326, 7, 781)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (316, 7, 782)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (303, 7, 784)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (287, 7, 790)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (273, 7, 793)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (262, 7, 796)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (260, 7, 797)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (241, 7, 801)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (233, 7, 803)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (226, 7, 805)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (179, 7, 817)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (133, 7, 827)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (112, 7, 833)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (91, 7, 837)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (80, 7, 839)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (56, 7, 846)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (16, 7, 854)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (10, 7, 855)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3616, 8, 1)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3595, 8, 5)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3574, 8, 9)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3571, 8, 10)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3559, 8, 13)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3558, 8, 14)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3553, 8, 15)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3551, 8, 16)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3524, 8, 22)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3513, 8, 24)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3481, 8, 33)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3466, 8, 36)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3440, 8, 41)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3432, 8, 43)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3412, 8, 49)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3399, 8, 53)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3367, 8, 60)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3330, 8, 67)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3308, 8, 71)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3286, 8, 76)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3283, 8, 77)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3262, 8, 82)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3250, 8, 85)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3242, 8, 87)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3232, 8, 90)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3203, 8, 97)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3193, 8, 99)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3186, 8, 101)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3161, 8, 106)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3150, 8, 108)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3137, 8, 112)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3131, 8, 114)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3122, 8, 116)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3118, 8, 117)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3096, 8, 123)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3083, 8, 126)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3068, 8, 130)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3063, 8, 132)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3043, 8, 138)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3023, 8, 143)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2985, 8, 152)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2979, 8, 153)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2976, 8, 154)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2973, 8, 155)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2966, 8, 157)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2936, 8, 164)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2925, 8, 165)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2912, 8, 167)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2905, 8, 169)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2882, 8, 174)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2879, 8, 175)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2874, 8, 177)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2869, 8, 178)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2845, 8, 185)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2807, 8, 197)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2791, 8, 200)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2774, 8, 203)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2772, 8, 204)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2765, 8, 205)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2759, 8, 207)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2748, 8, 209)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2741, 8, 210)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2731, 8, 212)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2713, 8, 217)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2678, 8, 225)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2670, 8, 228)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2662, 8, 231)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2639, 8, 236)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2638, 8, 237)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2635, 8, 238)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2627, 8, 240)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2625, 8, 241)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2618, 8, 242)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2615, 8, 243)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2610, 8, 244)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2601, 8, 246)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2576, 8, 250)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2570, 8, 252)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2550, 8, 257)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2539, 8, 260)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2510, 8, 267)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2496, 8, 271)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2485, 8, 274)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2461, 8, 279)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2455, 8, 280)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2443, 8, 282)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2424, 8, 286)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2422, 8, 287)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2409, 8, 289)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2390, 8, 294)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2388, 8, 295)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2380, 8, 296)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2373, 8, 298)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2357, 8, 302)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2341, 8, 306)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2323, 8, 310)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2306, 8, 313)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2294, 8, 316)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2289, 8, 317)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2275, 8, 320)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2256, 8, 325)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2255, 8, 326)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2197, 8, 339)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2192, 8, 340)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2179, 8, 343)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2176, 8, 344)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2169, 8, 345)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2163, 8, 346)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2153, 8, 349)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2143, 8, 350)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2137, 8, 351)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2133, 8, 353)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2127, 8, 355)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2085, 8, 366)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2075, 8, 370)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2063, 8, 373)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2048, 8, 376)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2041, 8, 377)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2035, 8, 378)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2029, 8, 379)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2021, 8, 380)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2006, 8, 384)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2002, 8, 385)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1982, 8, 390)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1966, 8, 393)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1959, 8, 395)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1955, 8, 396)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1921, 8, 405)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1902, 8, 410)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1899, 8, 411)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1895, 8, 412)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1876, 8, 417)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1850, 8, 423)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1837, 8, 426)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1827, 8, 427)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1807, 8, 432)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1798, 8, 434)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1779, 8, 439)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1773, 8, 440)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1758, 8, 443)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1751, 8, 445)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1742, 8, 447)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1719, 8, 453)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1709, 8, 455)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1707, 8, 456)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1701, 8, 457)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1688, 8, 459)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1665, 8, 464)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1659, 8, 465)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1656, 8, 466)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1638, 8, 470)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1633, 8, 471)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1615, 8, 474)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1575, 8, 484)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1565, 8, 487)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1561, 8, 488)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1544, 8, 491)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1539, 8, 492)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1531, 8, 493)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1525, 8, 494)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1520, 8, 496)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1512, 8, 499)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1502, 8, 501)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1495, 8, 502)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1488, 8, 504)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1459, 8, 511)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1456, 8, 512)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1444, 8, 514)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1424, 8, 517)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1396, 8, 522)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1390, 8, 524)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1384, 8, 525)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1370, 8, 529)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1365, 8, 530)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1338, 8, 536)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1314, 8, 544)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1284, 8, 551)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1280, 8, 552)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1265, 8, 555)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1260, 8, 557)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1255, 8, 558)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1251, 8, 560)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1245, 8, 561)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1213, 8, 567)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1195, 8, 570)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1158, 8, 580)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1155, 8, 581)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1143, 8, 584)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1138, 8, 586)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1130, 8, 588)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1122, 8, 590)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1119, 8, 591)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1115, 8, 592)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1111, 8, 593)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1094, 8, 596)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1082, 8, 599)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1073, 8, 601)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1061, 8, 603)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1054, 8, 605)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1049, 8, 607)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1025, 8, 613)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (994, 8, 620)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (969, 8, 625)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (947, 8, 630)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (938, 8, 631)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (930, 8, 634)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (922, 8, 636)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (912, 8, 638)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (906, 8, 639)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (879, 8, 646)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (866, 8, 650)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (840, 8, 657)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (834, 8, 658)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (823, 8, 661)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (812, 8, 664)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (808, 8, 665)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (796, 8, 666)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (795, 8, 667)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (769, 8, 674)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (758, 8, 677)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (746, 8, 679)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (728, 8, 684)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (718, 8, 686)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (695, 8, 691)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (626, 8, 710)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (597, 8, 716)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (580, 8, 720)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (537, 8, 730)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (517, 8, 735)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (508, 8, 737)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (495, 8, 739)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (477, 8, 743)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (462, 8, 749)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (457, 8, 750)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (449, 8, 751)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (439, 8, 754)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (429, 8, 757)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (418, 8, 759)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (401, 8, 762)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (394, 8, 764)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (382, 8, 766)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (381, 8, 767)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (363, 8, 771)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (358, 8, 773)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (342, 8, 777)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (328, 8, 780)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (320, 8, 781)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (308, 8, 783)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (277, 8, 792)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (275, 8, 793)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (271, 8, 794)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (254, 8, 798)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (245, 8, 801)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (223, 8, 805)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (220, 8, 806)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (211, 8, 809)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (185, 8, 815)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (151, 8, 822)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (147, 8, 823)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (107, 8, 834)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (103, 8, 835)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (92, 8, 837)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (53, 8, 847)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (40, 8, 849)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (34, 8, 851)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (28, 8, 852)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (13, 8, 855)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3611, 9, 1)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3591, 9, 6)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3584, 9, 8)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3578, 9, 9)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3547, 9, 17)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3541, 9, 19)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3533, 9, 20)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3532, 9, 21)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3525, 9, 22)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3522, 9, 23)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3517, 9, 24)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3511, 9, 25)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3508, 9, 26)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3487, 9, 31)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3477, 9, 33)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3475, 9, 34)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3443, 9, 41)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3433, 9, 42)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3411, 9, 49)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3408, 9, 51)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3379, 9, 58)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3373, 9, 59)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3359, 9, 61)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3354, 9, 62)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3343, 9, 64)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3339, 9, 65)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3310, 9, 71)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3284, 9, 77)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3279, 9, 78)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3267, 9, 81)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3244, 9, 86)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3225, 9, 92)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3218, 9, 93)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3210, 9, 96)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3200, 9, 98)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3187, 9, 101)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3184, 9, 102)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3157, 9, 106)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3156, 9, 107)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3128, 9, 114)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3115, 9, 118)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3104, 9, 121)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3098, 9, 122)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3069, 9, 129)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3040, 9, 139)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3013, 9, 146)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2991, 9, 151)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2986, 9, 152)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2978, 9, 154)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2967, 9, 157)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2962, 9, 158)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2953, 9, 161)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2942, 9, 163)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2931, 9, 164)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2920, 9, 166)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2916, 9, 167)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2907, 9, 168)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2901, 9, 170)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2900, 9, 171)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2881, 9, 174)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2873, 9, 177)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2856, 9, 182)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2796, 9, 199)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2780, 9, 202)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2778, 9, 203)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2755, 9, 207)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2744, 9, 210)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2694, 9, 222)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2671, 9, 228)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2667, 9, 229)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2641, 9, 236)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2632, 9, 238)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2630, 9, 239)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2621, 9, 241)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2605, 9, 245)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2591, 9, 247)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2586, 9, 248)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2561, 9, 255)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2557, 9, 256)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2554, 9, 257)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2538, 9, 260)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2532, 9, 261)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2528, 9, 262)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2524, 9, 263)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2506, 9, 268)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2484, 9, 274)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2466, 9, 277)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2462, 9, 279)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2452, 9, 280)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2449, 9, 281)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2441, 9, 283)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2433, 9, 285)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2425, 9, 286)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2396, 9, 293)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2355, 9, 302)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2315, 9, 311)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2311, 9, 312)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2305, 9, 313)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2298, 9, 315)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2296, 9, 316)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2283, 9, 318)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2274, 9, 320)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2273, 9, 321)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2236, 9, 330)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2223, 9, 333)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2218, 9, 334)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2205, 9, 338)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2199, 9, 339)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2172, 9, 345)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2156, 9, 348)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2151, 9, 349)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2144, 9, 350)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2103, 9, 361)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2096, 9, 363)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2087, 9, 365)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2057, 9, 374)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2013, 9, 383)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1985, 9, 389)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1956, 9, 396)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1928, 9, 403)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1894, 9, 412)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1883, 9, 415)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1870, 9, 419)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1845, 9, 424)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1818, 9, 430)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1816, 9, 431)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1801, 9, 433)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1782, 9, 438)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1754, 9, 445)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1743, 9, 447)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1723, 9, 452)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1720, 9, 453)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1716, 9, 454)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1703, 9, 457)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1690, 9, 459)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1681, 9, 461)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1671, 9, 462)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1669, 9, 463)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1664, 9, 464)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1654, 9, 467)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1648, 9, 469)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1634, 9, 471)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1622, 9, 473)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1606, 9, 476)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1600, 9, 477)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1584, 9, 482)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1577, 9, 483)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1574, 9, 484)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1569, 9, 485)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1547, 9, 490)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1537, 9, 492)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1535, 9, 493)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1527, 9, 494)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1506, 9, 500)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1460, 9, 511)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1450, 9, 513)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1416, 9, 518)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1402, 9, 521)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1376, 9, 528)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1355, 9, 532)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1342, 9, 535)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1335, 9, 537)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1334, 9, 538)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1323, 9, 541)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1317, 9, 543)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1276, 9, 553)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1269, 9, 555)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1261, 9, 557)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1253, 9, 559)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1220, 9, 565)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1200, 9, 569)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1188, 9, 573)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1172, 9, 576)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1156, 9, 580)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1145, 9, 584)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1126, 9, 589)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1117, 9, 592)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1108, 9, 593)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1101, 9, 594)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1078, 9, 600)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1070, 9, 601)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1060, 9, 604)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1042, 9, 609)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1039, 9, 610)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1016, 9, 614)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1008, 9, 616)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (996, 9, 619)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (992, 9, 620)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (987, 9, 621)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (974, 9, 623)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (971, 9, 625)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (963, 9, 627)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (941, 9, 631)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (932, 9, 633)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (914, 9, 637)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (905, 9, 640)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (900, 9, 641)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (847, 9, 655)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (841, 9, 657)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (824, 9, 660)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (792, 9, 667)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (788, 9, 668)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (766, 9, 675)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (755, 9, 677)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (748, 9, 679)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (723, 9, 685)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (717, 9, 686)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (715, 9, 687)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (707, 9, 688)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (696, 9, 691)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (692, 9, 693)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (686, 9, 694)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (681, 9, 696)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (661, 9, 700)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (647, 9, 704)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (643, 9, 705)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (621, 9, 711)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (611, 9, 712)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (599, 9, 716)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (593, 9, 717)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (574, 9, 721)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (559, 9, 724)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (555, 9, 725)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (532, 9, 731)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (520, 9, 734)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (509, 9, 737)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (503, 9, 738)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (497, 9, 739)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (485, 9, 742)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (470, 9, 745)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (442, 9, 753)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (432, 9, 756)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (426, 9, 758)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (421, 9, 759)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (400, 9, 762)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (399, 9, 763)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (377, 9, 768)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (369, 9, 770)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (352, 9, 774)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (330, 9, 780)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (319, 9, 781)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (318, 9, 782)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (305, 9, 784)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (296, 9, 787)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (268, 9, 794)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (263, 9, 796)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (237, 9, 802)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (224, 9, 805)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (221, 9, 806)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (215, 9, 807)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (205, 9, 810)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (202, 9, 811)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (167, 9, 819)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (155, 9, 822)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (145, 9, 823)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (139, 9, 825)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (115, 9, 832)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (88, 9, 838)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (69, 9, 842)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (54, 9, 846)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (51, 9, 847)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (43, 9, 849)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (36, 9, 850)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (30, 9, 852)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (24, 9, 853)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (6, 9, 857)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3612, 10, 1)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3605, 10, 2)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3602, 10, 3)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3600, 10, 4)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3597, 10, 5)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3555, 10, 14)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3549, 10, 17)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3542, 10, 18)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3515, 10, 24)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3510, 10, 26)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3498, 10, 28)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3493, 10, 30)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3478, 10, 33)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3469, 10, 35)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3465, 10, 36)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3455, 10, 39)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3406, 10, 51)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3403, 10, 52)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3397, 10, 54)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3392, 10, 55)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3387, 10, 56)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3386, 10, 57)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3377, 10, 58)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3374, 10, 59)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3369, 10, 60)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3366, 10, 61)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3335, 10, 66)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3312, 10, 70)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3306, 10, 71)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3295, 10, 75)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3285, 10, 77)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3276, 10, 79)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3271, 10, 80)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3269, 10, 81)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3237, 10, 88)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3224, 10, 92)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3212, 10, 96)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3166, 10, 105)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3162, 10, 106)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3147, 10, 109)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3142, 10, 111)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3129, 10, 114)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3117, 10, 117)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3110, 10, 118)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3105, 10, 121)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3095, 10, 123)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3075, 10, 128)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3062, 10, 132)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3049, 10, 137)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3025, 10, 142)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3020, 10, 144)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3014, 10, 146)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3001, 10, 149)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2993, 10, 150)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2969, 10, 157)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2961, 10, 158)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2944, 10, 162)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2940, 10, 163)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2934, 10, 164)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2930, 10, 165)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2923, 10, 166)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2910, 10, 168)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2906, 10, 169)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2903, 10, 170)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2891, 10, 172)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2888, 10, 174)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2878, 10, 176)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2860, 10, 180)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2857, 10, 181)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2854, 10, 182)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2852, 10, 183)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2834, 10, 189)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2829, 10, 190)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2814, 10, 194)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2802, 10, 197)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2794, 10, 199)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2784, 10, 201)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2771, 10, 204)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2747, 10, 209)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2706, 10, 220)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2690, 10, 222)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2685, 10, 223)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2684, 10, 224)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2660, 10, 231)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2644, 10, 236)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2629, 10, 239)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2606, 10, 244)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2598, 10, 246)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2583, 10, 249)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2559, 10, 256)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2535, 10, 261)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2516, 10, 265)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2504, 10, 268)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2502, 10, 269)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2495, 10, 271)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2489, 10, 273)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2481, 10, 274)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2469, 10, 277)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2463, 10, 278)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2430, 10, 285)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2377, 10, 297)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2371, 10, 298)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2367, 10, 300)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2360, 10, 301)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2351, 10, 303)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2299, 10, 315)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2277, 10, 320)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2271, 10, 321)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2253, 10, 326)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2208, 10, 337)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2201, 10, 338)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2200, 10, 339)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2159, 10, 348)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2140, 10, 350)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2135, 10, 351)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2121, 10, 356)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2108, 10, 360)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2086, 10, 366)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2076, 10, 369)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2055, 10, 374)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2044, 10, 376)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2039, 10, 378)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1991, 10, 389)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1979, 10, 390)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1977, 10, 391)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1969, 10, 392)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1944, 10, 398)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1941, 10, 399)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1907, 10, 410)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1900, 10, 411)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1878, 10, 416)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1875, 10, 417)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1868, 10, 419)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1865, 10, 420)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1856, 10, 421)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1844, 10, 424)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1838, 10, 425)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1829, 10, 427)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1799, 10, 434)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1793, 10, 436)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1785, 10, 437)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1777, 10, 440)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1763, 10, 442)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1759, 10, 443)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1757, 10, 444)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1733, 10, 450)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1717, 10, 453)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1702, 10, 457)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1687, 10, 459)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1682, 10, 461)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1673, 10, 462)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1667, 10, 463)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1655, 10, 467)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1651, 10, 468)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1645, 10, 469)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1612, 10, 474)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1605, 10, 476)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1599, 10, 477)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1596, 10, 478)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1593, 10, 480)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1582, 10, 483)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1568, 10, 486)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1543, 10, 491)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1540, 10, 492)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1534, 10, 493)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1516, 10, 497)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1509, 10, 499)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1455, 10, 512)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1446, 10, 514)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1437, 10, 515)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1401, 10, 521)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1392, 10, 524)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1364, 10, 530)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1344, 10, 534)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1325, 10, 541)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1304, 10, 546)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1299, 10, 547)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1296, 10, 548)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1282, 10, 552)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1258, 10, 557)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1254, 10, 558)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1252, 10, 559)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1221, 10, 565)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1216, 10, 566)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1209, 10, 567)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1204, 10, 568)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1189, 10, 572)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1187, 10, 573)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1180, 10, 574)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1166, 10, 579)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1131, 10, 587)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1106, 10, 593)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1099, 10, 594)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1090, 10, 596)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1084, 10, 599)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1036, 10, 611)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1032, 10, 612)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1023, 10, 613)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1022, 10, 614)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1014, 10, 615)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1010, 10, 616)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1005, 10, 617)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (997, 10, 619)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (991, 10, 621)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (980, 10, 622)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (962, 10, 627)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (955, 10, 628)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (913, 10, 638)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (889, 10, 644)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (872, 10, 648)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (865, 10, 651)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (850, 10, 654)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (849, 10, 655)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (827, 10, 660)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (819, 10, 661)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (818, 10, 662)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (813, 10, 664)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (804, 10, 665)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (799, 10, 666)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (784, 10, 669)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (750, 10, 679)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (744, 10, 680)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (732, 10, 683)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (704, 10, 689)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (690, 10, 693)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (684, 10, 695)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (670, 10, 698)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (660, 10, 700)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (644, 10, 704)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (631, 10, 708)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (587, 10, 718)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (586, 10, 719)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (570, 10, 722)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (565, 10, 723)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (535, 10, 731)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (475, 10, 744)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (465, 10, 748)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (445, 10, 752)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (433, 10, 755)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (410, 10, 760)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (370, 10, 770)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (355, 10, 773)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (351, 10, 775)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (334, 10, 779)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (323, 10, 781)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (306, 10, 784)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (284, 10, 790)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (261, 10, 796)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (259, 10, 797)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (256, 10, 798)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (253, 10, 799)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (248, 10, 800)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (209, 10, 809)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (201, 10, 811)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (190, 10, 814)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (183, 10, 815)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (180, 10, 817)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (163, 10, 820)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (149, 10, 823)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (96, 10, 835)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (81, 10, 839)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (74, 10, 841)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (63, 10, 844)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (42, 10, 849)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (37, 10, 850)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (27, 10, 852)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (9, 10, 855)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3599, 11, 5)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3586, 11, 7)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3582, 11, 8)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3564, 11, 12)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3563, 11, 13)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3536, 11, 20)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3503, 11, 27)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3496, 11, 29)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3483, 11, 32)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3479, 11, 33)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3437, 11, 42)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3427, 11, 45)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3421, 11, 46)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3413, 11, 49)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3409, 11, 51)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3385, 11, 57)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3363, 11, 61)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3348, 11, 63)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3324, 11, 68)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3317, 11, 70)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3296, 11, 75)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3281, 11, 78)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3272, 11, 80)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3261, 11, 82)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3248, 11, 86)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3241, 11, 87)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3197, 11, 99)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3174, 11, 103)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3169, 11, 105)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3127, 11, 114)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3123, 11, 116)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3119, 11, 117)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3112, 11, 118)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3108, 11, 120)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3099, 11, 122)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3089, 11, 124)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3085, 11, 125)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3031, 11, 141)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3029, 11, 142)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3016, 11, 145)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3015, 11, 146)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3012, 11, 147)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3004, 11, 148)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2998, 11, 149)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2994, 11, 150)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2992, 11, 151)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2982, 11, 153)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2971, 11, 156)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2895, 11, 171)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2883, 11, 174)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2866, 11, 178)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2858, 11, 181)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2832, 11, 189)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2801, 11, 198)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2793, 11, 199)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2770, 11, 204)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2763, 11, 206)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2754, 11, 208)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2750, 11, 209)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2735, 11, 212)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2711, 11, 218)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2702, 11, 221)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2696, 11, 222)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2686, 11, 223)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2679, 11, 225)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2668, 11, 228)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2653, 11, 233)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2619, 11, 241)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2590, 11, 247)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2579, 11, 250)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2574, 11, 251)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2568, 11, 253)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2564, 11, 254)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2558, 11, 256)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2547, 11, 258)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2542, 11, 259)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2540, 11, 260)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2513, 11, 266)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2498, 11, 270)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2486, 11, 274)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2474, 11, 276)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2471, 11, 277)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2459, 11, 279)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2453, 11, 280)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2436, 11, 284)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2416, 11, 287)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2408, 11, 290)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2385, 11, 295)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2374, 11, 297)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2361, 11, 300)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2359, 11, 301)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2349, 11, 303)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2326, 11, 310)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2284, 11, 318)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2261, 11, 324)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2245, 11, 328)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2226, 11, 333)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2207, 11, 337)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2204, 11, 338)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2195, 11, 339)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2190, 11, 341)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2175, 11, 345)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2152, 11, 349)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2148, 11, 350)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2125, 11, 356)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2109, 11, 360)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2074, 11, 371)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2066, 11, 372)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2056, 11, 374)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2043, 11, 377)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2001, 11, 386)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1983, 11, 389)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1980, 11, 390)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1967, 11, 393)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1958, 11, 395)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1949, 11, 397)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1918, 11, 406)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1903, 11, 410)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1893, 11, 412)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1887, 11, 414)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1885, 11, 415)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1857, 11, 421)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1843, 11, 424)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1835, 11, 426)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1817, 11, 430)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1812, 11, 431)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1803, 11, 432)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1778, 11, 439)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1776, 11, 440)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1771, 11, 441)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1766, 11, 442)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1752, 11, 445)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1737, 11, 449)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1729, 11, 451)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1711, 11, 455)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1706, 11, 456)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1684, 11, 460)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1679, 11, 461)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1675, 11, 462)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1653, 11, 467)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1628, 11, 472)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1603, 11, 476)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1601, 11, 477)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1598, 11, 478)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1594, 11, 480)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1556, 11, 489)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1551, 11, 490)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1533, 11, 493)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1529, 11, 494)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1523, 11, 496)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1515, 11, 497)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1514, 11, 498)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1496, 11, 502)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1483, 11, 505)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1464, 11, 510)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1441, 11, 515)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1425, 11, 517)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1395, 11, 523)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1393, 11, 524)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1378, 11, 527)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1371, 11, 528)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1349, 11, 533)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1348, 11, 534)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1331, 11, 538)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1327, 11, 540)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1312, 11, 544)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1308, 11, 545)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1287, 11, 551)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1279, 11, 552)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1274, 11, 554)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1272, 11, 555)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1242, 11, 562)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1210, 11, 567)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1197, 11, 570)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1192, 11, 571)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1182, 11, 574)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1167, 11, 578)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1147, 11, 583)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1132, 11, 587)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1121, 11, 590)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1118, 11, 591)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1103, 11, 594)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1086, 11, 598)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1066, 11, 602)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1062, 11, 603)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1056, 11, 605)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1038, 11, 610)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1033, 11, 611)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1026, 11, 613)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1018, 11, 614)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1002, 11, 617)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (985, 11, 621)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (977, 11, 623)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (967, 11, 626)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (926, 11, 635)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (893, 11, 643)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (892, 11, 644)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (876, 11, 647)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (873, 11, 648)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (869, 11, 649)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (867, 11, 650)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (862, 11, 651)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (856, 11, 653)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (851, 11, 654)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (836, 11, 657)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (830, 11, 659)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (822, 11, 661)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (809, 11, 665)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (797, 11, 666)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (794, 11, 667)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (778, 11, 670)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (767, 11, 674)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (759, 11, 677)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (743, 11, 680)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (741, 11, 681)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (727, 11, 684)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (721, 11, 686)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (711, 11, 687)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (705, 11, 688)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (685, 11, 695)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (676, 11, 697)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (669, 11, 698)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (665, 11, 700)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (650, 11, 703)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (633, 11, 708)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (623, 11, 710)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (617, 11, 711)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (615, 11, 712)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (608, 11, 714)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (594, 11, 717)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (577, 11, 720)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (557, 11, 725)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (545, 11, 728)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (539, 11, 730)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (512, 11, 736)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (491, 11, 740)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (482, 11, 742)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (474, 11, 744)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (443, 11, 753)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (438, 11, 754)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (425, 11, 758)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (415, 11, 759)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (408, 11, 761)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (402, 11, 762)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (395, 11, 763)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (357, 11, 773)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (343, 11, 777)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (339, 11, 778)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (331, 11, 780)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (309, 11, 783)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (288, 11, 789)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (285, 11, 790)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (265, 11, 795)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (250, 11, 799)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (222, 11, 806)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (217, 11, 807)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (208, 11, 809)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (203, 11, 811)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (191, 11, 814)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (182, 11, 816)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (178, 11, 817)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (170, 11, 818)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (159, 11, 821)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (153, 11, 822)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (148, 11, 823)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (141, 11, 825)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (127, 11, 829)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (105, 11, 834)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (99, 11, 835)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (90, 11, 837)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (41, 11, 849)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (18, 11, 854)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (5, 11, 857)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3615, 12, 1)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3575, 12, 9)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3569, 12, 11)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3538, 12, 19)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3495, 12, 29)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3467, 12, 35)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3456, 12, 38)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3424, 12, 45)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3401, 12, 52)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3394, 12, 54)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3390, 12, 56)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3380, 12, 58)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3371, 12, 60)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3362, 12, 61)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3342, 12, 65)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3336, 12, 66)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3329, 12, 67)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3319, 12, 69)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3313, 12, 70)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3298, 12, 74)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3247, 12, 86)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3240, 12, 87)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3223, 12, 92)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3219, 12, 93)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3215, 12, 95)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3182, 12, 102)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3175, 12, 103)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3160, 12, 106)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3155, 12, 107)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3144, 12, 110)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3139, 12, 111)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3135, 12, 112)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3133, 12, 113)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3124, 12, 116)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3102, 12, 122)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3094, 12, 123)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3081, 12, 126)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3078, 12, 127)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3070, 12, 129)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3067, 12, 130)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3052, 12, 136)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3021, 12, 143)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2983, 12, 153)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2972, 12, 155)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2968, 12, 157)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2965, 12, 158)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2952, 12, 161)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2946, 12, 162)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2937, 12, 164)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2924, 12, 165)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2922, 12, 166)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2914, 12, 167)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2898, 12, 171)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2886, 12, 174)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2861, 12, 180)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2846, 12, 184)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2826, 12, 191)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2812, 12, 195)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2792, 12, 200)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2781, 12, 202)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2753, 12, 208)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2749, 12, 209)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2739, 12, 211)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2732, 12, 212)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2726, 12, 213)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2697, 12, 221)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2683, 12, 224)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2640, 12, 236)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2637, 12, 237)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2623, 12, 241)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2602, 12, 245)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2571, 12, 251)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2562, 12, 255)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2560, 12, 256)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2555, 12, 257)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2523, 12, 263)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2505, 12, 268)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2490, 12, 273)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2477, 12, 274)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2464, 12, 278)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2460, 12, 279)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2456, 12, 280)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2442, 12, 283)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2428, 12, 285)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2410, 12, 289)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2407, 12, 290)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2404, 12, 291)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2402, 12, 292)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2379, 12, 296)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2375, 12, 297)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2356, 12, 302)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2337, 12, 306)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2320, 12, 311)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2302, 12, 315)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2295, 12, 316)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2285, 12, 318)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2279, 12, 319)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2260, 12, 324)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2257, 12, 325)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2250, 12, 326)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2243, 12, 328)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2237, 12, 329)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2228, 12, 331)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2222, 12, 333)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2221, 12, 334)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2206, 12, 338)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2194, 12, 339)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2191, 12, 340)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2187, 12, 341)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2178, 12, 344)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2165, 12, 346)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2149, 12, 349)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2112, 12, 359)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2102, 12, 361)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2097, 12, 362)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2090, 12, 364)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2088, 12, 365)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2073, 12, 371)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2058, 12, 374)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2040, 12, 377)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2024, 12, 380)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2015, 12, 382)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1993, 12, 387)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1992, 12, 388)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1984, 12, 389)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1971, 12, 392)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1954, 12, 396)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1953, 12, 397)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1930, 12, 402)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1926, 12, 404)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1897, 12, 411)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1890, 12, 413)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1863, 12, 420)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1842, 12, 424)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1788, 12, 437)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1767, 12, 442)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1750, 12, 445)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1740, 12, 447)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1738, 12, 448)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1727, 12, 451)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1714, 12, 454)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1686, 12, 460)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1647, 12, 469)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1635, 12, 470)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1624, 12, 473)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1570, 12, 485)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1560, 12, 488)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1557, 12, 489)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1545, 12, 491)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1508, 12, 499)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1501, 12, 501)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1485, 12, 504)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1479, 12, 506)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1472, 12, 509)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1465, 12, 510)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1458, 12, 511)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1453, 12, 512)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1439, 12, 515)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1431, 12, 516)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1426, 12, 517)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1411, 12, 519)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1404, 12, 520)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1382, 12, 526)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1372, 12, 528)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1361, 12, 530)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1340, 12, 536)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1319, 12, 542)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1318, 12, 543)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1306, 12, 545)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1305, 12, 546)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1294, 12, 548)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1290, 12, 550)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1286, 12, 551)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1275, 12, 553)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1256, 12, 557)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1244, 12, 561)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1236, 12, 563)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1205, 12, 568)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1175, 12, 575)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1127, 12, 589)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1116, 12, 592)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1097, 12, 595)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1089, 12, 597)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1064, 12, 603)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1057, 12, 605)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1041, 12, 610)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1021, 12, 614)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1013, 12, 615)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1004, 12, 617)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (976, 12, 623)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (972, 12, 624)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (970, 12, 625)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (966, 12, 626)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (960, 12, 627)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (957, 12, 628)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (944, 12, 630)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (943, 12, 631)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (924, 12, 636)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (915, 12, 637)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (907, 12, 639)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (899, 12, 642)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (887, 12, 644)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (870, 12, 648)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (864, 12, 651)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (855, 12, 653)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (846, 12, 655)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (800, 12, 665)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (781, 12, 670)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (775, 12, 673)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (764, 12, 676)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (756, 12, 677)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (753, 12, 678)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (747, 12, 679)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (735, 12, 682)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (730, 12, 684)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (724, 12, 685)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (674, 12, 697)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (666, 12, 699)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (662, 12, 700)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (655, 12, 701)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (614, 12, 712)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (607, 12, 714)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (602, 12, 715)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (596, 12, 716)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (588, 12, 718)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (581, 12, 719)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (527, 12, 732)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (522, 12, 733)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (519, 12, 734)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (510, 12, 737)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (488, 12, 740)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (479, 12, 743)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (469, 12, 746)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (458, 12, 749)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (450, 12, 751)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (437, 12, 754)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (431, 12, 756)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (393, 12, 764)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (391, 12, 765)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (365, 12, 771)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (325, 12, 781)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (310, 12, 783)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (298, 12, 786)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (290, 12, 789)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (286, 12, 790)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (247, 12, 801)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (236, 12, 803)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (228, 12, 804)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (225, 12, 805)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (216, 12, 807)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (200, 12, 812)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (186, 12, 814)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (184, 12, 815)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (181, 12, 816)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (175, 12, 817)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (172, 12, 818)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (166, 12, 819)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (150, 12, 822)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (146, 12, 823)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (143, 12, 824)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (130, 12, 829)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (108, 12, 834)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (104, 12, 835)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (78, 12, 840)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (72, 12, 842)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (46, 12, 848)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (19, 12, 853)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3610, 13, 1)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3603, 13, 3)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3594, 13, 5)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3583, 13, 8)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3545, 13, 17)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3529, 13, 21)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3526, 13, 22)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3521, 13, 23)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3507, 13, 26)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3492, 13, 30)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3473, 13, 34)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3436, 13, 42)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3430, 13, 43)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3419, 13, 47)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3415, 13, 48)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3358, 13, 61)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3351, 13, 63)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3327, 13, 67)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3322, 13, 68)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3315, 13, 70)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3297, 13, 75)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3287, 13, 76)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3268, 13, 81)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3258, 13, 83)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3252, 13, 85)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3233, 13, 90)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3202, 13, 97)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3198, 13, 98)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3196, 13, 99)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3191, 13, 100)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3171, 13, 104)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3167, 13, 105)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3149, 13, 108)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3134, 13, 113)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3093, 13, 123)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3046, 13, 138)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3038, 13, 139)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3032, 13, 141)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3019, 13, 145)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3008, 13, 147)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3006, 13, 148)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2999, 13, 149)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2995, 13, 150)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2980, 13, 153)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2977, 13, 154)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2947, 13, 162)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2915, 13, 167)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2896, 13, 171)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2892, 13, 172)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2887, 13, 174)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2875, 13, 177)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2870, 13, 178)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2840, 13, 187)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2839, 13, 188)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2833, 13, 189)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2830, 13, 190)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2799, 13, 199)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2789, 13, 200)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2786, 13, 201)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2768, 13, 205)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2757, 13, 207)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2751, 13, 208)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2743, 13, 210)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2733, 13, 212)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2721, 13, 215)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2717, 13, 217)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2699, 13, 221)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2675, 13, 226)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2657, 13, 232)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2648, 13, 234)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2636, 13, 237)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2620, 13, 241)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2614, 13, 243)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2607, 13, 244)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2600, 13, 246)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2572, 13, 251)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2569, 13, 252)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2563, 13, 254)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2546, 13, 259)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2536, 13, 260)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2534, 13, 261)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2497, 13, 270)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2445, 13, 282)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2440, 13, 283)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2431, 13, 285)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2418, 13, 287)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2412, 13, 289)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2406, 13, 290)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2398, 13, 293)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2368, 13, 299)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2329, 13, 309)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2325, 13, 310)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2317, 13, 311)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2288, 13, 317)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2254, 13, 326)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2248, 13, 327)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2232, 13, 331)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2215, 13, 336)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2202, 13, 338)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2193, 13, 339)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2177, 13, 344)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2173, 13, 345)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2167, 13, 346)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2158, 13, 348)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2136, 13, 351)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2118, 13, 357)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2082, 13, 367)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2077, 13, 368)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2053, 13, 374)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2047, 13, 376)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2023, 13, 380)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1987, 13, 389)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1978, 13, 390)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1964, 13, 394)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1948, 13, 398)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1938, 13, 400)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1927, 13, 404)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1919, 13, 405)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1914, 13, 407)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1859, 13, 421)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1853, 13, 422)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1847, 13, 424)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1828, 13, 427)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1826, 13, 428)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1819, 13, 430)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1804, 13, 432)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1796, 13, 435)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1791, 13, 436)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1775, 13, 440)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1744, 13, 446)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1705, 13, 457)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1697, 13, 458)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1694, 13, 459)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1642, 13, 469)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1620, 13, 473)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1614, 13, 474)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1590, 13, 480)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1589, 13, 481)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1580, 13, 483)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1572, 13, 485)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1567, 13, 486)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1536, 13, 493)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1528, 13, 494)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1510, 13, 499)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1500, 13, 501)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1494, 13, 502)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1490, 13, 503)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1475, 13, 507)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1471, 13, 509)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1449, 13, 514)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1442, 13, 515)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1432, 13, 516)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1420, 13, 518)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1407, 13, 520)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1399, 13, 522)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1383, 13, 526)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1357, 13, 532)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1352, 13, 533)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1341, 13, 535)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1328, 13, 540)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1309, 13, 545)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1300, 13, 547)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1292, 13, 549)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1285, 13, 551)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1267, 13, 555)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1240, 13, 562)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1232, 13, 563)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1231, 13, 564)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1212, 13, 567)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1207, 13, 568)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1169, 13, 577)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1165, 13, 579)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1148, 13, 583)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1136, 13, 586)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1120, 13, 591)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1093, 13, 596)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1083, 13, 599)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1076, 13, 600)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1075, 13, 601)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1040, 13, 610)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1030, 13, 612)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1009, 13, 616)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (995, 13, 620)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (979, 13, 623)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (961, 13, 627)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (954, 13, 629)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (929, 13, 634)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (920, 13, 636)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (909, 13, 638)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (877, 13, 647)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (858, 13, 653)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (848, 13, 655)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (838, 13, 657)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (833, 13, 659)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (814, 13, 663)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (798, 13, 666)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (791, 13, 668)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (777, 13, 672)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (770, 13, 674)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (765, 13, 675)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (733, 13, 683)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (725, 13, 685)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (703, 13, 689)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (694, 13, 693)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (678, 13, 696)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (672, 13, 698)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (659, 13, 701)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (652, 13, 702)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (640, 13, 706)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (630, 13, 709)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (624, 13, 710)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (612, 13, 712)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (603, 13, 715)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (562, 13, 724)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (525, 13, 733)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (513, 13, 736)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (460, 13, 749)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (435, 13, 754)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (430, 13, 757)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (398, 13, 763)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (390, 13, 765)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (385, 13, 766)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (359, 13, 772)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (354, 13, 773)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (353, 13, 774)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (349, 13, 776)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (317, 13, 782)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (294, 13, 788)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (244, 13, 801)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (231, 13, 803)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (213, 13, 808)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (177, 13, 817)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (140, 13, 825)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (129, 13, 829)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (121, 13, 830)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (118, 13, 831)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (110, 13, 833)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (94, 13, 836)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (77, 13, 840)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (68, 13, 842)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (65, 13, 844)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (48, 13, 848)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (32, 13, 851)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (17, 13, 854)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (12, 13, 855)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3, 13, 858)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3617, 14, 1)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3606, 14, 2)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3590, 14, 6)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3589, 14, 7)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3581, 14, 8)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3570, 14, 11)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3561, 14, 13)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3552, 14, 16)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3531, 14, 21)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3500, 14, 28)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3470, 14, 35)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3457, 14, 38)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3454, 14, 39)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3414, 14, 48)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3347, 14, 64)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3334, 14, 66)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3307, 14, 71)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3301, 14, 73)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3292, 14, 75)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3274, 14, 79)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3264, 14, 81)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3251, 14, 85)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3222, 14, 92)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3214, 14, 95)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3205, 14, 97)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3189, 14, 101)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3176, 14, 103)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3173, 14, 104)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3159, 14, 106)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3152, 14, 108)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3146, 14, 110)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3138, 14, 112)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3101, 14, 122)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3090, 14, 124)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3079, 14, 127)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3065, 14, 131)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3064, 14, 132)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3060, 14, 133)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3042, 14, 138)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3024, 14, 143)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3009, 14, 147)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (3000, 14, 149)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2988, 14, 152)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2950, 14, 162)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2902, 14, 170)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2897, 14, 171)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2889, 14, 174)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2865, 14, 179)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2844, 14, 186)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2823, 14, 192)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2810, 14, 195)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2783, 14, 202)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2764, 14, 205)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2760, 14, 207)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2740, 14, 211)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2729, 14, 213)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2716, 14, 217)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2704, 14, 220)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2703, 14, 221)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2691, 14, 222)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2688, 14, 223)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2681, 14, 224)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2649, 14, 234)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2646, 14, 235)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2643, 14, 236)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2617, 14, 242)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2589, 14, 248)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2566, 14, 254)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2551, 14, 257)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2543, 14, 259)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2531, 14, 261)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2512, 14, 266)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2493, 14, 271)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2480, 14, 274)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2457, 14, 280)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2444, 14, 282)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2413, 14, 288)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2401, 14, 292)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2392, 14, 294)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2389, 14, 295)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2364, 14, 300)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2358, 14, 301)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2352, 14, 302)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2346, 14, 304)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2345, 14, 305)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2334, 14, 307)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2246, 14, 328)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2229, 14, 331)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2217, 14, 335)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2189, 14, 341)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2181, 14, 343)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2160, 14, 347)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2134, 14, 352)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2124, 14, 356)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2111, 14, 359)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2104, 14, 361)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2100, 14, 362)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2078, 14, 368)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2061, 14, 373)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2050, 14, 375)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2028, 14, 379)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (2011, 14, 383)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1986, 14, 389)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1975, 14, 391)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1960, 14, 395)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1943, 14, 398)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1936, 14, 401)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1922, 14, 405)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1915, 14, 406)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1891, 14, 412)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1852, 14, 422)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1840, 14, 425)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1836, 14, 426)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1832, 14, 427)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1809, 14, 432)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1786, 14, 437)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1772, 14, 440)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1770, 14, 441)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1760, 14, 443)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1726, 14, 451)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1700, 14, 457)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1699, 14, 458)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1691, 14, 459)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1677, 14, 462)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1666, 14, 464)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1650, 14, 468)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1643, 14, 469)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1629, 14, 471)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1623, 14, 473)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1611, 14, 474)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1610, 14, 475)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1592, 14, 480)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1583, 14, 483)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1564, 14, 487)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1542, 14, 491)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1504, 14, 500)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1491, 14, 503)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1478, 14, 506)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1474, 14, 507)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1468, 14, 510)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1452, 14, 513)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1448, 14, 514)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1438, 14, 515)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1435, 14, 516)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1427, 14, 517)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1419, 14, 518)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1413, 14, 519)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1409, 14, 520)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1388, 14, 524)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1367, 14, 529)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1358, 14, 531)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1351, 14, 533)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1310, 14, 545)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1303, 14, 546)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1293, 14, 548)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1281, 14, 552)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1271, 14, 555)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1262, 14, 556)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1250, 14, 560)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1241, 14, 562)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1234, 14, 563)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1222, 14, 565)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1211, 14, 567)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1206, 14, 568)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1199, 14, 569)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1196, 14, 570)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1171, 14, 576)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1149, 14, 582)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1128, 14, 588)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1091, 14, 596)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1072, 14, 601)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1065, 14, 602)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1051, 14, 606)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1044, 14, 609)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (1003, 14, 617)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (983, 14, 622)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (939, 14, 631)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (936, 14, 632)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (928, 14, 634)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (908, 14, 639)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (884, 14, 645)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (878, 14, 647)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (859, 14, 652)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (843, 14, 656)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (835, 14, 657)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (820, 14, 661)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (806, 14, 665)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (780, 14, 670)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (763, 14, 676)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (737, 14, 682)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (731, 14, 684)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (720, 14, 686)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (710, 14, 687)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (700, 14, 690)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (682, 14, 695)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (651, 14, 703)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (642, 14, 705)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (637, 14, 706)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (618, 14, 711)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (604, 14, 714)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (592, 14, 717)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (582, 14, 719)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (573, 14, 721)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (560, 14, 724)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (554, 14, 725)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (547, 14, 728)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (542, 14, 729)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (541, 14, 730)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (516, 14, 736)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (496, 14, 739)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (487, 14, 741)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (484, 14, 742)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (466, 14, 747)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (454, 14, 750)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (452, 14, 751)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (422, 14, 758)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (417, 14, 759)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (387, 14, 765)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (379, 14, 767)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (375, 14, 768)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (373, 14, 769)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (371, 14, 770)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (350, 14, 775)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (347, 14, 776)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (327, 14, 780)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (324, 14, 781)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (292, 14, 789)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (276, 14, 793)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (269, 14, 794)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (267, 14, 795)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (243, 14, 801)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (240, 14, 802)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (235, 14, 803)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (218, 14, 807)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (204, 14, 810)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (199, 14, 812)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (161, 14, 820)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (157, 14, 821)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (156, 14, 822)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (126, 14, 829)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (124, 14, 830)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (117, 14, 831)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (113, 14, 833)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (98, 14, 835)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (89, 14, 837)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (71, 14, 842)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (64, 14, 844)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (57, 14, 846)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (50, 14, 848)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (35, 14, 851)
GO
INSERT [dbo].[vc_VidCastTagList] ([vc_VidCastTagListID], [vc_TagID], [vc_VidCastID]) VALUES (15, 14, 854)
GO
SET IDENTITY_INSERT [dbo].[vc_VidCastTagList] OFF
GO
/****** Object:  Index [U1_vc_FollowerList]    Script Date: 05/16/2018 17:29:25 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[vc_FollowerList]') AND name = N'U1_vc_FollowerList')
ALTER TABLE [dbo].[vc_FollowerList] ADD  CONSTRAINT [U1_vc_FollowerList] UNIQUE NONCLUSTERED 
(
	[FollowerID] ASC,
	[FollowedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U1_vc_Status]    Script Date: 05/16/2018 17:29:25 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[vc_Status]') AND name = N'U1_vc_Status')
ALTER TABLE [dbo].[vc_Status] ADD  CONSTRAINT [U1_vc_Status] UNIQUE NONCLUSTERED 
(
	[StatusText] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U1_vc_Tag]    Script Date: 05/16/2018 17:29:25 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[vc_Tag]') AND name = N'U1_vc_Tag')
ALTER TABLE [dbo].[vc_Tag] ADD  CONSTRAINT [U1_vc_Tag] UNIQUE NONCLUSTERED 
(
	[TagText] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U1_vc_User]    Script Date: 05/16/2018 17:29:25 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[vc_User]') AND name = N'U1_vc_User')
ALTER TABLE [dbo].[vc_User] ADD  CONSTRAINT [U1_vc_User] UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U2_vc_User]    Script Date: 05/16/2018 17:29:25 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[vc_User]') AND name = N'U2_vc_User')
ALTER TABLE [dbo].[vc_User] ADD  CONSTRAINT [U2_vc_User] UNIQUE NONCLUSTERED 
(
	[EmailAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [U1_vc_UserTagList]    Script Date: 05/16/2018 17:29:25 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[vc_UserTagList]') AND name = N'U1_vc_UserTagList')
ALTER TABLE [dbo].[vc_UserTagList] ADD  CONSTRAINT [U1_vc_UserTagList] UNIQUE NONCLUSTERED 
(
	[vc_TagID] ASC,
	[vc_UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [U1_vc_VidCastTagList]    Script Date: 05/16/2018 17:29:25 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[vc_VidCastTagList]') AND name = N'U1_vc_VidCastTagList')
ALTER TABLE [dbo].[vc_VidCastTagList] ADD  CONSTRAINT [U1_vc_VidCastTagList] UNIQUE NONCLUSTERED 
(
	[vc_TagID] ASC,
	[vc_VidCastID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__vc_User__UserReg__69FBBC1F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vc_User] ADD  DEFAULT (getdate()) FOR [UserRegisteredDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__vc_UserLo__UserL__6CD828CA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vc_UserLogin] ADD  DEFAULT (getdate()) FOR [UserLoginTimestamp]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK1_vc_FollowerList]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_FollowerList]'))
ALTER TABLE [dbo].[vc_FollowerList]  WITH CHECK ADD  CONSTRAINT [FK1_vc_FollowerList] FOREIGN KEY([FollowerID])
REFERENCES [dbo].[vc_User] ([vc_UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK1_vc_FollowerList]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_FollowerList]'))
ALTER TABLE [dbo].[vc_FollowerList] CHECK CONSTRAINT [FK1_vc_FollowerList]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK2_vc_FollowerList]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_FollowerList]'))
ALTER TABLE [dbo].[vc_FollowerList]  WITH CHECK ADD  CONSTRAINT [FK2_vc_FollowerList] FOREIGN KEY([FollowedID])
REFERENCES [dbo].[vc_User] ([vc_UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK2_vc_FollowerList]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_FollowerList]'))
ALTER TABLE [dbo].[vc_FollowerList] CHECK CONSTRAINT [FK2_vc_FollowerList]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK1_vc_UserLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_UserLogin]'))
ALTER TABLE [dbo].[vc_UserLogin]  WITH CHECK ADD  CONSTRAINT [FK1_vc_UserLogin] FOREIGN KEY([vc_UserID])
REFERENCES [dbo].[vc_User] ([vc_UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK1_vc_UserLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_UserLogin]'))
ALTER TABLE [dbo].[vc_UserLogin] CHECK CONSTRAINT [FK1_vc_UserLogin]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[vc_UserTagList_vc_Tag]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_UserTagList]'))
ALTER TABLE [dbo].[vc_UserTagList]  WITH CHECK ADD  CONSTRAINT [vc_UserTagList_vc_Tag] FOREIGN KEY([vc_TagID])
REFERENCES [dbo].[vc_Tag] ([vc_TagID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[vc_UserTagList_vc_Tag]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_UserTagList]'))
ALTER TABLE [dbo].[vc_UserTagList] CHECK CONSTRAINT [vc_UserTagList_vc_Tag]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[vc_UserTagList_vc_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_UserTagList]'))
ALTER TABLE [dbo].[vc_UserTagList]  WITH CHECK ADD  CONSTRAINT [vc_UserTagList_vc_User] FOREIGN KEY([vc_UserID])
REFERENCES [dbo].[vc_User] ([vc_UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[vc_UserTagList_vc_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_UserTagList]'))
ALTER TABLE [dbo].[vc_UserTagList] CHECK CONSTRAINT [vc_UserTagList_vc_User]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[vc_VidCast_vc_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_VidCast]'))
ALTER TABLE [dbo].[vc_VidCast]  WITH CHECK ADD  CONSTRAINT [vc_VidCast_vc_Status] FOREIGN KEY([vc_StatusID])
REFERENCES [dbo].[vc_Status] ([vc_StatusID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[vc_VidCast_vc_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_VidCast]'))
ALTER TABLE [dbo].[vc_VidCast] CHECK CONSTRAINT [vc_VidCast_vc_Status]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[vc_VidCast_vc_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_VidCast]'))
ALTER TABLE [dbo].[vc_VidCast]  WITH CHECK ADD  CONSTRAINT [vc_VidCast_vc_User] FOREIGN KEY([vc_UserID])
REFERENCES [dbo].[vc_User] ([vc_UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[vc_VidCast_vc_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_VidCast]'))
ALTER TABLE [dbo].[vc_VidCast] CHECK CONSTRAINT [vc_VidCast_vc_User]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[vc_VidCastTagList_vc_Tag]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_VidCastTagList]'))
ALTER TABLE [dbo].[vc_VidCastTagList]  WITH CHECK ADD  CONSTRAINT [vc_VidCastTagList_vc_Tag] FOREIGN KEY([vc_TagID])
REFERENCES [dbo].[vc_Tag] ([vc_TagID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[vc_VidCastTagList_vc_Tag]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_VidCastTagList]'))
ALTER TABLE [dbo].[vc_VidCastTagList] CHECK CONSTRAINT [vc_VidCastTagList_vc_Tag]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[vc_VidCastTagList_vc_VidCast]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_VidCastTagList]'))
ALTER TABLE [dbo].[vc_VidCastTagList]  WITH CHECK ADD  CONSTRAINT [vc_VidCastTagList_vc_VidCast] FOREIGN KEY([vc_VidCastID])
REFERENCES [dbo].[vc_VidCast] ([vc_VidCastID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[vc_VidCastTagList_vc_VidCast]') AND parent_object_id = OBJECT_ID(N'[dbo].[vc_VidCastTagList]'))
ALTER TABLE [dbo].[vc_VidCastTagList] CHECK CONSTRAINT [vc_VidCastTagList_vc_VidCast]
GO

DELETE vc_VidCastTagList where vc_VidCastID IN (select vc_VidCastID from vc_VidCast where vc_UserID IN (27, 28))
delete vc_VidCast where vc_UserID IN (27, 28)
DELETE vc_VidCastTagList where vc_TagID = 6