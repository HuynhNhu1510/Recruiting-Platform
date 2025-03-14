USE [job_seeker]
GO
/****** Object:  Table [dbo].[authentication_granted_permissions]    Script Date: 26/10/2024 2:30:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authentication_granted_permissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NOT NULL,
	[permission_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[authentication_permission]    Script Date: 26/10/2024 2:30:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authentication_permission](
	[permission_id] [int] IDENTITY(1,1) NOT NULL,
	[permission_descri] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[authentication_role]    Script Date: 26/10/2024 2:30:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authentication_role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job_seeker_applicant_profile_saved]    Script Date: 26/10/2024 2:30:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_seeker_applicant_profile_saved](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[candidate_id] [uniqueidentifier] NOT NULL,
	[enterprise_id] [uniqueidentifier] NOT NULL,
	[is_created_at] [datetime] NOT NULL,
	[is_updated_at] [datetime] NOT NULL,
	[is_deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job_seeker_candidate_profile]    Script Date: 26/10/2024 2:30:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_seeker_candidate_profile](
	[candidate_id] [uniqueidentifier] NOT NULL,
	[dob] [date] NOT NULL,
	[gender] [nvarchar](10) NULL,
	[phone_numb] [varchar](20) NULL,
	[avartar_url] [varchar](500) NULL,
	[cv_url] [varchar](max) NULL,
	[slug] [varchar](200) NOT NULL,
	[facbook_link] [varchar](max) NULL,
	[linkedin_link] [varchar](max) NULL,
	[github_url] [varchar](max) NULL,
	[twitter_url] [varchar](max) NULL,
	[portfolio_url] [varchar](max) NULL,
	[province] [nvarchar](200) NOT NULL,
	[district] [nvarchar](200) NULL,
	[role_id] [int] NOT NULL,
	[is_allowed_public] [bit] NOT NULL,
	[is_created_at] [datetime] NOT NULL,
	[is_updated_at] [datetime] NULL,
	[is_deleted_at] [datetime] NULL,
	[address_detail] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[candidate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job_seeker_certificate]    Script Date: 26/10/2024 2:30:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_seeker_certificate](
	[certificate_id] [uniqueidentifier] NOT NULL,
	[certificate_name] [nvarchar](200) NOT NULL,
	[organization] [nvarchar](200) NOT NULL,
	[certificate_link] [varchar](max) NOT NULL,
	[description] [nvarchar](200) NULL,
	[candidate_id] [uniqueidentifier] NOT NULL,
	[is_created_at] [datetime] NOT NULL,
	[is_updated_at] [datetime] NULL,
	[is_deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[certificate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job_seeker_district]    Script Date: 26/10/2024 2:30:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_seeker_district](
	[code] [varchar](20) NOT NULL,
	[district_name] [nvarchar](200) NOT NULL,
	[province_code] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job_seeker_education_detail]    Script Date: 26/10/2024 2:30:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_seeker_education_detail](
	[education_id] [uniqueidentifier] NOT NULL,
	[school_name] [nvarchar](200) NOT NULL,
	[major] [nvarchar](100) NOT NULL,
	[degree] [nvarchar](100) NOT NULL,
	[description] [nvarchar](200) NULL,
	[start_date] [date] NOT NULL,
	[end_date] [date] NOT NULL,
	[candidate_id] [uniqueidentifier] NOT NULL,
	[is_created_at] [datetime] NOT NULL,
	[is_updated_at] [datetime] NULL,
	[is_deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[education_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job_seeker_enterprise]    Script Date: 26/10/2024 2:30:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_seeker_enterprise](
	[enterprise_id] [uniqueidentifier] NOT NULL,
	[full_company_name] [nvarchar](500) NOT NULL,
	[logo_url] [varchar](500) NOT NULL,
	[company_email] [varchar](50) NOT NULL,
	[company_phone_contact] [varchar](20) NOT NULL,
	[cover_img_url] [varchar](500) NULL,
	[slug_img] [varchar](500) NULL,
	[facebook_url] [varchar](500) NULL,
	[linkedin_url] [varchar](500) NULL,
	[website_url] [varchar](500) NULL,
	[tax_code] [varchar](50) NOT NULL,
	[founded_date] [date] NOT NULL,
	[enterprise_size] [varchar](100) NOT NULL,
	[job_field_id] [int] NOT NULL,
	[address] [nvarchar](200) NULL,
	[province] [nvarchar](100) NULL,
	[district] [nvarchar](100) NULL,
	[ward] [nvarchar](100) NULL,
	[descriptions] [nvarchar](max) NULL,
	[is_created_at] [datetime] NOT NULL,
	[is_updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[enterprise_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job_seeker_job_category]    Script Date: 26/10/2024 2:30:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_seeker_job_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[job_category_name] [nvarchar](200) NOT NULL,
	[app_icon_name] [varchar](200) NULL,
	[is_created_at] [datetime] NOT NULL,
	[is_updated_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job_seeker_job_field]    Script Date: 26/10/2024 2:30:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_seeker_job_field](
	[job_field_id] [int] IDENTITY(1,1) NOT NULL,
	[job_field_name] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[job_field_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job_seeker_job_level]    Script Date: 26/10/2024 2:30:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_seeker_job_level](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[job_level_name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job_seeker_job_posting]    Script Date: 26/10/2024 2:30:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_seeker_job_posting](
	[id] [uniqueidentifier] NOT NULL,
	[job_title] [nvarchar](200) NOT NULL,
	[job_desc] [nvarchar](max) NOT NULL,
	[job_requirement] [nvarchar](max) NOT NULL,
	[benefit_enjoyed] [nvarchar](max) NOT NULL,
	[quantity] [int] NOT NULL,
	[salary_min] [int] NOT NULL,
	[salary_max] [int] NOT NULL,
	[exp_requirement] [nvarchar](100) NOT NULL,
	[job_level_code] [int] NOT NULL,
	[working_type] [nvarchar](50) NOT NULL,
	[gender_require] [nvarchar](50) NOT NULL,
	[academic_level] [nvarchar](100) NOT NULL,
	[address] [nvarchar](100) NOT NULL,
	[province] [nvarchar](100) NOT NULL,
	[district] [nvarchar](100) NOT NULL,
	[ward] [nvarchar](100) NOT NULL,
	[time_post] [datetime] NOT NULL,
	[expired_time] [datetime] NOT NULL,
	[is_urgent] [bit] NULL,
	[is_hot] [bit] NULL,
	[status_code] [varchar](15) NOT NULL,
	[enterprise_id] [uniqueidentifier] NOT NULL,
	[job_category_id] [int] NOT NULL,
	[is_created_at] [datetime] NOT NULL,
	[is_updated_at] [datetime] NULL,
	[is_deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job_seeker_job_posting_apply]    Script Date: 26/10/2024 2:30:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_seeker_job_posting_apply](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[job_posting_id] [uniqueidentifier] NOT NULL,
	[candidate_id] [uniqueidentifier] NOT NULL,
	[apply_time] [datetime] NOT NULL,
	[status_code] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job_seeker_notification]    Script Date: 26/10/2024 2:30:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_seeker_notification](
	[id] [varchar](50) NOT NULL,
	[notify_type_id] [varchar](50) NOT NULL,
	[user_login_data_id] [uniqueidentifier] NOT NULL,
	[job_id] [uniqueidentifier] NOT NULL,
	[is_created_at] [datetime] NOT NULL,
	[is_sent] [bit] NOT NULL,
	[is_seen] [bit] NOT NULL,
	[is_deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job_seeker_notification_type]    Script Date: 26/10/2024 2:30:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_seeker_notification_type](
	[id] [varchar](50) NOT NULL,
	[type_name] [nvarchar](100) NOT NULL,
	[description] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job_seeker_province]    Script Date: 26/10/2024 2:30:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_seeker_province](
	[code] [varchar](20) NOT NULL,
	[province_name] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job_seeker_recruiter_profile]    Script Date: 26/10/2024 2:30:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_seeker_recruiter_profile](
	[recruiter_id] [uniqueidentifier] NOT NULL,
	[gender] [nvarchar](10) NOT NULL,
	[phone_numb] [varchar](20) NOT NULL,
	[avatar_link] [varchar](500) NULL,
	[linkedin_url] [varchar](500) NULL,
	[enterprise_id] [uniqueidentifier] NOT NULL,
	[role_id] [int] NOT NULL,
	[is_created_at] [datetime] NOT NULL,
	[is_updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[recruiter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job_seeker_saved_job_posting]    Script Date: 26/10/2024 2:30:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_seeker_saved_job_posting](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[candidate_id] [uniqueidentifier] NOT NULL,
	[job_posting_id] [uniqueidentifier] NOT NULL,
	[saved_at] [datetime] NOT NULL,
	[deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job_seeker_status_code]    Script Date: 26/10/2024 2:30:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_seeker_status_code](
	[id] [varchar](15) NOT NULL,
	[code_value] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job_seeker_user_login_data]    Script Date: 26/10/2024 2:30:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_seeker_user_login_data](
	[id] [uniqueidentifier] NOT NULL,
	[full_name] [nvarchar](100) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[password] [varchar](512) NOT NULL,
	[role_id] [int] NOT NULL,
	[email_verified] [bit] NOT NULL,
	[status_code] [varchar](15) NOT NULL,
	[last_active_time] [datetime] NULL,
	[is_active] [bit] NULL,
	[is_created_at] [datetime] NOT NULL,
	[is_updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job_seeker_user_login_data_external]    Script Date: 26/10/2024 2:30:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_seeker_user_login_data_external](
	[id] [uniqueidentifier] NOT NULL,
	[provider_name] [varchar](100) NOT NULL,
	[external_provider_token] [varchar](500) NOT NULL,
	[ws_endpoint] [varchar](500) NULL,
	[extra_data] [varchar](max) NOT NULL,
	[is_created_at] [datetime] NOT NULL,
	[is_updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job_seeker_ward]    Script Date: 26/10/2024 2:30:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_seeker_ward](
	[code] [varchar](20) NOT NULL,
	[ward_name] [nvarchar](200) NOT NULL,
	[district_code] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job_seeker_working_experience]    Script Date: 26/10/2024 2:30:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_seeker_working_experience](
	[working_exp_id] [uniqueidentifier] NOT NULL,
	[job_title] [nvarchar](200) NOT NULL,
	[company_name] [nvarchar](200) NOT NULL,
	[description] [nvarchar](200) NULL,
	[start_date] [date] NOT NULL,
	[end_date] [date] NOT NULL,
	[candidate_id] [uniqueidentifier] NOT NULL,
	[is_created_at] [datetime] NOT NULL,
	[is_updated_at] [datetime] NULL,
	[is_deleted_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[working_exp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[authentication_role] ON 

INSERT [dbo].[authentication_role] ([role_id], [role_name]) VALUES (1, N'Admin')
INSERT [dbo].[authentication_role] ([role_id], [role_name]) VALUES (2, N'Recruiter')
INSERT [dbo].[authentication_role] ([role_id], [role_name]) VALUES (3, N'Candidate')
SET IDENTITY_INSERT [dbo].[authentication_role] OFF
GO
SET IDENTITY_INSERT [dbo].[job_seeker_job_level] ON 

INSERT [dbo].[job_seeker_job_level] ([id], [job_level_name]) VALUES (1, N'Th?c t?p sinh')
INSERT [dbo].[job_seeker_job_level] ([id], [job_level_name]) VALUES (2, N'Nhân viên')
INSERT [dbo].[job_seeker_job_level] ([id], [job_level_name]) VALUES (3, N'Tru?ng phòng')
INSERT [dbo].[job_seeker_job_level] ([id], [job_level_name]) VALUES (4, N'Phó phòng')
INSERT [dbo].[job_seeker_job_level] ([id], [job_level_name]) VALUES (5, N'Qu?n lý/ Giám sát')
INSERT [dbo].[job_seeker_job_level] ([id], [job_level_name]) VALUES (6, N'Qu?n lý chi nhánh')
INSERT [dbo].[job_seeker_job_level] ([id], [job_level_name]) VALUES (7, N'Giám d?c')
INSERT [dbo].[job_seeker_job_level] ([id], [job_level_name]) VALUES (8, N'Phó giám d?c')
INSERT [dbo].[job_seeker_job_level] ([id], [job_level_name]) VALUES (9, N'Tru?ng nhóm')
SET IDENTITY_INSERT [dbo].[job_seeker_job_level] OFF
GO
INSERT [dbo].[job_seeker_status_code] ([id], [code_value]) VALUES (N'SC1', N'Active')
INSERT [dbo].[job_seeker_status_code] ([id], [code_value]) VALUES (N'SC2', N'Inactive')
INSERT [dbo].[job_seeker_status_code] ([id], [code_value]) VALUES (N'SC3', N'Draft')
INSERT [dbo].[job_seeker_status_code] ([id], [code_value]) VALUES (N'SC4', N'Published')
INSERT [dbo].[job_seeker_status_code] ([id], [code_value]) VALUES (N'SC5', N'Approved')
INSERT [dbo].[job_seeker_status_code] ([id], [code_value]) VALUES (N'SC6', N'Rejected')
INSERT [dbo].[job_seeker_status_code] ([id], [code_value]) VALUES (N'SC7', N'Pending Approval')
INSERT [dbo].[job_seeker_status_code] ([id], [code_value]) VALUES (N'SC8', N'Email Not Validated')
INSERT [dbo].[job_seeker_status_code] ([id], [code_value]) VALUES (N'SC9', N'Email Validated')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__job_seek__AB6E6164D9EFD219]    Script Date: 26/10/2024 2:30:32 CH ******/
ALTER TABLE [dbo].[job_seeker_user_login_data] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[job_seeker_applicant_profile_saved] ADD  DEFAULT (getdate()) FOR [is_created_at]
GO
ALTER TABLE [dbo].[job_seeker_applicant_profile_saved] ADD  DEFAULT (getdate()) FOR [is_updated_at]
GO
ALTER TABLE [dbo].[job_seeker_candidate_profile] ADD  DEFAULT (newsequentialid()) FOR [candidate_id]
GO
ALTER TABLE [dbo].[job_seeker_candidate_profile] ADD  DEFAULT ((0)) FOR [is_allowed_public]
GO
ALTER TABLE [dbo].[job_seeker_candidate_profile] ADD  DEFAULT (getdate()) FOR [is_created_at]
GO
ALTER TABLE [dbo].[job_seeker_candidate_profile] ADD  DEFAULT (getdate()) FOR [is_updated_at]
GO
ALTER TABLE [dbo].[job_seeker_certificate] ADD  DEFAULT (newsequentialid()) FOR [certificate_id]
GO
ALTER TABLE [dbo].[job_seeker_certificate] ADD  DEFAULT (getdate()) FOR [is_created_at]
GO
ALTER TABLE [dbo].[job_seeker_certificate] ADD  DEFAULT (getdate()) FOR [is_updated_at]
GO
ALTER TABLE [dbo].[job_seeker_education_detail] ADD  DEFAULT (newsequentialid()) FOR [education_id]
GO
ALTER TABLE [dbo].[job_seeker_education_detail] ADD  DEFAULT (getdate()) FOR [is_created_at]
GO
ALTER TABLE [dbo].[job_seeker_education_detail] ADD  DEFAULT (getdate()) FOR [is_updated_at]
GO
ALTER TABLE [dbo].[job_seeker_enterprise] ADD  DEFAULT (newsequentialid()) FOR [enterprise_id]
GO
ALTER TABLE [dbo].[job_seeker_enterprise] ADD  DEFAULT (getdate()) FOR [is_created_at]
GO
ALTER TABLE [dbo].[job_seeker_enterprise] ADD  DEFAULT (getdate()) FOR [is_updated_at]
GO
ALTER TABLE [dbo].[job_seeker_job_category] ADD  DEFAULT (getdate()) FOR [is_created_at]
GO
ALTER TABLE [dbo].[job_seeker_job_category] ADD  DEFAULT (getdate()) FOR [is_updated_at]
GO
ALTER TABLE [dbo].[job_seeker_job_posting] ADD  DEFAULT (newsequentialid()) FOR [id]
GO
ALTER TABLE [dbo].[job_seeker_job_posting] ADD  DEFAULT (getdate()) FOR [time_post]
GO
ALTER TABLE [dbo].[job_seeker_job_posting] ADD  DEFAULT ((0)) FOR [is_urgent]
GO
ALTER TABLE [dbo].[job_seeker_job_posting] ADD  DEFAULT ((0)) FOR [is_hot]
GO
ALTER TABLE [dbo].[job_seeker_job_posting] ADD  DEFAULT (getdate()) FOR [is_created_at]
GO
ALTER TABLE [dbo].[job_seeker_job_posting] ADD  DEFAULT (getdate()) FOR [is_updated_at]
GO
ALTER TABLE [dbo].[job_seeker_job_posting_apply] ADD  DEFAULT (getdate()) FOR [apply_time]
GO
ALTER TABLE [dbo].[job_seeker_notification] ADD  DEFAULT (getdate()) FOR [is_created_at]
GO
ALTER TABLE [dbo].[job_seeker_notification] ADD  DEFAULT ((0)) FOR [is_sent]
GO
ALTER TABLE [dbo].[job_seeker_notification] ADD  DEFAULT ((0)) FOR [is_seen]
GO
ALTER TABLE [dbo].[job_seeker_notification] ADD  DEFAULT ((0)) FOR [is_deleted]
GO
ALTER TABLE [dbo].[job_seeker_recruiter_profile] ADD  DEFAULT (newsequentialid()) FOR [recruiter_id]
GO
ALTER TABLE [dbo].[job_seeker_recruiter_profile] ADD  DEFAULT (getdate()) FOR [is_created_at]
GO
ALTER TABLE [dbo].[job_seeker_recruiter_profile] ADD  DEFAULT (getdate()) FOR [is_updated_at]
GO
ALTER TABLE [dbo].[job_seeker_saved_job_posting] ADD  DEFAULT (getdate()) FOR [saved_at]
GO
ALTER TABLE [dbo].[job_seeker_user_login_data] ADD  DEFAULT (newsequentialid()) FOR [id]
GO
ALTER TABLE [dbo].[job_seeker_user_login_data] ADD  DEFAULT ((0)) FOR [email_verified]
GO
ALTER TABLE [dbo].[job_seeker_user_login_data] ADD  DEFAULT ((0)) FOR [is_active]
GO
ALTER TABLE [dbo].[job_seeker_user_login_data] ADD  DEFAULT (getdate()) FOR [is_created_at]
GO
ALTER TABLE [dbo].[job_seeker_user_login_data] ADD  DEFAULT (getdate()) FOR [is_updated_at]
GO
ALTER TABLE [dbo].[job_seeker_user_login_data_external] ADD  DEFAULT (newsequentialid()) FOR [id]
GO
ALTER TABLE [dbo].[job_seeker_user_login_data_external] ADD  DEFAULT (getdate()) FOR [is_created_at]
GO
ALTER TABLE [dbo].[job_seeker_user_login_data_external] ADD  DEFAULT (getdate()) FOR [is_updated_at]
GO
ALTER TABLE [dbo].[job_seeker_working_experience] ADD  DEFAULT (newsequentialid()) FOR [working_exp_id]
GO
ALTER TABLE [dbo].[job_seeker_working_experience] ADD  DEFAULT (getdate()) FOR [is_created_at]
GO
ALTER TABLE [dbo].[job_seeker_working_experience] ADD  DEFAULT (getdate()) FOR [is_updated_at]
GO
ALTER TABLE [dbo].[authentication_granted_permissions]  WITH CHECK ADD  CONSTRAINT [permission_id_fk] FOREIGN KEY([permission_id])
REFERENCES [dbo].[authentication_permission] ([permission_id])
GO
ALTER TABLE [dbo].[authentication_granted_permissions] CHECK CONSTRAINT [permission_id_fk]
GO
ALTER TABLE [dbo].[authentication_granted_permissions]  WITH CHECK ADD  CONSTRAINT [role_id_fk] FOREIGN KEY([role_id])
REFERENCES [dbo].[authentication_role] ([role_id])
GO
ALTER TABLE [dbo].[authentication_granted_permissions] CHECK CONSTRAINT [role_id_fk]
GO
ALTER TABLE [dbo].[job_seeker_applicant_profile_saved]  WITH CHECK ADD  CONSTRAINT [profile_saved_candidate_id_fk] FOREIGN KEY([candidate_id])
REFERENCES [dbo].[job_seeker_candidate_profile] ([candidate_id])
GO
ALTER TABLE [dbo].[job_seeker_applicant_profile_saved] CHECK CONSTRAINT [profile_saved_candidate_id_fk]
GO
ALTER TABLE [dbo].[job_seeker_applicant_profile_saved]  WITH CHECK ADD  CONSTRAINT [profile_saved_enterprise_id_fk] FOREIGN KEY([enterprise_id])
REFERENCES [dbo].[job_seeker_enterprise] ([enterprise_id])
GO
ALTER TABLE [dbo].[job_seeker_applicant_profile_saved] CHECK CONSTRAINT [profile_saved_enterprise_id_fk]
GO
ALTER TABLE [dbo].[job_seeker_candidate_profile]  WITH CHECK ADD  CONSTRAINT [candidate_id_external_fk] FOREIGN KEY([candidate_id])
REFERENCES [dbo].[job_seeker_user_login_data_external] ([id])
GO
ALTER TABLE [dbo].[job_seeker_candidate_profile] CHECK CONSTRAINT [candidate_id_external_fk]
GO
ALTER TABLE [dbo].[job_seeker_candidate_profile]  WITH CHECK ADD  CONSTRAINT [candidate_id_fk] FOREIGN KEY([candidate_id])
REFERENCES [dbo].[job_seeker_user_login_data] ([id])
GO
ALTER TABLE [dbo].[job_seeker_candidate_profile] CHECK CONSTRAINT [candidate_id_fk]
GO
ALTER TABLE [dbo].[job_seeker_candidate_profile]  WITH CHECK ADD  CONSTRAINT [role_id_two_fk] FOREIGN KEY([role_id])
REFERENCES [dbo].[authentication_role] ([role_id])
GO
ALTER TABLE [dbo].[job_seeker_candidate_profile] CHECK CONSTRAINT [role_id_two_fk]
GO
ALTER TABLE [dbo].[job_seeker_certificate]  WITH CHECK ADD  CONSTRAINT [certificate_candidate_id_fk] FOREIGN KEY([candidate_id])
REFERENCES [dbo].[job_seeker_candidate_profile] ([candidate_id])
GO
ALTER TABLE [dbo].[job_seeker_certificate] CHECK CONSTRAINT [certificate_candidate_id_fk]
GO
ALTER TABLE [dbo].[job_seeker_district]  WITH CHECK ADD  CONSTRAINT [province_code_fk] FOREIGN KEY([province_code])
REFERENCES [dbo].[job_seeker_province] ([code])
GO
ALTER TABLE [dbo].[job_seeker_district] CHECK CONSTRAINT [province_code_fk]
GO
ALTER TABLE [dbo].[job_seeker_education_detail]  WITH CHECK ADD  CONSTRAINT [education_detail_candidate_id_fk] FOREIGN KEY([candidate_id])
REFERENCES [dbo].[job_seeker_candidate_profile] ([candidate_id])
GO
ALTER TABLE [dbo].[job_seeker_education_detail] CHECK CONSTRAINT [education_detail_candidate_id_fk]
GO
ALTER TABLE [dbo].[job_seeker_enterprise]  WITH CHECK ADD  CONSTRAINT [job_field_id_fk] FOREIGN KEY([job_field_id])
REFERENCES [dbo].[job_seeker_job_field] ([job_field_id])
GO
ALTER TABLE [dbo].[job_seeker_enterprise] CHECK CONSTRAINT [job_field_id_fk]
GO
ALTER TABLE [dbo].[job_seeker_job_posting]  WITH CHECK ADD  CONSTRAINT [job_posting_enterprise_id_fk] FOREIGN KEY([enterprise_id])
REFERENCES [dbo].[job_seeker_enterprise] ([enterprise_id])
GO
ALTER TABLE [dbo].[job_seeker_job_posting] CHECK CONSTRAINT [job_posting_enterprise_id_fk]
GO
ALTER TABLE [dbo].[job_seeker_job_posting]  WITH CHECK ADD  CONSTRAINT [job_posting_job_category_id_fk] FOREIGN KEY([job_category_id])
REFERENCES [dbo].[job_seeker_job_category] ([id])
GO
ALTER TABLE [dbo].[job_seeker_job_posting] CHECK CONSTRAINT [job_posting_job_category_id_fk]
GO
ALTER TABLE [dbo].[job_seeker_job_posting]  WITH CHECK ADD  CONSTRAINT [job_posting_job_level_code_fk] FOREIGN KEY([job_level_code])
REFERENCES [dbo].[job_seeker_job_level] ([id])
GO
ALTER TABLE [dbo].[job_seeker_job_posting] CHECK CONSTRAINT [job_posting_job_level_code_fk]
GO
ALTER TABLE [dbo].[job_seeker_job_posting]  WITH CHECK ADD  CONSTRAINT [job_posting_status_code_fk] FOREIGN KEY([status_code])
REFERENCES [dbo].[job_seeker_status_code] ([id])
GO
ALTER TABLE [dbo].[job_seeker_job_posting] CHECK CONSTRAINT [job_posting_status_code_fk]
GO
ALTER TABLE [dbo].[job_seeker_job_posting_apply]  WITH CHECK ADD  CONSTRAINT [job_apply_candidate_id_fk] FOREIGN KEY([candidate_id])
REFERENCES [dbo].[job_seeker_candidate_profile] ([candidate_id])
GO
ALTER TABLE [dbo].[job_seeker_job_posting_apply] CHECK CONSTRAINT [job_apply_candidate_id_fk]
GO
ALTER TABLE [dbo].[job_seeker_job_posting_apply]  WITH CHECK ADD  CONSTRAINT [job_apply_status_code_fk] FOREIGN KEY([status_code])
REFERENCES [dbo].[job_seeker_status_code] ([id])
GO
ALTER TABLE [dbo].[job_seeker_job_posting_apply] CHECK CONSTRAINT [job_apply_status_code_fk]
GO
ALTER TABLE [dbo].[job_seeker_job_posting_apply]  WITH CHECK ADD  CONSTRAINT [job_posting_id_fk] FOREIGN KEY([job_posting_id])
REFERENCES [dbo].[job_seeker_job_posting] ([id])
GO
ALTER TABLE [dbo].[job_seeker_job_posting_apply] CHECK CONSTRAINT [job_posting_id_fk]
GO
ALTER TABLE [dbo].[job_seeker_notification]  WITH CHECK ADD  CONSTRAINT [job_posting_notify_id_fk] FOREIGN KEY([job_id])
REFERENCES [dbo].[job_seeker_job_posting] ([id])
GO
ALTER TABLE [dbo].[job_seeker_notification] CHECK CONSTRAINT [job_posting_notify_id_fk]
GO
ALTER TABLE [dbo].[job_seeker_notification]  WITH CHECK ADD  CONSTRAINT [notify_type_id_fk] FOREIGN KEY([notify_type_id])
REFERENCES [dbo].[job_seeker_notification_type] ([id])
GO
ALTER TABLE [dbo].[job_seeker_notification] CHECK CONSTRAINT [notify_type_id_fk]
GO
ALTER TABLE [dbo].[job_seeker_notification]  WITH CHECK ADD  CONSTRAINT [user_login_data_id_fk] FOREIGN KEY([user_login_data_id])
REFERENCES [dbo].[job_seeker_user_login_data] ([id])
GO
ALTER TABLE [dbo].[job_seeker_notification] CHECK CONSTRAINT [user_login_data_id_fk]
GO
ALTER TABLE [dbo].[job_seeker_recruiter_profile]  WITH CHECK ADD  CONSTRAINT [enterprise_id_fk] FOREIGN KEY([enterprise_id])
REFERENCES [dbo].[job_seeker_enterprise] ([enterprise_id])
GO
ALTER TABLE [dbo].[job_seeker_recruiter_profile] CHECK CONSTRAINT [enterprise_id_fk]
GO
ALTER TABLE [dbo].[job_seeker_recruiter_profile]  WITH CHECK ADD  CONSTRAINT [recruiter_id_fk] FOREIGN KEY([recruiter_id])
REFERENCES [dbo].[job_seeker_user_login_data] ([id])
GO
ALTER TABLE [dbo].[job_seeker_recruiter_profile] CHECK CONSTRAINT [recruiter_id_fk]
GO
ALTER TABLE [dbo].[job_seeker_recruiter_profile]  WITH CHECK ADD  CONSTRAINT [role_id_three_fk] FOREIGN KEY([role_id])
REFERENCES [dbo].[authentication_role] ([role_id])
GO
ALTER TABLE [dbo].[job_seeker_recruiter_profile] CHECK CONSTRAINT [role_id_three_fk]
GO
ALTER TABLE [dbo].[job_seeker_saved_job_posting]  WITH CHECK ADD  CONSTRAINT [saved_job_candidate_id_fk] FOREIGN KEY([candidate_id])
REFERENCES [dbo].[job_seeker_candidate_profile] ([candidate_id])
GO
ALTER TABLE [dbo].[job_seeker_saved_job_posting] CHECK CONSTRAINT [saved_job_candidate_id_fk]
GO
ALTER TABLE [dbo].[job_seeker_saved_job_posting]  WITH CHECK ADD  CONSTRAINT [saved_job_posting_id_fk] FOREIGN KEY([job_posting_id])
REFERENCES [dbo].[job_seeker_job_posting] ([id])
GO
ALTER TABLE [dbo].[job_seeker_saved_job_posting] CHECK CONSTRAINT [saved_job_posting_id_fk]
GO
ALTER TABLE [dbo].[job_seeker_user_login_data]  WITH CHECK ADD  CONSTRAINT [user_login_data_status_code_fk] FOREIGN KEY([status_code])
REFERENCES [dbo].[job_seeker_status_code] ([id])
GO
ALTER TABLE [dbo].[job_seeker_user_login_data] CHECK CONSTRAINT [user_login_data_status_code_fk]
GO
ALTER TABLE [dbo].[job_seeker_ward]  WITH CHECK ADD  CONSTRAINT [district_code_fk] FOREIGN KEY([district_code])
REFERENCES [dbo].[job_seeker_district] ([code])
GO
ALTER TABLE [dbo].[job_seeker_ward] CHECK CONSTRAINT [district_code_fk]
GO
ALTER TABLE [dbo].[job_seeker_working_experience]  WITH CHECK ADD  CONSTRAINT [working_exp_candidate_id_fk] FOREIGN KEY([candidate_id])
REFERENCES [dbo].[job_seeker_candidate_profile] ([candidate_id])
GO
ALTER TABLE [dbo].[job_seeker_working_experience] CHECK CONSTRAINT [working_exp_candidate_id_fk]
GO
ALTER TABLE [dbo].[job_seeker_candidate_profile]  WITH CHECK ADD CHECK  (([gender]='Khác' OR [gender]='N?' OR [gender]='Nam'))
GO
ALTER TABLE [dbo].[job_seeker_education_detail]  WITH CHECK ADD CHECK  (([degree]='K? Su' OR [degree]='Ti?n Si' OR [degree]='Th?c Si' OR [degree]='C? Nhân'))
GO
ALTER TABLE [dbo].[job_seeker_job_posting]  WITH CHECK ADD CHECK  (([academic_level]='THPT' OR [academic_level]='Trung C?p' OR [academic_level]='Cao Ð?ng' OR [academic_level]='Ð?i H?c'))
GO
ALTER TABLE [dbo].[job_seeker_job_posting]  WITH CHECK ADD CHECK  (([gender_require]='Không yêu c?u' OR [gender_require]='N?' OR [gender_require]='Nam'))
GO
