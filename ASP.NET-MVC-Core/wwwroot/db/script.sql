USE [research]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [uniqueidentifier] NOT NULL,
	[Plu] [varchar](255) NULL,
	[Ordercode] [int] NULL,
	[Description] [varchar](255) NULL,
	[Cost] [float] NULL,
	[Sell] [float] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[User] ([Id], [Plu], [Ordercode], [Description], [Cost], [Sell]) VALUES (N'0170b8bf-7a0e-4a51-a9cf-00e6fac6649d', N'09300624032441', 262673, N'MT/FRANK M/WTR SPRKL MNG 250ML', 1.36, 2.04)
GO
INSERT [dbo].[User] ([Id], [Plu], [Ordercode], [Description], [Cost], [Sell]) VALUES (N'2eaa065e-b204-4239-a76f-1a0a88510da3', N'09300624033318', 261965, N'MT/FRANK M/WTR LGHT SPRK 250ML', 1.38, 2.06)
GO
INSERT [dbo].[User] ([Id], [Plu], [Ordercode], [Description], [Cost], [Sell]) VALUES (N'f3b1bc54-6226-43e4-a499-248c0d50e468', N'09300624033264', 847876, N'MT/FRANK S/WTR P/APL&MNT 600ML', 2.16, 2.75)
GO
INSERT [dbo].[User] ([Id], [Plu], [Ordercode], [Description], [Cost], [Sell]) VALUES (N'f0e6e93a-6dac-4802-a969-3d92dfc223cc', N'09300624033134', 735744, N'KIRKS SUNNY STARDUST     1.25L', 1.91, 2.25)
GO
INSERT [dbo].[User] ([Id], [Plu], [Ordercode], [Description], [Cost], [Sell]) VALUES (N'49ecf746-ed11-4e0c-9a67-510216392bfe', N'09300624033240', 847839, N'MT/FRANK S/WTR STRWBRY   600ML', 2.16, 2.75)
GO
INSERT [dbo].[User] ([Id], [Plu], [Ordercode], [Description], [Cost], [Sell]) VALUES (N'6d42bc8e-01c7-4cf9-a0ed-774e5c45b71f', N'09300624031390', 665279, N'KIRKS SUMMER SORBET      1.25L', 1.73, 1.98)
GO
INSERT [dbo].[User] ([Id], [Plu], [Ordercode], [Description], [Cost], [Sell]) VALUES (N'54b54790-27ed-4e65-ac22-83d0dd57ec4c', N'09300624033066', 238027, N'KIRKS STKY TOFFEE APL    1.25L', 1.85, 2.13)
GO
INSERT [dbo].[User] ([Id], [Plu], [Ordercode], [Description], [Cost], [Sell]) VALUES (N'eb3bde81-7a59-45e6-8d2c-9ccbcc5cf8ac', N'09300624032489', 262681, N'MT/FRANK M/WTR SPRKL RSP 250ML', 1.36, 2.04)
GO
INSERT [dbo].[User] ([Id], [Plu], [Ordercode], [Description], [Cost], [Sell]) VALUES (N'74777801-e381-4198-8251-a3edd0162937', N'09300624032403', 261973, N',MT/FRANK M/WTR SPRKL LME 250ML', 1.36, 2.04)
GO
INSERT [dbo].[User] ([Id], [Plu], [Ordercode], [Description], [Cost], [Sell]) VALUES (N'b41ad0d6-71e5-428a-a8ab-b462e8fbe57d', N'09300624032359', 895010, N'KIRKS FIZZY FLAMINGO     1.25L', 1.88, 2.16)
GO
INSERT [dbo].[User] ([Id], [Plu], [Ordercode], [Description], [Cost], [Sell]) VALUES (N'c87c8e48-e311-4461-be77-f89657159911', N'09300624033226', 847818, N'MT/FRANK S/WTR LEM/LME   600ML', 2.16, 2.75)
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Id]  DEFAULT (newid()) FOR [Id]
GO