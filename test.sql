USE [test]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 2022/1/12 下午 04:35:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[customerid] [int] IDENTITY(1,1) NOT NULL,
	[id] [nvarchar](50) NOT NULL,
	[sex] [nvarchar](50) NOT NULL,
	[phone] [int] NOT NULL,
	[birthday] [nvarchar](50) NOT NULL,
	[gmail] [nvarchar](50) NOT NULL,
	[price] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[customerid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
