USE [19ip29]
GO
/****** Object:  Table [dbo].[Owners]    Script Date: 06.05.2022 9:19:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owners](
	[ID Owner] [int] NOT NULL,
	[Full name] [nvarchar](50) NOT NULL,
	[The address] [nvarchar](50) NOT NULL,
	[Telephone] [int] NOT NULL,
 CONSTRAINT [PK_Owners] PRIMARY KEY CLUSTERED 
(
	[ID Owner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 06.05.2022 9:20:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profiles](
	[Profile] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Profiles] PRIMARY KEY CLUSTERED 
(
	[Profile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shares]    Script Date: 06.05.2022 9:20:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shares](
	[Share] [int] NOT NULL,
	[Owner] [nvarchar](50) NOT NULL,
	[Score] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Shares] PRIMARY KEY CLUSTERED 
(
	[Share] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 06.05.2022 9:20:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[ID Suppliers] [int] NOT NULL,
	[Organization] [nvarchar](50) NOT NULL,
	[The address] [nvarchar](50) NOT NULL,
	[Telephone] [int] NOT NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[ID Suppliers] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplies]    Script Date: 06.05.2022 9:20:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplies](
	[ID Supplies] [int] NOT NULL,
	[Delivery size] [int] NOT NULL,
	[The supplier] [nvarchar](50) NOT NULL,
	[Shop] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Supplies] PRIMARY KEY CLUSTERED 
(
	[ID Supplies] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[The shops]    Script Date: 06.05.2022 9:20:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[The shops](
	[ID Store] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[The address] [nvarchar](50) NOT NULL,
	[Telephone] [int] NOT NULL,
	[Authorized capital] [nvarchar](50) NOT NULL,
	[Profile] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_The shops] PRIMARY KEY CLUSTERED 
(
	[ID Store] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Owners]  WITH CHECK ADD  CONSTRAINT [FK_Owners_Shares] FOREIGN KEY([Telephone])
REFERENCES [dbo].[Shares] ([Share])
GO
ALTER TABLE [dbo].[Owners] CHECK CONSTRAINT [FK_Owners_Shares]
GO
ALTER TABLE [dbo].[Supplies]  WITH CHECK ADD  CONSTRAINT [FK_Supplies_Suppliers] FOREIGN KEY([Delivery size])
REFERENCES [dbo].[Suppliers] ([ID Suppliers])
GO
ALTER TABLE [dbo].[Supplies] CHECK CONSTRAINT [FK_Supplies_Suppliers]
GO
ALTER TABLE [dbo].[The shops]  WITH CHECK ADD  CONSTRAINT [FK_The shops_Profiles] FOREIGN KEY([Name])
REFERENCES [dbo].[Profiles] ([Profile])
GO
ALTER TABLE [dbo].[The shops] CHECK CONSTRAINT [FK_The shops_Profiles]
GO
ALTER TABLE [dbo].[The shops]  WITH CHECK ADD  CONSTRAINT [FK_The shops_Shares] FOREIGN KEY([Telephone])
REFERENCES [dbo].[Shares] ([Share])
GO
ALTER TABLE [dbo].[The shops] CHECK CONSTRAINT [FK_The shops_Shares]
GO
ALTER TABLE [dbo].[The shops]  WITH CHECK ADD  CONSTRAINT [FK_The shops_Supplies] FOREIGN KEY([Telephone])
REFERENCES [dbo].[Supplies] ([ID Supplies])
GO
ALTER TABLE [dbo].[The shops] CHECK CONSTRAINT [FK_The shops_Supplies]
GO
