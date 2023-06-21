USE [QuanlyLuong]
GO
/****** Object:  Table [dbo].[tblChucvu]    Script Date: 19/4/2023 10:42:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChucvu](
	[MaCV] [nvarchar](10) NOT NULL,
	[Chucvu] [nvarchar](50) NOT NULL,
	[Hesophucap] [float] NOT NULL,
	[HSLtangthem] [float] NULL,
 CONSTRAINT [PK_tblChucvu] PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNhanvien]    Script Date: 19/4/2023 10:42:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhanvien](
	[MaNV] [nvarchar](10) NOT NULL,
	[Hoten] [nvarchar](50) NOT NULL,
	[Namsinh] [date] NULL,
	[Gioitinh] [nvarchar](10) NULL,
	[Donvi] [nvarchar](50) NULL,
	[MaCV] [nvarchar](10) NOT NULL,
	[Hesoluong] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblThidua]    Script Date: 19/4/2023 10:42:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblThidua](
	[MaNV] [nvarchar](10) NOT NULL,
	[Thang] [int] NOT NULL,
	[Hesothidua] [float] NOT NULL,
 CONSTRAINT [PK_tblThidua] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblNhanvien]  WITH CHECK ADD  CONSTRAINT [FK_tblNhanvien_tblChucvu] FOREIGN KEY([MaCV])
REFERENCES [dbo].[tblChucvu] ([MaCV])
GO
ALTER TABLE [dbo].[tblNhanvien] CHECK CONSTRAINT [FK_tblNhanvien_tblChucvu]
GO
ALTER TABLE [dbo].[tblNhanvien]  WITH CHECK ADD  CONSTRAINT [FK_tblNhanvien_tblThidua] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblThidua] ([MaNV])
GO
ALTER TABLE [dbo].[tblNhanvien] CHECK CONSTRAINT [FK_tblNhanvien_tblThidua]
GO
