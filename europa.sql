USE [europa]
GO
/****** Object:  User [demo]    Script Date: 08/16/2012 14:59:01 ******/
CREATE USER [demo] FOR LOGIN [demo] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[members]    Script Date: 08/16/2012 14:59:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[members](
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[secretquestion_type] [varchar](50) NULL,
	[secretquestion_answer] [varchar](50) NULL,
	[name_prefix] [varchar](50) NULL,
	[name_first] [varchar](50) NULL,
	[name_middle] [varchar](50) NULL,
	[name_last] [varchar](50) NULL,
	[address_line1] [varchar](50) NULL,
	[address_city] [varchar](50) NULL,
	[address_state] [varchar](50) NULL,
	[address_zip] [varchar](50) NULL,
	[address_country] [varchar](50) NULL,
	[phone_number] [varchar](50) NULL,
	[phone_extension] [varchar](50) NULL,
	[registration_datetime] [datetime] NULL,
	[registration_ipaddress] [varchar](50) NULL,
	[registration_approvalstatus] [varchar](50) NULL,
	[comments] [varchar](max) NULL,
	[email] [varchar](50) NULL,
	[email_offers] [bit] NULL,
	[company] [varchar](50) NULL,
	[resellertype] [varchar](50) NULL,
	[taxid] [varchar](50) NULL,
	[resalecertificate] [varchar](50) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[existing_customer] [varchar](50) NULL,
	[existing_salesrep] [varchar](50) NULL,
	[existing_customernum] [varchar](50) NULL,
 CONSTRAINT [PK_members] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[members] ON
INSERT [dbo].[members] ([username], [password], [secretquestion_type], [secretquestion_answer], [name_prefix], [name_first], [name_middle], [name_last], [address_line1], [address_city], [address_state], [address_zip], [address_country], [phone_number], [phone_extension], [registration_datetime], [registration_ipaddress], [registration_approvalstatus], [comments], [email], [email_offers], [company], [resellertype], [taxid], [resalecertificate], [id], [existing_customer], [existing_salesrep], [existing_customernum]) VALUES (N'sean.herrala', N'ff', N'Pet Name', NULL, NULL, N'Sean', NULL, N'Herrala', NULL, NULL, N'N/A', NULL, N'United States', NULL, NULL, NULL, NULL, NULL, NULL, N'sean@sean.com', 0, NULL, N'Bike Store', NULL, NULL, 26, N'0', N'N/A', NULL)
INSERT [dbo].[members] ([username], [password], [secretquestion_type], [secretquestion_answer], [name_prefix], [name_first], [name_middle], [name_last], [address_line1], [address_city], [address_state], [address_zip], [address_country], [phone_number], [phone_extension], [registration_datetime], [registration_ipaddress], [registration_approvalstatus], [comments], [email], [email_offers], [company], [resellertype], [taxid], [resalecertificate], [id], [existing_customer], [existing_salesrep], [existing_customernum]) VALUES (N'sean.herrala2', N'ee', N'Pet Name', NULL, NULL, N'Sean', NULL, N'Herrala', NULL, NULL, N'N/A', NULL, N'United States', NULL, NULL, NULL, NULL, N'Disapprove', NULL, N'bob@bob.com', 0, NULL, N'Bike Store', NULL, NULL, 27, N'0', N'N/A', NULL)
INSERT [dbo].[members] ([username], [password], [secretquestion_type], [secretquestion_answer], [name_prefix], [name_first], [name_middle], [name_last], [address_line1], [address_city], [address_state], [address_zip], [address_country], [phone_number], [phone_extension], [registration_datetime], [registration_ipaddress], [registration_approvalstatus], [comments], [email], [email_offers], [company], [resellertype], [taxid], [resalecertificate], [id], [existing_customer], [existing_salesrep], [existing_customernum]) VALUES (N'myUser', N'pass', N'Pet Name', N'Rex', N'Mr.', N'Sean''a', N'E', N'Bobberson', N'199 Park Rd', N'Charlotte', N'AZ', N'28209', N'United States', N'89545.34342', NULL, NULL, NULL, NULL, N'Cool', N'bingo@nameo.net', 1, N'Timbo', N'Gym', N'432432', N'453434', 29, N'1', N'Terry Tate', N'4344')
SET IDENTITY_INSERT [dbo].[members] OFF
