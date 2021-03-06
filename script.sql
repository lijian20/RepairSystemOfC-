USE [RepairSystem]
GO
/****** Object:  Table [dbo].[user_info]    Script Date: 12/31/2019 10:34:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_info](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[userName] [char](10) NULL,
	[userPwd] [char](10) NULL,
	[roles] [char](10) NULL,
 CONSTRAINT [PK_USER_INFO] PRIMARY KEY NONCLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[repairtable]    Script Date: 12/31/2019 10:34:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[repairtable](
	[repairId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[repairContent] [char](1000) NULL,
	[repairDate] [date] NULL,
	[repairStatus] [char](1000) NULL,
	[repairAddress] [char](1000) NULL,
	[repairType] [char](1000) NULL,
	[repairCount] [int] NULL,
 CONSTRAINT [PK_REPAIRTABLE] PRIMARY KEY NONCLUSTERED 
(
	[repairId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_REPAIRTA_REFERENCE_USER_INF]    Script Date: 12/31/2019 10:34:56 ******/
ALTER TABLE [dbo].[repairtable]  WITH CHECK ADD  CONSTRAINT [FK_REPAIRTA_REFERENCE_USER_INF] FOREIGN KEY([userId])
REFERENCES [dbo].[user_info] ([userId])
GO
ALTER TABLE [dbo].[repairtable] CHECK CONSTRAINT [FK_REPAIRTA_REFERENCE_USER_INF]
GO


INSERT [dbo].[user_info] ([userId], [userName], [userPwd], [roles]) VALUES (1, N'admin     ', N'admin     ', N'后勤老师  ')

