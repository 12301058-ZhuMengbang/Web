USE [OxcoderDatabase]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 11/06/2015 11:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Admin_ID] [uniqueidentifier] NOT NULL,
	[Admin_Name] [text] NOT NULL,
	[Admin_Password] [text] NOT NULL,
	[Admin_RoleId] [text] NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Admin_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Challenge]    Script Date: 11/06/2015 11:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Challenge](
	[Challenge_ID] [uniqueidentifier] NOT NULL,
	[Challenge_Name] [text] NULL,
	[Challenge_OwnerID] [uniqueidentifier] NOT NULL,
	[Challenge_Time] [datetime] NULL,
	[Challenge_Level] [smallint] NULL,
	[Challenge_Area] [text] NULL,
	[Challenge_Position] [text] NULL,
	[Challenge_EnTime] [text] NULL,
	[Challenge_Num] [int] NULL,
	[Challenge_Publish] [datetime] NOT NULL,
	[Challenge_State] [int] NOT NULL,
	[Challenge_Type] [int] NULL,
	[Challenge_Quiz_Sec] [uniqueidentifier] NULL,
	[Challenge_Quiz_Third] [uniqueidentifier] NULL,
	[Challenge_Quiz_First] [uniqueidentifier] NULL,
	[Challenge_Salary] [int] NULL,
 CONSTRAINT [PK_Challenge] PRIMARY KEY CLUSTERED 
(
	[Challenge_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Enterprice]    Script Date: 11/06/2015 11:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprice](
	[Enterprice_ID] [uniqueidentifier] NOT NULL,
	[Enterprice_Email] [text] NULL,
	[Enterprice_Password] [text] NOT NULL,
	[Enterprice_Location] [text] NULL,
	[Enterprice_Url] [text] NULL,
	[Enterprice_Scale] [text] NULL,
	[Enterprice_FullName] [text] NOT NULL,
	[Enterprice_ShortName] [text] NULL,
	[Enterprice_Logo] [text] NULL,
	[Enterprice_Introduction] [text] NULL,
	[Enterprice_Phone] [text] NULL,
	[Enterprice_Md5] [text] NULL,
	[Enterprice_State] [smallint] NOT NULL,
	[Enterprice_Check] [smallint] NOT NULL,
	[Enterprice_Challenge_Num] [int] NOT NULL,
	[Enterprice_Invite_Num] [int] NOT NULL,
 CONSTRAINT [PK_Enterprice] PRIMARY KEY CLUSTERED 
(
	[Enterprice_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 11/06/2015 11:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[Invoice_ID] [uniqueidentifier] NOT NULL,
	[Invoice_Head] [text] NULL,
	[Invoice_Content] [text] NULL,
	[Invoice_Type] [text] NULL,
	[Invocie_Address] [text] NULL,
	[Invoice_Tele] [text] NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[Invoice_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Package]    Script Date: 11/06/2015 11:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Package](
	[Package_ID] [uniqueidentifier] NOT NULL,
	[Package_Challenge] [int] NULL,
	[Package_Invite] [int] NULL,
 CONSTRAINT [PK_Package] PRIMARY KEY CLUSTERED 
(
	[Package_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pay]    Script Date: 11/06/2015 11:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pay](
	[Pay_ID] [uniqueidentifier] NOT NULL,
	[Pay_InvoiceID] [uniqueidentifier] NOT NULL,
	[Pay_PackageID] [uniqueidentifier] NOT NULL,
	[Pay_EntID] [uniqueidentifier] NOT NULL,
	[Pay_Money] [int] NULL,
	[Pay_Time] [datetime] NULL,
 CONSTRAINT [PK_Pay] PRIMARY KEY CLUSTERED 
(
	[Pay_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 11/06/2015 11:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[Quiz_ID] [uniqueidentifier] NOT NULL,
	[Quiz_Name] [text] NULL,
	[Quiz_Content] [text] NULL,
	[Quiz_Info] [text] NULL,
	[Quiz_Type] [text] NULL,
	[Quiz_Level] [smallint] NULL,
	[Quiz_OwnerID] [uniqueidentifier] NOT NULL,
	[Quiz_TestInfo] [text] NULL,
 CONSTRAINT [PK_Quiz] PRIMARY KEY CLUSTERED 
(
	[Quiz_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Test]    Script Date: 11/06/2015 11:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test](
	[Test_ID] [uniqueidentifier] NOT NULL,
	[Test_ChallengeID] [uniqueidentifier] NOT NULL,
	[Test_UserID] [uniqueidentifier] NOT NULL,
	[Test_Grade] [text] NULL,
	[Test_MaxGrade] [int] NULL,
	[Test_MaxCode] [text] NULL,
	[Test_LastCode] [text] NULL,
	[Test_State] [int] NULL,
 CONSTRAINT [PK_Test] PRIMARY KEY CLUSTERED 
(
	[Test_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 11/06/2015 11:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[User_ID] [uniqueidentifier] NOT NULL,
	[User_Email] [text] NULL,
	[User_Password] [text] NOT NULL,
	[User_Age] [int] NULL,
	[User_Sex] [smallint] NULL,
	[User_Name] [text] NOT NULL,
	[User_Level] [smallint] NULL,
	[User_Price] [text] NULL,
	[User_Phone] [text] NULL,
	[User_State] [text] NULL,
	[User_Md5] [text] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Challenge] ADD  CONSTRAINT [DF_Challenge_Challenge_Level]  DEFAULT ((0)) FOR [Challenge_Level]
GO
ALTER TABLE [dbo].[Challenge] ADD  CONSTRAINT [DF_Challenge_Challenge_Num]  DEFAULT ((0)) FOR [Challenge_Num]
GO
ALTER TABLE [dbo].[Challenge] ADD  CONSTRAINT [DF_Challenge_Challenge_State]  DEFAULT ((0)) FOR [Challenge_State]
GO
ALTER TABLE [dbo].[Enterprice] ADD  CONSTRAINT [DF_Enterprice_Enterprice_State]  DEFAULT ((0)) FOR [Enterprice_State]
GO
ALTER TABLE [dbo].[Enterprice] ADD  CONSTRAINT [DF_Enterprice_Enterprice_Check]  DEFAULT ((0)) FOR [Enterprice_Check]
GO
ALTER TABLE [dbo].[Enterprice] ADD  CONSTRAINT [DF_Enterprice_Enterprice_Challenge_Num]  DEFAULT ((1)) FOR [Enterprice_Challenge_Num]
GO
ALTER TABLE [dbo].[Enterprice] ADD  CONSTRAINT [DF_Enterprice_Enterprice_Invite_Num]  DEFAULT ((3)) FOR [Enterprice_Invite_Num]
GO
ALTER TABLE [dbo].[Quiz] ADD  CONSTRAINT [DF_Quiz_Quiz_Level]  DEFAULT ((0)) FOR [Quiz_Level]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_User_Level]  DEFAULT ((0)) FOR [User_Level]
GO
ALTER TABLE [dbo].[Challenge]  WITH CHECK ADD  CONSTRAINT [FK_Challenge_Enterprice] FOREIGN KEY([Challenge_OwnerID])
REFERENCES [dbo].[Enterprice] ([Enterprice_ID])
GO
ALTER TABLE [dbo].[Challenge] CHECK CONSTRAINT [FK_Challenge_Enterprice]
GO
ALTER TABLE [dbo].[Pay]  WITH CHECK ADD  CONSTRAINT [FK_Pay_Enterprice] FOREIGN KEY([Pay_ID])
REFERENCES [dbo].[Enterprice] ([Enterprice_ID])
GO
ALTER TABLE [dbo].[Pay] CHECK CONSTRAINT [FK_Pay_Enterprice]
GO
ALTER TABLE [dbo].[Pay]  WITH CHECK ADD  CONSTRAINT [FK_Pay_Invoice] FOREIGN KEY([Pay_InvoiceID])
REFERENCES [dbo].[Invoice] ([Invoice_ID])
GO
ALTER TABLE [dbo].[Pay] CHECK CONSTRAINT [FK_Pay_Invoice]
GO
ALTER TABLE [dbo].[Pay]  WITH CHECK ADD  CONSTRAINT [FK_Pay_Package] FOREIGN KEY([Pay_PackageID])
REFERENCES [dbo].[Package] ([Package_ID])
GO
ALTER TABLE [dbo].[Pay] CHECK CONSTRAINT [FK_Pay_Package]
GO
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD  CONSTRAINT [FK_Quiz_Admin] FOREIGN KEY([Quiz_OwnerID])
REFERENCES [dbo].[Admin] ([Admin_ID])
GO
ALTER TABLE [dbo].[Quiz] CHECK CONSTRAINT [FK_Quiz_Admin]
GO
ALTER TABLE [dbo].[Test]  WITH CHECK ADD  CONSTRAINT [FK_Test_Challenge] FOREIGN KEY([Test_ChallengeID])
REFERENCES [dbo].[Challenge] ([Challenge_ID])
GO
ALTER TABLE [dbo].[Test] CHECK CONSTRAINT [FK_Test_Challenge]
GO
ALTER TABLE [dbo].[Test]  WITH CHECK ADD  CONSTRAINT [FK_Test_User] FOREIGN KEY([Test_UserID])
REFERENCES [dbo].[User] ([User_ID])
GO
ALTER TABLE [dbo].[Test] CHECK CONSTRAINT [FK_Test_User]
GO
