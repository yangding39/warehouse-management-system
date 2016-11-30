USE [wms]
GO
/****** Object:  Table [dbo].[Item_Users]    Script Date: 11/28/2016 00:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item_Users](
	[users_ID] [char](5) NOT NULL,
	[users_password] [char](15) NOT NULL,
	[users_name] [char](10) NOT NULL,
	[users_identity] [char](10) NULL,
	[users_phone] [char](20) NULL,
	[users_sex] [char](2) NULL,
 CONSTRAINT [PK__Users__EAA0ED737F60ED59] PRIMARY KEY CLUSTERED 
(
	[users_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Item_Users] ([users_ID], [users_password], [users_name], [users_identity], [users_phone], [users_sex]) VALUES (N'10000', N'123456         ', N'admin     ', N'admin     ', N'true                ', N'男')
INSERT [dbo].[Item_Users] ([users_ID], [users_password], [users_name], [users_identity], [users_phone], [users_sex]) VALUES (N'10001', N'123456         ', N'八云蓝    ', N'admin     ', N'111                 ', N'女')
INSERT [dbo].[Item_Users] ([users_ID], [users_password], [users_name], [users_identity], [users_phone], [users_sex]) VALUES (N'10002', N'123456         ', N'辉夜      ', N'emp       ', N'111                 ', N'女')
INSERT [dbo].[Item_Users] ([users_ID], [users_password], [users_name], [users_identity], [users_phone], [users_sex]) VALUES (N'10003', N'123456         ', N'灵梦      ', N'emp       ', N'111                 ', N'女')
INSERT [dbo].[Item_Users] ([users_ID], [users_password], [users_name], [users_identity], [users_phone], [users_sex]) VALUES (N'10008', N'123456         ', N'admin     ', N'admin     ', N'admin               ', N'男')
INSERT [dbo].[Item_Users] ([users_ID], [users_password], [users_name], [users_identity], [users_phone], [users_sex]) VALUES (N'20001', N'123456         ', N'铃仙      ', N'emp       ', N'111                 ', N'女')
INSERT [dbo].[Item_Users] ([users_ID], [users_password], [users_name], [users_identity], [users_phone], [users_sex]) VALUES (N'20002', N'123456         ', N'幽幽子    ', N'ROLE_USER ', N'111                 ', N'女')
INSERT [dbo].[Item_Users] ([users_ID], [users_password], [users_name], [users_identity], [users_phone], [users_sex]) VALUES (N'20003', N'123456         ', N'9         ', N'ROLE_USER ', N'111                 ', N'女')
/****** Object:  Table [dbo].[Item_UMessage]    Script Date: 11/28/2016 00:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item_UMessage](
	[message_ID] [int] IDENTITY(1,1) NOT NULL,
	[message_type] [char](20) NOT NULL,
	[message_content] [text] NOT NULL,
	[message_date] [datetime] NOT NULL,
	[message_send_ID] [char](13) NOT NULL,
	[message_receive_ID] [char](13) NOT NULL,
	[message_state] [char](1) NOT NULL,
	[message_title] [char](40) NOT NULL,
 CONSTRAINT [PK__CMessage__0BBC6AEE4316F928] PRIMARY KEY CLUSTERED 
(
	[message_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Item_UMessage] ON
INSERT [dbo].[Item_UMessage] ([message_ID], [message_type], [message_content], [message_date], [message_send_ID], [message_receive_ID], [message_state], [message_title]) VALUES (11, N'11                  ', N'11', CAST(0x0000A6C201179DC5 AS DateTime), N'11           ', N'10001        ', N'1', N'11                                      ')
INSERT [dbo].[Item_UMessage] ([message_ID], [message_type], [message_content], [message_date], [message_send_ID], [message_receive_ID], [message_state], [message_title]) VALUES (12, N'type44              ', N'444444                                                                                                                                                                                                  ', CAST(0x0000A6B500C5FCB0 AS DateTime), N'sendid       ', N'admin        ', N'0', N'111                                     ')
SET IDENTITY_INSERT [dbo].[Item_UMessage] OFF
/****** Object:  Table [dbo].[Item_SLog]    Script Date: 11/28/2016 00:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item_SLog](
	[log_ID] [int] IDENTITY(1,1) NOT NULL,
	[log_type] [char](20) NOT NULL,
	[operation_ID] [char](13) NULL,
	[log_date] [datetime] NOT NULL,
	[log_level] [char](10) NOT NULL,
	[log_table] [char](50) NULL,
	[log_info] [text] NOT NULL,
	[log_annonation] [text] NULL,
 CONSTRAINT [PK__SLog__9E18EB084F7CD00D] PRIMARY KEY CLUSTERED 
(
	[log_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Item_SDictionary]    Script Date: 11/28/2016 00:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item_SDictionary](
	[field] [char](30) NOT NULL,
	[_table] [char](50) NOT NULL,
	[_index] [int] NOT NULL,
	[_indexlength] [int] NOT NULL,
 CONSTRAINT [PK__SDiction__0A24B6EC76969D2E] PRIMARY KEY CLUSTERED 
(
	[field] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Item_SDictionary] ([field], [_table], [_index], [_indexlength]) VALUES (N'020                           ', N'Item                                              ', 6, 5)
INSERT [dbo].[Item_SDictionary] ([field], [_table], [_index], [_indexlength]) VALUES (N'021                           ', N'Item                                              ', 3, 5)
INSERT [dbo].[Item_SDictionary] ([field], [_table], [_index], [_indexlength]) VALUES (N'022                           ', N'Item                                              ', 13, 5)
INSERT [dbo].[Item_SDictionary] ([field], [_table], [_index], [_indexlength]) VALUES (N'023                           ', N'Item                                              ', 4, 5)
INSERT [dbo].[Item_SDictionary] ([field], [_table], [_index], [_indexlength]) VALUES (N'024                           ', N'Item                                              ', 1, 5)
INSERT [dbo].[Item_SDictionary] ([field], [_table], [_index], [_indexlength]) VALUES (N'025                           ', N'Item                                              ', 1, 5)
INSERT [dbo].[Item_SDictionary] ([field], [_table], [_index], [_indexlength]) VALUES (N'026                           ', N'Item                                              ', 1, 5)
INSERT [dbo].[Item_SDictionary] ([field], [_table], [_index], [_indexlength]) VALUES (N'027                           ', N'Item                                              ', 1, 5)
INSERT [dbo].[Item_SDictionary] ([field], [_table], [_index], [_indexlength]) VALUES (N'028                           ', N'Item                                              ', 1, 5)
INSERT [dbo].[Item_SDictionary] ([field], [_table], [_index], [_indexlength]) VALUES (N'029                           ', N'Item                                              ', 1, 5)
INSERT [dbo].[Item_SDictionary] ([field], [_table], [_index], [_indexlength]) VALUES (N'040                           ', N'Item                                              ', 1, 5)
INSERT [dbo].[Item_SDictionary] ([field], [_table], [_index], [_indexlength]) VALUES (N'041                           ', N'Item                                              ', 1, 5)
INSERT [dbo].[Item_SDictionary] ([field], [_table], [_index], [_indexlength]) VALUES (N'042                           ', N'Item                                              ', 1, 5)
INSERT [dbo].[Item_SDictionary] ([field], [_table], [_index], [_indexlength]) VALUES (N'043                           ', N'Item                                              ', 1, 5)
INSERT [dbo].[Item_SDictionary] ([field], [_table], [_index], [_indexlength]) VALUES (N'044                           ', N'Item                                              ', 1, 5)
INSERT [dbo].[Item_SDictionary] ([field], [_table], [_index], [_indexlength]) VALUES (N'045                           ', N'Item                                              ', 1, 5)
INSERT [dbo].[Item_SDictionary] ([field], [_table], [_index], [_indexlength]) VALUES (N'046                           ', N'Item                                              ', 1, 5)
INSERT [dbo].[Item_SDictionary] ([field], [_table], [_index], [_indexlength]) VALUES (N'047                           ', N'Item                                              ', 1, 5)
INSERT [dbo].[Item_SDictionary] ([field], [_table], [_index], [_indexlength]) VALUES (N'048                           ', N'Item                                              ', 1, 5)
INSERT [dbo].[Item_SDictionary] ([field], [_table], [_index], [_indexlength]) VALUES (N'049                           ', N'Item                                              ', 1, 5)
INSERT [dbo].[Item_SDictionary] ([field], [_table], [_index], [_indexlength]) VALUES (N'application_ID                ', N'Item_application                                  ', 100, 3)
INSERT [dbo].[Item_SDictionary] ([field], [_table], [_index], [_indexlength]) VALUES (N'borrow_ID                     ', N'Item_borrow                                       ', 100, 3)
INSERT [dbo].[Item_SDictionary] ([field], [_table], [_index], [_indexlength]) VALUES (N'company_ID                    ', N'Item_company                                      ', 6, 4)
INSERT [dbo].[Item_SDictionary] ([field], [_table], [_index], [_indexlength]) VALUES (N'out_ID                        ', N'Item_out_storage                                  ', 100, 3)
INSERT [dbo].[Item_SDictionary] ([field], [_table], [_index], [_indexlength]) VALUES (N'storage_ID                    ', N'Item_ in_storage                                  ', 111, 3)
/****** Object:  Table [dbo].[Item_in_operation]    Script Date: 11/28/2016 00:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item_in_operation](
	[storage_ID] [char](12) NOT NULL,
	[storage_time] [datetime] NULL,
	[operation_ID] [char](5) NULL,
 CONSTRAINT [PK__Item_in___AB521872173876EA] PRIMARY KEY CLUSTERED 
(
	[storage_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Item_in_operation] ([storage_ID], [storage_time], [operation_ID]) VALUES (N'201611211000', CAST(0x0000A6C500000000 AS DateTime), N'10000')
INSERT [dbo].[Item_in_operation] ([storage_ID], [storage_time], [operation_ID]) VALUES (N'201611221100', CAST(0x0000A6C600000000 AS DateTime), N'10001')
INSERT [dbo].[Item_in_operation] ([storage_ID], [storage_time], [operation_ID]) VALUES (N'201611241101', CAST(0x0000A6C800000000 AS DateTime), N'10001')
INSERT [dbo].[Item_in_operation] ([storage_ID], [storage_time], [operation_ID]) VALUES (N'201611241102', CAST(0x0000A6C800000000 AS DateTime), N'10001')
INSERT [dbo].[Item_in_operation] ([storage_ID], [storage_time], [operation_ID]) VALUES (N'201611261103', CAST(0x0000A6CA00000000 AS DateTime), N'10001')
INSERT [dbo].[Item_in_operation] ([storage_ID], [storage_time], [operation_ID]) VALUES (N'201611261104', CAST(0x0000A6CA00000000 AS DateTime), N'10001')
INSERT [dbo].[Item_in_operation] ([storage_ID], [storage_time], [operation_ID]) VALUES (N'201611261105', CAST(0x0000A6CA00000000 AS DateTime), N'10001')
INSERT [dbo].[Item_in_operation] ([storage_ID], [storage_time], [operation_ID]) VALUES (N'201611261106', CAST(0x0000A6CA00000000 AS DateTime), N'10001')
INSERT [dbo].[Item_in_operation] ([storage_ID], [storage_time], [operation_ID]) VALUES (N'201611271107', CAST(0x0000A6CB00000000 AS DateTime), N'10001')
INSERT [dbo].[Item_in_operation] ([storage_ID], [storage_time], [operation_ID]) VALUES (N'201611271108', CAST(0x0000A6CB00000000 AS DateTime), N'10001')
INSERT [dbo].[Item_in_operation] ([storage_ID], [storage_time], [operation_ID]) VALUES (N'201611271109', CAST(0x0000A6CB00000000 AS DateTime), N'10001')
INSERT [dbo].[Item_in_operation] ([storage_ID], [storage_time], [operation_ID]) VALUES (N'201611271110', CAST(0x0000A6CB00000000 AS DateTime), N'10001')
/****** Object:  Table [dbo].[Item_company]    Script Date: 11/28/2016 00:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item_company](
	[company_ID] [char](4) NOT NULL,
	[company_name] [char](50) NOT NULL,
	[company_phone] [char](20) NULL,
	[company_address] [char](100) NULL,
 CONSTRAINT [PK__Item_com__3E27767D0425A276] PRIMARY KEY CLUSTERED 
(
	[company_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Item_company] ([company_ID], [company_name], [company_phone], [company_address]) VALUES (N'0001', N'test                                              ', NULL, NULL)
INSERT [dbo].[Item_company] ([company_ID], [company_name], [company_phone], [company_address]) VALUES (N'0002', N'test1                                             ', NULL, NULL)
INSERT [dbo].[Item_company] ([company_ID], [company_name], [company_phone], [company_address]) VALUES (N'0003', N'test2                                             ', NULL, NULL)
INSERT [dbo].[Item_company] ([company_ID], [company_name], [company_phone], [company_address]) VALUES (N'0004', N'test3                                             ', NULL, NULL)
INSERT [dbo].[Item_company] ([company_ID], [company_name], [company_phone], [company_address]) VALUES (N'0005', N'test4                                             ', NULL, NULL)
/****** Object:  Table [dbo].[Item_category]    Script Date: 11/28/2016 00:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item_category](
	[category_ID] [char](3) NOT NULL,
	[category_name] [char](20) NOT NULL,
 CONSTRAINT [PK__Item_cat__D5B1EDEC07F6335A] PRIMARY KEY CLUSTERED 
(
	[category_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'001', N'办公用品,文具       ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'002', N'办公用品,耗材       ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'003', N'办公用品,其他       ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'004', N'食品                ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'005', N'药品                ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'006', N'服装                ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'007', N'课本                ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'008', N'书籍                ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'009', N'体育用品            ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'010', N'实验仪器(一般)      ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'011', N'化学试剂            ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'012', N'其他                ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'013', N'P                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'014', N'P                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'015', N'P                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'016', N'P                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'017', N'P                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'018', N'P                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'019', N'P                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'020', N'大型电子产品A       ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'021', N'大型实验器材A       ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'022', N'大型体育器械A       ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'023', N'课座椅A             ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'024', N'大型办公用品A       ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'025', N'办公用品,文具A      ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'026', N'A                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'027', N'A                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'028', N'A                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'029', N'A                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'030', N'P                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'031', N'P                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'032', N'P                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'033', N'P                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'034', N'P                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'035', N'P                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'036', N'P                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'037', N'P                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'038', N'P                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'039', N'P                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'040', N'A                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'041', N'A                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'042', N'A                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'043', N'A                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'044', N'A                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'045', N'A                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'046', N'A                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'047', N'A                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'048', N'A                   ')
INSERT [dbo].[Item_category] ([category_ID], [category_name]) VALUES (N'049', N'temp                ')
/****** Object:  Table [dbo].[Item_borrow_operation]    Script Date: 11/28/2016 00:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item_borrow_operation](
	[borrow_ID] [char](12) NOT NULL,
	[users_ID] [char](13) NOT NULL,
	[examine_ID] [char](5) NULL,
	[states] [char](10) NOT NULL,
	[states_time] [datetime] NULL,
	[return_operation_ID] [char](5) NULL,
	[return_text] [char](100) NULL,
 CONSTRAINT [PK__Item_bor__262C539824927208] PRIMARY KEY CLUSTERED 
(
	[borrow_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Item_borrow_operation] ([borrow_ID], [users_ID], [examine_ID], [states], [states_time], [return_operation_ID], [return_text]) VALUES (N'11          ', N'1111         ', N'11111', N'111       ', CAST(0x0000A65C00000000 AS DateTime), NULL, NULL)
/****** Object:  Table [dbo].[Item_application_operation]    Script Date: 11/28/2016 00:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item_application_operation](
	[application_ID] [char](12) NOT NULL,
	[users_ID] [char](13) NOT NULL,
	[examine_ID] [char](5) NULL,
	[states] [char](10) NOT NULL,
	[states_time] [datetime] NULL,
	[application_time] [datetime] NULL,
 CONSTRAINT [PK__Item_app__3BCAD70A31EC6D26] PRIMARY KEY CLUSTERED 
(
	[application_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Item_application_operation] ([application_ID], [users_ID], [examine_ID], [states], [states_time], [application_time]) VALUES (N'111111113311', N'10000        ', N'10000', N'59888     ', CAST(0x000087AA00000000 AS DateTime), CAST(0x000083BF00000000 AS DateTime))
/****** Object:  Table [dbo].[Item_out_operation]    Script Date: 11/28/2016 00:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item_out_operation](
	[out_ID] [char](12) NOT NULL,
	[users_ID] [char](13) NOT NULL,
	[apply_ID] [char](12) NOT NULL,
	[out_address] [char](50) NOT NULL,
	[out_time] [datetime] NULL,
	[out_states] [char](10) NOT NULL,
	[operation_ID] [char](5) NULL,
 CONSTRAINT [PK__Item_out__D7CF7B803A81B327] PRIMARY KEY CLUSTERED 
(
	[out_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Item]    Script Date: 11/28/2016 00:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item](
	[item_code] [char](13) NOT NULL,
	[item_name] [char](50) NOT NULL,
	[item_count] [int] NOT NULL,
	[item_spec] [char](10) NOT NULL,
	[item_price] [float] NULL,
	[item_introduce] [char](50) NOT NULL,
	[item_companyID] [char](4) NULL,
	[item_categoryID] [char](3) NULL,
	[item_borrow_timelimit] [int] NOT NULL,
	[item_state] [char](20) NOT NULL,
	[item_examine] [char](20) NOT NULL,
	[item_remind] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[item_code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Item] ([item_code], [item_name], [item_count], [item_spec], [item_price], [item_introduce], [item_companyID], [item_categoryID], [item_borrow_timelimit], [item_state], [item_examine], [item_remind]) VALUES (N'0202016000001', N'11                                                ', 1, N'1111      ', 1111, N'1111                                              ', N'0001', N'020', 0, N'正常                ', N'手动                ', 0)
INSERT [dbo].[Item] ([item_code], [item_name], [item_count], [item_spec], [item_price], [item_introduce], [item_companyID], [item_categoryID], [item_borrow_timelimit], [item_state], [item_examine], [item_remind]) VALUES (N'0202016000002', N'computer                                          ', 1, N'1111      ', 11111, N'11                                                ', N'0002', N'020', 0, N'正常                ', N'手动                ', 0)
INSERT [dbo].[Item] ([item_code], [item_name], [item_count], [item_spec], [item_price], [item_introduce], [item_companyID], [item_categoryID], [item_borrow_timelimit], [item_state], [item_examine], [item_remind]) VALUES (N'0202016000003', N'11                                                ', 1, N'11        ', 11, N'11                                                ', N'0002', N'020', 0, N'正常                ', N'手动                ', 0)
INSERT [dbo].[Item] ([item_code], [item_name], [item_count], [item_spec], [item_price], [item_introduce], [item_companyID], [item_categoryID], [item_borrow_timelimit], [item_state], [item_examine], [item_remind]) VALUES (N'0202016000004', N'11                                                ', 2, N'1         ', 11, N'11                                                ', N'0001', N'020', 0, N'正常                ', N'手动                ', 0)
INSERT [dbo].[Item] ([item_code], [item_name], [item_count], [item_spec], [item_price], [item_introduce], [item_companyID], [item_categoryID], [item_borrow_timelimit], [item_state], [item_examine], [item_remind]) VALUES (N'0202016000005', N'11                                                ', 2, N'1         ', 11, N'11                                                ', N'0001', N'020', 0, N'正常                ', N'手动                ', 0)
INSERT [dbo].[Item] ([item_code], [item_name], [item_count], [item_spec], [item_price], [item_introduce], [item_companyID], [item_categoryID], [item_borrow_timelimit], [item_state], [item_examine], [item_remind]) VALUES (N'0212016000001', N'11                                                ', 2, N'11        ', 11, N'11                                                ', N'0003', N'021', 0, N'正常                ', N'手动                ', 0)
INSERT [dbo].[Item] ([item_code], [item_name], [item_count], [item_spec], [item_price], [item_introduce], [item_companyID], [item_categoryID], [item_borrow_timelimit], [item_state], [item_examine], [item_remind]) VALUES (N'0212016000002', N'11                                                ', 2, N'11        ', 11, N'11                                                ', N'0003', N'021', 0, N'正常                ', N'手动                ', 0)
INSERT [dbo].[Item] ([item_code], [item_name], [item_count], [item_spec], [item_price], [item_introduce], [item_companyID], [item_categoryID], [item_borrow_timelimit], [item_state], [item_examine], [item_remind]) VALUES (N'0222016000001', N'测试                                              ', 1, N'11        ', 11, N'11                                                ', NULL, N'022', 0, N'正常                ', N'手动                ', 0)
INSERT [dbo].[Item] ([item_code], [item_name], [item_count], [item_spec], [item_price], [item_introduce], [item_companyID], [item_categoryID], [item_borrow_timelimit], [item_state], [item_examine], [item_remind]) VALUES (N'0222016000002', N'测试                                              ', 1, N'11        ', 11, N'11                                                ', NULL, N'022', 0, N'正常                ', N'手动                ', 0)
INSERT [dbo].[Item] ([item_code], [item_name], [item_count], [item_spec], [item_price], [item_introduce], [item_companyID], [item_categoryID], [item_borrow_timelimit], [item_state], [item_examine], [item_remind]) VALUES (N'0222016000003', N'测试                                              ', 1, N'11        ', 11, N'11                                                ', NULL, N'022', 0, N'正常                ', N'手动                ', 0)
INSERT [dbo].[Item] ([item_code], [item_name], [item_count], [item_spec], [item_price], [item_introduce], [item_companyID], [item_categoryID], [item_borrow_timelimit], [item_state], [item_examine], [item_remind]) VALUES (N'0222016000004', N'测试                                              ', 1, N'11        ', 11, N'11                                                ', NULL, N'022', 0, N'正常                ', N'手动                ', 0)
INSERT [dbo].[Item] ([item_code], [item_name], [item_count], [item_spec], [item_price], [item_introduce], [item_companyID], [item_categoryID], [item_borrow_timelimit], [item_state], [item_examine], [item_remind]) VALUES (N'0222016000005', N'测试                                              ', 1, N'11        ', 11, N'11                                                ', NULL, N'022', 0, N'正常                ', N'手动                ', 0)
INSERT [dbo].[Item] ([item_code], [item_name], [item_count], [item_spec], [item_price], [item_introduce], [item_companyID], [item_categoryID], [item_borrow_timelimit], [item_state], [item_examine], [item_remind]) VALUES (N'0222016000006', N'测试                                              ', 1, N'11        ', 11, N'11                                                ', NULL, N'022', 0, N'正常                ', N'手动                ', 0)
INSERT [dbo].[Item] ([item_code], [item_name], [item_count], [item_spec], [item_price], [item_introduce], [item_companyID], [item_categoryID], [item_borrow_timelimit], [item_state], [item_examine], [item_remind]) VALUES (N'0222016000007', N'测试                                              ', 1, N'11        ', 11, N'11                                                ', NULL, N'022', 0, N'正常                ', N'手动                ', 0)
INSERT [dbo].[Item] ([item_code], [item_name], [item_count], [item_spec], [item_price], [item_introduce], [item_companyID], [item_categoryID], [item_borrow_timelimit], [item_state], [item_examine], [item_remind]) VALUES (N'0222016000008', N'测试                                              ', 1, N'11        ', 11, N'11                                                ', NULL, N'022', 0, N'正常                ', N'手动                ', 0)
INSERT [dbo].[Item] ([item_code], [item_name], [item_count], [item_spec], [item_price], [item_introduce], [item_companyID], [item_categoryID], [item_borrow_timelimit], [item_state], [item_examine], [item_remind]) VALUES (N'0222016000009', N'测试                                              ', 1, N'11        ', 11, N'11                                                ', NULL, N'022', 0, N'正常                ', N'手动                ', 0)
INSERT [dbo].[Item] ([item_code], [item_name], [item_count], [item_spec], [item_price], [item_introduce], [item_companyID], [item_categoryID], [item_borrow_timelimit], [item_state], [item_examine], [item_remind]) VALUES (N'0222016000010', N'测试                                              ', 1, N'11        ', 11, N'11                                                ', NULL, N'022', 0, N'正常                ', N'手动                ', 0)
INSERT [dbo].[Item] ([item_code], [item_name], [item_count], [item_spec], [item_price], [item_introduce], [item_companyID], [item_categoryID], [item_borrow_timelimit], [item_state], [item_examine], [item_remind]) VALUES (N'0222016000011', N'11                                                ', 2, N'11        ', 11, N'11                                                ', N'0002', N'022', 0, N'正常                ', N'手动                ', 0)
INSERT [dbo].[Item] ([item_code], [item_name], [item_count], [item_spec], [item_price], [item_introduce], [item_companyID], [item_categoryID], [item_borrow_timelimit], [item_state], [item_examine], [item_remind]) VALUES (N'0222016000012', N'11                                                ', 2, N'11        ', 11, N'11                                                ', N'0002', N'022', 0, N'正常                ', N'手动                ', 0)
INSERT [dbo].[Item] ([item_code], [item_name], [item_count], [item_spec], [item_price], [item_introduce], [item_companyID], [item_categoryID], [item_borrow_timelimit], [item_state], [item_examine], [item_remind]) VALUES (N'0232016000001', N'pen                                               ', 3, N'11        ', 11, N'11                                                ', N'0003', N'023', 0, N'正常                ', N'手动                ', 0)
INSERT [dbo].[Item] ([item_code], [item_name], [item_count], [item_spec], [item_price], [item_introduce], [item_companyID], [item_categoryID], [item_borrow_timelimit], [item_state], [item_examine], [item_remind]) VALUES (N'0232016000002', N'pen                                               ', 3, N'11        ', 11, N'11                                                ', N'0003', N'023', 0, N'正常                ', N'手动                ', 0)
INSERT [dbo].[Item] ([item_code], [item_name], [item_count], [item_spec], [item_price], [item_introduce], [item_companyID], [item_categoryID], [item_borrow_timelimit], [item_state], [item_examine], [item_remind]) VALUES (N'0232016000003', N'pen                                               ', 3, N'11        ', 11, N'11                                                ', N'0003', N'023', 0, N'正常                ', N'手动                ', 0)
INSERT [dbo].[Item] ([item_code], [item_name], [item_count], [item_spec], [item_price], [item_introduce], [item_companyID], [item_categoryID], [item_borrow_timelimit], [item_state], [item_examine], [item_remind]) VALUES (N'1234567890123', N'test                                              ', 11, N'11        ', 11, N'11                                                ', N'0001', N'001', 0, N'正常                ', N'自动                ', 0)
INSERT [dbo].[Item] ([item_code], [item_name], [item_count], [item_spec], [item_price], [item_introduce], [item_companyID], [item_categoryID], [item_borrow_timelimit], [item_state], [item_examine], [item_remind]) VALUES (N'1234567890124', N'apple                                             ', 0, N'1         ', 12, N'11                                                ', N'0001', N'004', 0, N'正常                ', N'自动                ', 0)
INSERT [dbo].[Item] ([item_code], [item_name], [item_count], [item_spec], [item_price], [item_introduce], [item_companyID], [item_categoryID], [item_borrow_timelimit], [item_state], [item_examine], [item_remind]) VALUES (N'1234567891000', N'testitem                                          ', 225, N'522       ', 22, N'222                                               ', N'0001', N'001', 111, N'111                 ', N'111                 ', 111)
INSERT [dbo].[Item] ([item_code], [item_name], [item_count], [item_spec], [item_price], [item_introduce], [item_companyID], [item_categoryID], [item_borrow_timelimit], [item_state], [item_examine], [item_remind]) VALUES (N'1234567891001', N'testitem2                                         ', 233, N'233       ', 233, N'233                                               ', N'0001', N'002', 111, N'111                 ', N'111                 ', 111)
/****** Object:  Table [dbo].[Item_out_storage]    Script Date: 11/28/2016 00:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item_out_storage](
	[out_ID] [char](12) NOT NULL,
	[item_code] [char](13) NOT NULL,
	[counts] [int] NOT NULL,
 CONSTRAINT [pk_Item_out_storage] PRIMARY KEY CLUSTERED 
(
	[out_ID] ASC,
	[item_code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Item_in_storage]    Script Date: 11/28/2016 00:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item_in_storage](
	[storage_ID] [char](12) NOT NULL,
	[item_code] [char](13) NOT NULL,
	[counts] [int] NOT NULL,
	[price] [float] NULL,
	[bill_code] [char](12) NULL,
	[item_slot] [char](10) NOT NULL,
	[item_batch] [char](20) NULL,
	[item_indate] [datetime] NOT NULL,
	[allow_count] [int] NOT NULL,
 CONSTRAINT [pk_Item_in_stotage] PRIMARY KEY CLUSTERED 
(
	[storage_ID] ASC,
	[item_code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Item_in_storage] ([storage_ID], [item_code], [counts], [price], [bill_code], [item_slot], [item_batch], [item_indate], [allow_count]) VALUES (N'201611211000', N'1234567891000', 10, 1, N'1           ', N'A区 1层   ', N'1111                ', CAST(0x0000A97500000000 AS DateTime), 10)
INSERT [dbo].[Item_in_storage] ([storage_ID], [item_code], [counts], [price], [bill_code], [item_slot], [item_batch], [item_indate], [allow_count]) VALUES (N'201611221100', N'1234567890123', 11, 11, N'2           ', N'A区2层    ', N'11                  ', CAST(0x0000A6C600000000 AS DateTime), 11)
INSERT [dbo].[Item_in_storage] ([storage_ID], [item_code], [counts], [price], [bill_code], [item_slot], [item_batch], [item_indate], [allow_count]) VALUES (N'201611241101', N'1234567890123', 11, 21, N'3           ', N'A区2层    ', N'0012                ', CAST(0x0000A6C800000000 AS DateTime), 11)
INSERT [dbo].[Item_in_storage] ([storage_ID], [item_code], [counts], [price], [bill_code], [item_slot], [item_batch], [item_indate], [allow_count]) VALUES (N'201611241102', N'0202016000001', 2, 31, N'4           ', N'A区1层    ', N'11                  ', CAST(0x0000A6C800000000 AS DateTime), 2)
INSERT [dbo].[Item_in_storage] ([storage_ID], [item_code], [counts], [price], [bill_code], [item_slot], [item_batch], [item_indate], [allow_count]) VALUES (N'201611261103', N'1234567890124', 111, 12, N'11111       ', N'h5        ', N'11                  ', CAST(0x0000A6CA00000000 AS DateTime), 111)
INSERT [dbo].[Item_in_storage] ([storage_ID], [item_code], [counts], [price], [bill_code], [item_slot], [item_batch], [item_indate], [allow_count]) VALUES (N'201611261104', N'0202016000002', 5, 11111, N'11111       ', N'1111      ', N'111                 ', CAST(0x0000A6CA00000000 AS DateTime), 5)
INSERT [dbo].[Item_in_storage] ([storage_ID], [item_code], [counts], [price], [bill_code], [item_slot], [item_batch], [item_indate], [allow_count]) VALUES (N'201611261105', N'0202016000003', 1, 11, N'11111       ', N'1111      ', N'11                  ', CAST(0x0000A6CA00000000 AS DateTime), 1)
INSERT [dbo].[Item_in_storage] ([storage_ID], [item_code], [counts], [price], [bill_code], [item_slot], [item_batch], [item_indate], [allow_count]) VALUES (N'201611261106', N'0222016000001', 1, 11, N'11111       ', N'111111    ', N'11                  ', CAST(0x0000A6CA00000000 AS DateTime), 10)
INSERT [dbo].[Item_in_storage] ([storage_ID], [item_code], [counts], [price], [bill_code], [item_slot], [item_batch], [item_indate], [allow_count]) VALUES (N'201611261106', N'0222016000002', 1, 11, N'11111       ', N'111111    ', N'11                  ', CAST(0x0000A6CA00000000 AS DateTime), 10)
INSERT [dbo].[Item_in_storage] ([storage_ID], [item_code], [counts], [price], [bill_code], [item_slot], [item_batch], [item_indate], [allow_count]) VALUES (N'201611261106', N'0222016000003', 1, 11, N'11111       ', N'111111    ', N'11                  ', CAST(0x0000A6CA00000000 AS DateTime), 10)
INSERT [dbo].[Item_in_storage] ([storage_ID], [item_code], [counts], [price], [bill_code], [item_slot], [item_batch], [item_indate], [allow_count]) VALUES (N'201611261106', N'0222016000004', 1, 11, N'11111       ', N'111111    ', N'11                  ', CAST(0x0000A6CA00000000 AS DateTime), 10)
INSERT [dbo].[Item_in_storage] ([storage_ID], [item_code], [counts], [price], [bill_code], [item_slot], [item_batch], [item_indate], [allow_count]) VALUES (N'201611261106', N'0222016000005', 1, 11, N'11111       ', N'111111    ', N'11                  ', CAST(0x0000A6CA00000000 AS DateTime), 10)
INSERT [dbo].[Item_in_storage] ([storage_ID], [item_code], [counts], [price], [bill_code], [item_slot], [item_batch], [item_indate], [allow_count]) VALUES (N'201611261106', N'0222016000006', 1, 11, N'11111       ', N'111111    ', N'11                  ', CAST(0x0000A6CA00000000 AS DateTime), 10)
INSERT [dbo].[Item_in_storage] ([storage_ID], [item_code], [counts], [price], [bill_code], [item_slot], [item_batch], [item_indate], [allow_count]) VALUES (N'201611261106', N'0222016000007', 1, 11, N'11111       ', N'111111    ', N'11                  ', CAST(0x0000A6CA00000000 AS DateTime), 10)
INSERT [dbo].[Item_in_storage] ([storage_ID], [item_code], [counts], [price], [bill_code], [item_slot], [item_batch], [item_indate], [allow_count]) VALUES (N'201611261106', N'0222016000008', 1, 11, N'11111       ', N'111111    ', N'11                  ', CAST(0x0000A6CA00000000 AS DateTime), 10)
INSERT [dbo].[Item_in_storage] ([storage_ID], [item_code], [counts], [price], [bill_code], [item_slot], [item_batch], [item_indate], [allow_count]) VALUES (N'201611261106', N'0222016000009', 1, 11, N'11111       ', N'111111    ', N'11                  ', CAST(0x0000A6CA00000000 AS DateTime), 10)
INSERT [dbo].[Item_in_storage] ([storage_ID], [item_code], [counts], [price], [bill_code], [item_slot], [item_batch], [item_indate], [allow_count]) VALUES (N'201611261106', N'0222016000010', 1, 11, N'11111       ', N'111111    ', N'11                  ', CAST(0x0000A6CA00000000 AS DateTime), 10)
INSERT [dbo].[Item_in_storage] ([storage_ID], [item_code], [counts], [price], [bill_code], [item_slot], [item_batch], [item_indate], [allow_count]) VALUES (N'201611271107', N'0202016000004', 1, 11, N'11111       ', N'1111      ', N'111                 ', CAST(0x0000A6CB00000000 AS DateTime), 1)
INSERT [dbo].[Item_in_storage] ([storage_ID], [item_code], [counts], [price], [bill_code], [item_slot], [item_batch], [item_indate], [allow_count]) VALUES (N'201611271107', N'0202016000005', 1, 11, N'11111       ', N'1111      ', N'111                 ', CAST(0x0000A6CB00000000 AS DateTime), 1)
INSERT [dbo].[Item_in_storage] ([storage_ID], [item_code], [counts], [price], [bill_code], [item_slot], [item_batch], [item_indate], [allow_count]) VALUES (N'201611271108', N'0212016000001', 1, 11, N'11111       ', N'1111      ', N'11                  ', CAST(0x0000A6CB00000000 AS DateTime), 1)
INSERT [dbo].[Item_in_storage] ([storage_ID], [item_code], [counts], [price], [bill_code], [item_slot], [item_batch], [item_indate], [allow_count]) VALUES (N'201611271108', N'0212016000002', 1, 11, N'11111       ', N'1111      ', N'11                  ', CAST(0x0000A6CB00000000 AS DateTime), 1)
INSERT [dbo].[Item_in_storage] ([storage_ID], [item_code], [counts], [price], [bill_code], [item_slot], [item_batch], [item_indate], [allow_count]) VALUES (N'201611271109', N'0222016000011', 1, 11, N'11111       ', N'11111     ', N'11                  ', CAST(0x0000A6CB00000000 AS DateTime), 1)
INSERT [dbo].[Item_in_storage] ([storage_ID], [item_code], [counts], [price], [bill_code], [item_slot], [item_batch], [item_indate], [allow_count]) VALUES (N'201611271109', N'0222016000012', 1, 11, N'11111       ', N'11111     ', N'11                  ', CAST(0x0000A6CB00000000 AS DateTime), 1)
INSERT [dbo].[Item_in_storage] ([storage_ID], [item_code], [counts], [price], [bill_code], [item_slot], [item_batch], [item_indate], [allow_count]) VALUES (N'201611271110', N'0232016000001', 1, 11, N'11111       ', N'1111      ', N'11                  ', CAST(0x0000A6CB00000000 AS DateTime), 1)
INSERT [dbo].[Item_in_storage] ([storage_ID], [item_code], [counts], [price], [bill_code], [item_slot], [item_batch], [item_indate], [allow_count]) VALUES (N'201611271110', N'0232016000002', 1, 11, N'11111       ', N'1111      ', N'11                  ', CAST(0x0000A6CB00000000 AS DateTime), 1)
INSERT [dbo].[Item_in_storage] ([storage_ID], [item_code], [counts], [price], [bill_code], [item_slot], [item_batch], [item_indate], [allow_count]) VALUES (N'201611271110', N'0232016000003', 1, 11, N'11111       ', N'1111      ', N'11                  ', CAST(0x0000A6CB00000000 AS DateTime), 1)
/****** Object:  Table [dbo].[Item_application]    Script Date: 11/28/2016 00:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item_application](
	[application_ID] [char](12) NOT NULL,
	[item_code] [char](13) NOT NULL,
	[counts] [int] NOT NULL,
	[application_text] [char](100) NULL,
	[application_type] [char](20) NOT NULL,
 CONSTRAINT [pk_Item_application] PRIMARY KEY CLUSTERED 
(
	[application_ID] ASC,
	[item_code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Item_borrow]    Script Date: 11/28/2016 00:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item_borrow](
	[borrow_ID] [char](12) NOT NULL,
	[item_code] [char](13) NOT NULL,
	[counts] [int] NOT NULL,
	[borrow_time] [datetime] NULL,
	[return_time] [datetime] NULL,
	[borrow_text] [char](100) NULL,
 CONSTRAINT [pk_Item_borrow] PRIMARY KEY CLUSTERED 
(
	[borrow_ID] ASC,
	[item_code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Item_borrow] ([borrow_ID], [item_code], [counts], [borrow_time], [return_time], [borrow_text]) VALUES (N'11          ', N'1234567891000', 11, CAST(0x0000A65C00000000 AS DateTime), CAST(0x0000A65C00000000 AS DateTime), N'11                                                                                                  ')
/****** Object:  Check [CK__Item__item_count__117F9D94]    Script Date: 11/28/2016 00:01:33 ******/
ALTER TABLE [dbo].[Item]  WITH CHECK ADD CHECK  (([item_count]>(-1)))
GO
/****** Object:  Check [CK__Item__item_price__1273C1CD]    Script Date: 11/28/2016 00:01:33 ******/
ALTER TABLE [dbo].[Item]  WITH CHECK ADD CHECK  (([item_price]>(0)))
GO
/****** Object:  Check [CK__Item_appl__count__37A5467C]    Script Date: 11/28/2016 00:01:33 ******/
ALTER TABLE [dbo].[Item_application]  WITH CHECK ADD CHECK  (([counts]>(-1)))
GO
/****** Object:  Check [CK__Item_borr__count__2C3393D0]    Script Date: 11/28/2016 00:01:33 ******/
ALTER TABLE [dbo].[Item_borrow]  WITH CHECK ADD  CONSTRAINT [CK__Item_borr__count__2C3393D0] CHECK  (([counts]>(-1)))
GO
ALTER TABLE [dbo].[Item_borrow] CHECK CONSTRAINT [CK__Item_borr__count__2C3393D0]
GO
/****** Object:  Check [CK__Item_in_s__allow__21B6055D]    Script Date: 11/28/2016 00:01:33 ******/
ALTER TABLE [dbo].[Item_in_storage]  WITH CHECK ADD  CONSTRAINT [CK__Item_in_s__allow__21B6055D] CHECK  (([allow_count]>(-1)))
GO
ALTER TABLE [dbo].[Item_in_storage] CHECK CONSTRAINT [CK__Item_in_s__allow__21B6055D]
GO
/****** Object:  Check [CK__Item_in_s__count__1FCDBCEB]    Script Date: 11/28/2016 00:01:33 ******/
ALTER TABLE [dbo].[Item_in_storage]  WITH CHECK ADD  CONSTRAINT [CK__Item_in_s__count__1FCDBCEB] CHECK  (([counts]>(-1)))
GO
ALTER TABLE [dbo].[Item_in_storage] CHECK CONSTRAINT [CK__Item_in_s__count__1FCDBCEB]
GO
/****** Object:  Check [CK__Item_in_s__price__20C1E124]    Script Date: 11/28/2016 00:01:33 ******/
ALTER TABLE [dbo].[Item_in_storage]  WITH CHECK ADD  CONSTRAINT [CK__Item_in_s__price__20C1E124] CHECK  (([price]>(0)))
GO
ALTER TABLE [dbo].[Item_in_storage] CHECK CONSTRAINT [CK__Item_in_s__price__20C1E124]
GO
/****** Object:  Check [CK__Item_out___count__403A8C7D]    Script Date: 11/28/2016 00:01:33 ******/
ALTER TABLE [dbo].[Item_out_storage]  WITH CHECK ADD CHECK  (([counts]>(-1)))
GO
/****** Object:  Check [CK__Users__users_sex__014935CB]    Script Date: 11/28/2016 00:01:33 ******/
ALTER TABLE [dbo].[Item_Users]  WITH CHECK ADD  CONSTRAINT [CK__Users__users_sex__014935CB] CHECK  (([users_sex]='女' OR [users_sex]='男'))
GO
ALTER TABLE [dbo].[Item_Users] CHECK CONSTRAINT [CK__Users__users_sex__014935CB]
GO
/****** Object:  ForeignKey [FK__Item__item_categ__145C0A3F]    Script Date: 11/28/2016 00:01:33 ******/
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([item_categoryID])
REFERENCES [dbo].[Item_category] ([category_ID])
ON UPDATE CASCADE
GO
/****** Object:  ForeignKey [FK__Item__item_compa__1367E606]    Script Date: 11/28/2016 00:01:33 ******/
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK__Item__item_compa__1367E606] FOREIGN KEY([item_companyID])
REFERENCES [dbo].[Item_company] ([company_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK__Item__item_compa__1367E606]
GO
/****** Object:  ForeignKey [FK__Item_appl__appli__35BCFE0A]    Script Date: 11/28/2016 00:01:33 ******/
ALTER TABLE [dbo].[Item_application]  WITH CHECK ADD  CONSTRAINT [FK__Item_appl__appli__35BCFE0A] FOREIGN KEY([application_ID])
REFERENCES [dbo].[Item_application_operation] ([application_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Item_application] CHECK CONSTRAINT [FK__Item_appl__appli__35BCFE0A]
GO
/****** Object:  ForeignKey [FK__Item_appl__item___36B12243]    Script Date: 11/28/2016 00:01:33 ******/
ALTER TABLE [dbo].[Item_application]  WITH CHECK ADD FOREIGN KEY([item_code])
REFERENCES [dbo].[Item] ([item_code])
ON UPDATE CASCADE
GO
/****** Object:  ForeignKey [FK__Item_borr__borro__2A4B4B5E]    Script Date: 11/28/2016 00:01:33 ******/
ALTER TABLE [dbo].[Item_borrow]  WITH CHECK ADD  CONSTRAINT [FK__Item_borr__borro__2A4B4B5E] FOREIGN KEY([borrow_ID])
REFERENCES [dbo].[Item_borrow_operation] ([borrow_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Item_borrow] CHECK CONSTRAINT [FK__Item_borr__borro__2A4B4B5E]
GO
/****** Object:  ForeignKey [FK__Item_borr__item___2B3F6F97]    Script Date: 11/28/2016 00:01:33 ******/
ALTER TABLE [dbo].[Item_borrow]  WITH CHECK ADD  CONSTRAINT [FK__Item_borr__item___2B3F6F97] FOREIGN KEY([item_code])
REFERENCES [dbo].[Item] ([item_code])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Item_borrow] CHECK CONSTRAINT [FK__Item_borr__item___2B3F6F97]
GO
/****** Object:  ForeignKey [FK__Item_in_s__item___1ED998B2]    Script Date: 11/28/2016 00:01:33 ******/
ALTER TABLE [dbo].[Item_in_storage]  WITH CHECK ADD  CONSTRAINT [FK__Item_in_s__item___1ED998B2] FOREIGN KEY([item_code])
REFERENCES [dbo].[Item] ([item_code])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Item_in_storage] CHECK CONSTRAINT [FK__Item_in_s__item___1ED998B2]
GO
/****** Object:  ForeignKey [FK__Item_in_s__stora__1DE57479]    Script Date: 11/28/2016 00:01:33 ******/
ALTER TABLE [dbo].[Item_in_storage]  WITH CHECK ADD  CONSTRAINT [FK__Item_in_s__stora__1DE57479] FOREIGN KEY([storage_ID])
REFERENCES [dbo].[Item_in_operation] ([storage_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Item_in_storage] CHECK CONSTRAINT [FK__Item_in_s__stora__1DE57479]
GO
/****** Object:  ForeignKey [FK__Item_out___item___3F466844]    Script Date: 11/28/2016 00:01:33 ******/
ALTER TABLE [dbo].[Item_out_storage]  WITH CHECK ADD FOREIGN KEY([item_code])
REFERENCES [dbo].[Item] ([item_code])
ON UPDATE CASCADE
GO
/****** Object:  ForeignKey [FK__Item_out___out_I__3E52440B]    Script Date: 11/28/2016 00:01:33 ******/
ALTER TABLE [dbo].[Item_out_storage]  WITH CHECK ADD  CONSTRAINT [FK__Item_out___out_I__3E52440B] FOREIGN KEY([out_ID])
REFERENCES [dbo].[Item_out_operation] ([out_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Item_out_storage] CHECK CONSTRAINT [FK__Item_out___out_I__3E52440B]
GO
