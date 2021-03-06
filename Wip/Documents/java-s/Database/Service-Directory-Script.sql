USE [Service_Directory4.0]
GO
/****** Object:  Table [dbo].[User2]    Script Date: 03/26/2012 15:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User2](
	[UserID] [char](15) NOT NULL,
	[Account] [char](15) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Role] [char](15) NOT NULL,
	[Password] [char](15) NOT NULL,
 CONSTRAINT [PK_User2] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 03/26/2012 15:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Account] [char](15) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Role] [char](15) NOT NULL,
	[Password] [char](15) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country]    Script Date: 03/26/2012 15:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 03/26/2012 15:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[StatusActive] [bit] NOT NULL,
	[SurName] [nvarchar](50) NOT NULL,
	[MobilePhone] [char](15) NULL,
	[Email] [nvarchar](50) NULL,
	[ContactType] [nvarchar](50) NOT NULL,
	[KnowAs] [nvarchar](50) NULL,
	[OfficePhone] [char](15) NULL,
	[STHomePhone] [char](15) NULL,
	[ManagerName] [nvarchar](50) NULL,
	[BestContactMethod] [nvarchar](50) NULL,
	[JobRole] [nvarchar](50) NULL,
	[WorkBase] [nvarchar](50) NULL,
	[JobTitle] [nvarchar](50) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GovOfficeRegion]    Script Date: 03/26/2012 15:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GovOfficeRegion](
	[GovOfficeRegionID] [int] IDENTITY(1,1) NOT NULL,
	[GovOfficeRegionName] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_GovOfficeRegion] PRIMARY KEY CLUSTERED 
(
	[GovOfficeRegionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Premise]    Script Date: 03/26/2012 15:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Premise](
	[PremiseID] [int] IDENTITY(1,1) NOT NULL,
	[PremiseName] [nvarchar](50) NULL,
	[LocationName] [nvarchar](50) NOT NULL,
	[KnowAs] [nvarchar](50) NULL,
 CONSTRAINT [PK_Premise] PRIMARY KEY CLUSTERED 
(
	[PremiseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReferenceData]    Script Date: 03/26/2012 15:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReferenceData](
	[RefID] [int] IDENTITY(1,1) NOT NULL,
	[RefCode] [char](15) NOT NULL,
	[RefValue] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ReferenceData] PRIMARY KEY CLUSTERED 
(
	[RefID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Programme]    Script Date: 03/26/2012 15:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Programme](
	[ProgrammeID] [int] IDENTITY(1,1) NOT NULL,
	[ContactID] [int] NOT NULL,
	[ProgrammeName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Programme] PRIMARY KEY CLUSTERED 
(
	[ProgrammeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListItem]    Script Date: 03/26/2012 15:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListItem](
	[ItemID] [int] IDENTITY(1,1) NOT NULL,
	[GroupID] [int] NULL,
	[ItemName] [nvarchar](20) NULL,
 CONSTRAINT [PK_ListItem] PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[County]    Script Date: 03/26/2012 15:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[County](
	[CountyID] [int] IDENTITY(1,1) NOT NULL,
	[CountryID] [int] NOT NULL,
	[CountyName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_County] PRIMARY KEY CLUSTERED 
(
	[CountyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 03/26/2012 15:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ServiceID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceName] [nvarchar](50) NULL,
	[ShortDescript] [nvarchar](50) NULL,
	[SubType] [nvarchar](50) NULL,
	[ContactID] [int] NOT NULL,
	[ClientDescription] [nvarchar](50) NULL,
	[ServiceAttendance] [nvarchar](50) NULL,
	[ServiceStartExpected] [datetime] NULL,
	[ServiceStartDate] [datetime] NULL,
	[ServiceEndDate] [datetime] NULL,
	[StatusServiceExtendable] [bit] NULL,
	[StatusServiceActive] [bit] NULL,
	[ServiceFullDescription] [nvarchar](max) NULL,
	[DeptCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrustRegion]    Script Date: 03/26/2012 15:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrustRegion](
	[TrustRegionID] [int] IDENTITY(1,1) NOT NULL,
	[TrustRegionName] [nvarchar](50) NOT NULL,
	[TrustRegionDescription] [nvarchar](max) NOT NULL,
	[CountryID] [int] NOT NULL,
 CONSTRAINT [PK_TrustRegion] PRIMARY KEY CLUSTERED 
(
	[TrustRegionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrustDistrict]    Script Date: 03/26/2012 15:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrustDistrict](
	[TrustDistrictID] [int] IDENTITY(1,1) NOT NULL,
	[TrustDistrictName] [nvarchar](150) NOT NULL,
	[TrustDistrictDescription] [nvarchar](max) NOT NULL,
	[TrustRegionID] [int] NOT NULL,
 CONSTRAINT [PK_TrustDistrict] PRIMARY KEY CLUSTERED 
(
	[TrustDistrictID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Town]    Script Date: 03/26/2012 15:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Town](
	[TownID] [int] IDENTITY(1,1) NOT NULL,
	[CountyID] [int] NOT NULL,
	[TownName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Town] PRIMARY KEY CLUSTERED 
(
	[TownID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Premise_Service]    Script Date: 03/26/2012 15:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Premise_Service](
	[Pre_Ser_ID] [int] IDENTITY(1,1) NOT NULL,
	[PremiseID] [int] NULL,
	[ServiceID] [int] NULL,
 CONSTRAINT [PK_Premise_Service] PRIMARY KEY CLUSTERED 
(
	[Pre_Ser_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gov_County]    Script Date: 03/26/2012 15:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gov_County](
	[Gov_County_ID] [int] IDENTITY(1,1) NOT NULL,
	[GovOfficeRegionID] [int] NULL,
	[CountyID] [int] NULL,
 CONSTRAINT [PK_Gov_County] PRIMARY KEY CLUSTERED 
(
	[Gov_County_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 03/26/2012 15:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Address](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[PostCode] [char](15) NOT NULL,
	[TownID] [int] NOT NULL,
	[Ward] [nvarchar](50) NULL,
	[Borough] [nvarchar](50) NULL,
	[LocalAuthority] [nvarchar](50) NULL,
	[UnitaryAuthority] [nvarchar](50) NULL,
	[NHSAuthority] [nvarchar](50) NULL,
	[AddressLine1] [nvarchar](50) NOT NULL,
	[AddressLine2] [nvarchar](50) NULL,
	[AddressLine3] [nvarchar](50) NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Organisation]    Script Date: 03/26/2012 15:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Organisation](
	[OrgID] [int] IDENTITY(1,1) NOT NULL,
	[OrgName] [nvarchar](150) NOT NULL,
	[ContactID] [int] NOT NULL,
	[OrgShortDescription] [nvarchar](150) NOT NULL,
	[AddressID] [int] NOT NULL,
	[RefID] [int] NOT NULL,
	[SIC] [numeric](18, 0) NULL,
	[OrgFullDescription] [nvarchar](max) NULL,
	[Phone] [numeric](18, 0) NOT NULL,
	[Fax] [char](15) NULL,
	[Email] [nvarchar](50) NULL,
	[WebAddress] [nvarchar](50) NULL,
	[CharityNumber] [nvarchar](50) NULL,
	[CompanyNumber] [char](15) NULL,
	[GovOfficeRegionID] [int] NULL,
	[TrustRegionID] [int] NULL,
	[TrustDistrictID] [int] NULL,
	[StatusActive] [bit] NOT NULL,
	[StatusPreferred] [bit] NULL,
	[StatusExpression] [bit] NULL,
 CONSTRAINT [PK_Organisation] PRIMARY KEY CLUSTERED 
(
	[OrgID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SupportingMaterial]    Script Date: 03/26/2012 15:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupportingMaterial](
	[OrgID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Url] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Type] [nvarchar](50) NULL,
	[AddDate] [datetime] NOT NULL,
 CONSTRAINT [PK_SupportingMaterial_1] PRIMARY KEY CLUSTERED 
(
	[OrgID] ASC,
	[Url] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organistation_Service]    Script Date: 03/26/2012 15:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organistation_Service](
	[Org_Service_Id] [int] IDENTITY(1,1) NOT NULL,
	[OrgID] [int] NOT NULL,
	[ServiceID] [int] NOT NULL,
 CONSTRAINT [PK_Organistation_Service] PRIMARY KEY CLUSTERED 
(
	[Org_Service_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organistation_Programme]    Script Date: 03/26/2012 15:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organistation_Programme](
	[Org_Pro_Id] [int] IDENTITY(1,1) NOT NULL,
	[OrgID] [int] NULL,
	[ProgrammeID] [int] NULL,
 CONSTRAINT [PK_Organistation_Programme] PRIMARY KEY CLUSTERED 
(
	[Org_Pro_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemCheck]    Script Date: 03/26/2012 15:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemCheck](
	[ItemCheckID] [int] IDENTITY(1,1) NOT NULL,
	[OrgID] [int] NOT NULL,
	[Group1] [nvarchar](50) NULL,
	[Group2] [nvarchar](50) NULL,
	[Group3] [nvarchar](50) NULL,
	[Group4] [nvarchar](50) NULL,
	[Group5] [nvarchar](50) NULL,
	[Group6] [nvarchar](50) NULL,
	[Group7] [nvarchar](50) NULL,
 CONSTRAINT [PK_ItemCheck] PRIMARY KEY CLUSTERED 
(
	[ItemCheckID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Directorate]    Script Date: 03/26/2012 15:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Directorate](
	[DirectorateID] [int] IDENTITY(1,1) NOT NULL,
	[OrgID] [int] NOT NULL,
	[ContactID] [int] NOT NULL,
	[DirectorateName] [nvarchar](50) NOT NULL,
	[DirectorateShortDescription] [nvarchar](50) NULL,
	[DirectorateFullDescription] [nvarchar](max) NULL,
	[Phone] [char](15) NULL,
	[Fax] [char](15) NULL,
	[Email] [nvarchar](50) NULL,
	[WebAddress] [nvarchar](50) NULL,
	[CharityNumber] [nvarchar](50) NULL,
	[CompanyNumber] [char](15) NULL,
	[AddressID] [int] NOT NULL,
	[StatusActive] [bit] NOT NULL,
 CONSTRAINT [PK_Directorate] PRIMARY KEY CLUSTERED 
(
	[DirectorateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Department]    Script Date: 03/26/2012 15:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DirectorateID] [int] NOT NULL,
	[ContactID] [int] NULL,
	[DepartmentName] [nvarchar](50) NOT NULL,
	[DepartmentShortDescription] [nvarchar](50) NOT NULL,
	[AddressID] [int] NULL,
	[DepartmentFullDescription] [nvarchar](max) NULL,
	[Phone] [char](15) NULL,
	[Fax] [char](15) NULL,
	[Email] [nvarchar](50) NULL,
	[WebAddress] [nvarchar](50) NULL,
	[StatusActive] [bit] NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Team]    Script Date: 03/26/2012 15:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Team](
	[TeamID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[ContactID] [int] NOT NULL,
	[TeamName] [nvarchar](50) NOT NULL,
	[OrgID] [int] NULL,
	[AddressID] [int] NULL,
	[StatusActive] [bit] NOT NULL,
	[TeamShortDescription] [nvarchar](50) NULL,
	[TeamFullDescription] [nvarchar](max) NULL,
	[Phone] [char](15) NULL,
	[Fax] [char](15) NULL,
	[Email] [nvarchar](50) NULL,
	[WebAddress] [nvarchar](50) NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[TeamID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_Department_StatusActive]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF_Department_StatusActive]  DEFAULT ((1)) FOR [StatusActive]
GO
/****** Object:  Default [DF_Directorate_StatusActive]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Directorate] ADD  CONSTRAINT [DF_Directorate_StatusActive]  DEFAULT ((1)) FOR [StatusActive]
GO
/****** Object:  Default [DF_Organisation_StatusActive]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Organisation] ADD  CONSTRAINT [DF_Organisation_StatusActive]  DEFAULT ((1)) FOR [StatusActive]
GO
/****** Object:  Default [DF_Team_StatusActive]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Team] ADD  CONSTRAINT [DF_Team_StatusActive]  DEFAULT ((1)) FOR [StatusActive]
GO
/****** Object:  ForeignKey [FK_Address_Town]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Town] FOREIGN KEY([TownID])
REFERENCES [dbo].[Town] ([TownID])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Town]
GO
/****** Object:  ForeignKey [FK_County_Country]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[County]  WITH CHECK ADD  CONSTRAINT [FK_County_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[County] CHECK CONSTRAINT [FK_County_Country]
GO
/****** Object:  ForeignKey [FK_Department_Contact1]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_Contact1] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_Contact1]
GO
/****** Object:  ForeignKey [FK_Department_Directorate]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_Directorate] FOREIGN KEY([DirectorateID])
REFERENCES [dbo].[Directorate] ([DirectorateID])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_Directorate]
GO
/****** Object:  ForeignKey [FK_Directorate_Contact]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Directorate]  WITH CHECK ADD  CONSTRAINT [FK_Directorate_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Directorate] CHECK CONSTRAINT [FK_Directorate_Contact]
GO
/****** Object:  ForeignKey [FK_Directorate_Organisation]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Directorate]  WITH CHECK ADD  CONSTRAINT [FK_Directorate_Organisation] FOREIGN KEY([OrgID])
REFERENCES [dbo].[Organisation] ([OrgID])
GO
ALTER TABLE [dbo].[Directorate] CHECK CONSTRAINT [FK_Directorate_Organisation]
GO
/****** Object:  ForeignKey [FK_Gov_County_County]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Gov_County]  WITH CHECK ADD  CONSTRAINT [FK_Gov_County_County] FOREIGN KEY([CountyID])
REFERENCES [dbo].[County] ([CountyID])
GO
ALTER TABLE [dbo].[Gov_County] CHECK CONSTRAINT [FK_Gov_County_County]
GO
/****** Object:  ForeignKey [FK_Gov_County_GovOfficeRegion]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Gov_County]  WITH CHECK ADD  CONSTRAINT [FK_Gov_County_GovOfficeRegion] FOREIGN KEY([GovOfficeRegionID])
REFERENCES [dbo].[GovOfficeRegion] ([GovOfficeRegionID])
GO
ALTER TABLE [dbo].[Gov_County] CHECK CONSTRAINT [FK_Gov_County_GovOfficeRegion]
GO
/****** Object:  ForeignKey [FK_ItemCheck_Organisation]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[ItemCheck]  WITH CHECK ADD  CONSTRAINT [FK_ItemCheck_Organisation] FOREIGN KEY([OrgID])
REFERENCES [dbo].[Organisation] ([OrgID])
GO
ALTER TABLE [dbo].[ItemCheck] CHECK CONSTRAINT [FK_ItemCheck_Organisation]
GO
/****** Object:  ForeignKey [FK_Organisation_Address]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Organisation]  WITH CHECK ADD  CONSTRAINT [FK_Organisation_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([AddressID])
GO
ALTER TABLE [dbo].[Organisation] CHECK CONSTRAINT [FK_Organisation_Address]
GO
/****** Object:  ForeignKey [FK_Organisation_Contact]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Organisation]  WITH CHECK ADD  CONSTRAINT [FK_Organisation_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Organisation] CHECK CONSTRAINT [FK_Organisation_Contact]
GO
/****** Object:  ForeignKey [FK_Organisation_GovOfficeRegion]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Organisation]  WITH CHECK ADD  CONSTRAINT [FK_Organisation_GovOfficeRegion] FOREIGN KEY([GovOfficeRegionID])
REFERENCES [dbo].[GovOfficeRegion] ([GovOfficeRegionID])
GO
ALTER TABLE [dbo].[Organisation] CHECK CONSTRAINT [FK_Organisation_GovOfficeRegion]
GO
/****** Object:  ForeignKey [FK_Organisation_ReferenceData]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Organisation]  WITH CHECK ADD  CONSTRAINT [FK_Organisation_ReferenceData] FOREIGN KEY([RefID])
REFERENCES [dbo].[ReferenceData] ([RefID])
GO
ALTER TABLE [dbo].[Organisation] CHECK CONSTRAINT [FK_Organisation_ReferenceData]
GO
/****** Object:  ForeignKey [FK_Organisation_TrustDistrict]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Organisation]  WITH CHECK ADD  CONSTRAINT [FK_Organisation_TrustDistrict] FOREIGN KEY([TrustDistrictID])
REFERENCES [dbo].[TrustDistrict] ([TrustDistrictID])
GO
ALTER TABLE [dbo].[Organisation] CHECK CONSTRAINT [FK_Organisation_TrustDistrict]
GO
/****** Object:  ForeignKey [FK_Organisation_TrustRegion]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Organisation]  WITH CHECK ADD  CONSTRAINT [FK_Organisation_TrustRegion] FOREIGN KEY([TrustRegionID])
REFERENCES [dbo].[TrustRegion] ([TrustRegionID])
GO
ALTER TABLE [dbo].[Organisation] CHECK CONSTRAINT [FK_Organisation_TrustRegion]
GO
/****** Object:  ForeignKey [FK_Organistation_Programme_Organisation]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Organistation_Programme]  WITH CHECK ADD  CONSTRAINT [FK_Organistation_Programme_Organisation] FOREIGN KEY([OrgID])
REFERENCES [dbo].[Organisation] ([OrgID])
GO
ALTER TABLE [dbo].[Organistation_Programme] CHECK CONSTRAINT [FK_Organistation_Programme_Organisation]
GO
/****** Object:  ForeignKey [FK_Organistation_Programme_Programme]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Organistation_Programme]  WITH CHECK ADD  CONSTRAINT [FK_Organistation_Programme_Programme] FOREIGN KEY([ProgrammeID])
REFERENCES [dbo].[Programme] ([ProgrammeID])
GO
ALTER TABLE [dbo].[Organistation_Programme] CHECK CONSTRAINT [FK_Organistation_Programme_Programme]
GO
/****** Object:  ForeignKey [FK_Organistation_Service_Organisation]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Organistation_Service]  WITH CHECK ADD  CONSTRAINT [FK_Organistation_Service_Organisation] FOREIGN KEY([OrgID])
REFERENCES [dbo].[Organisation] ([OrgID])
GO
ALTER TABLE [dbo].[Organistation_Service] CHECK CONSTRAINT [FK_Organistation_Service_Organisation]
GO
/****** Object:  ForeignKey [FK_Organistation_Service_Service]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Organistation_Service]  WITH CHECK ADD  CONSTRAINT [FK_Organistation_Service_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[Organistation_Service] CHECK CONSTRAINT [FK_Organistation_Service_Service]
GO
/****** Object:  ForeignKey [FK_Premise_Service_Premise]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Premise_Service]  WITH CHECK ADD  CONSTRAINT [FK_Premise_Service_Premise] FOREIGN KEY([PremiseID])
REFERENCES [dbo].[Premise] ([PremiseID])
GO
ALTER TABLE [dbo].[Premise_Service] CHECK CONSTRAINT [FK_Premise_Service_Premise]
GO
/****** Object:  ForeignKey [FK_Premise_Service_Service]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Premise_Service]  WITH CHECK ADD  CONSTRAINT [FK_Premise_Service_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[Premise_Service] CHECK CONSTRAINT [FK_Premise_Service_Service]
GO
/****** Object:  ForeignKey [FK_Service_Contact]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_Contact]
GO
/****** Object:  ForeignKey [FK_SupportingMaterial_Organisation]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[SupportingMaterial]  WITH CHECK ADD  CONSTRAINT [FK_SupportingMaterial_Organisation] FOREIGN KEY([OrgID])
REFERENCES [dbo].[Organisation] ([OrgID])
GO
ALTER TABLE [dbo].[SupportingMaterial] CHECK CONSTRAINT [FK_SupportingMaterial_Organisation]
GO
/****** Object:  ForeignKey [FK_SupportingMaterial_User]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[SupportingMaterial]  WITH CHECK ADD  CONSTRAINT [FK_SupportingMaterial_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[SupportingMaterial] CHECK CONSTRAINT [FK_SupportingMaterial_User]
GO
/****** Object:  ForeignKey [FK_Team_Contact]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK_Team_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK_Team_Contact]
GO
/****** Object:  ForeignKey [FK_Team_Department]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK_Team_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK_Team_Department]
GO
/****** Object:  ForeignKey [FK_Town_County1]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[Town]  WITH CHECK ADD  CONSTRAINT [FK_Town_County1] FOREIGN KEY([CountyID])
REFERENCES [dbo].[County] ([CountyID])
GO
ALTER TABLE [dbo].[Town] CHECK CONSTRAINT [FK_Town_County1]
GO
/****** Object:  ForeignKey [FK_TrustDistrict_TrustRegion]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[TrustDistrict]  WITH CHECK ADD  CONSTRAINT [FK_TrustDistrict_TrustRegion] FOREIGN KEY([TrustRegionID])
REFERENCES [dbo].[TrustRegion] ([TrustRegionID])
GO
ALTER TABLE [dbo].[TrustDistrict] CHECK CONSTRAINT [FK_TrustDistrict_TrustRegion]
GO
/****** Object:  ForeignKey [FK_TrustRegion_Country1]    Script Date: 03/26/2012 15:05:21 ******/
ALTER TABLE [dbo].[TrustRegion]  WITH CHECK ADD  CONSTRAINT [FK_TrustRegion_Country1] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[TrustRegion] CHECK CONSTRAINT [FK_TrustRegion_Country1]
GO
