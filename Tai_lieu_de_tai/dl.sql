USE [CMS]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/18/2019 1:42:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CateID] [int] IDENTITY(1,1) NOT NULL,
	[CateName] [nvarchar](150) NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/18/2019 1:42:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProdID] [int] IDENTITY(1,1) NOT NULL,
	[ProdName] [nvarchar](200) NOT NULL,
	[ImageUrl] [nvarchar](4000) NULL,
	[Decription] [ntext] NULL,
	[Cost] [int] NOT NULL,
	[isActive] [bit] NOT NULL,
	[CateID] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
	[Wantity] [int] NULL,
	[Saving_Cost] [int] NULL,
	[Album] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProdID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CateID], [CateName], [isActive], [CreatedAt], [UpdatedAt]) VALUES (1, N'Quần Nam', 1, CAST(0x0000AA5000000000 AS DateTime), NULL)
INSERT [dbo].[Category] ([CateID], [CateName], [isActive], [CreatedAt], [UpdatedAt]) VALUES (2, N'Áo Thun Nam', 1, CAST(0x0000AA5000000000 AS DateTime), NULL)
INSERT [dbo].[Category] ([CateID], [CateName], [isActive], [CreatedAt], [UpdatedAt]) VALUES (3, N'Váy', 1, CAST(0x0000AA4600000000 AS DateTime), NULL)
INSERT [dbo].[Category] ([CateID], [CateName], [isActive], [CreatedAt], [UpdatedAt]) VALUES (5, N'Áo Khoác Nam', 1, CAST(0x0000AA5000000000 AS DateTime), NULL)
INSERT [dbo].[Category] ([CateID], [CateName], [isActive], [CreatedAt], [UpdatedAt]) VALUES (6, N'Quần Nữ', 1, CAST(0x0000AA5000000000 AS DateTime), NULL)
INSERT [dbo].[Category] ([CateID], [CateName], [isActive], [CreatedAt], [UpdatedAt]) VALUES (7, N'Áo Thun Nữ', 1, CAST(0x0000AA5000000000 AS DateTime), NULL)
INSERT [dbo].[Category] ([CateID], [CateName], [isActive], [CreatedAt], [UpdatedAt]) VALUES (8, N'Áo Khoác Nữ', 1, CAST(0x0000AA5000000000 AS DateTime), NULL)
INSERT [dbo].[Category] ([CateID], [CateName], [isActive], [CreatedAt], [UpdatedAt]) VALUES (9, N'Áo Sơ Mi Nam', 1, CAST(0x0000AA5000000000 AS DateTime), NULL)
INSERT [dbo].[Category] ([CateID], [CateName], [isActive], [CreatedAt], [UpdatedAt]) VALUES (10, N'Chân Váy', 1, CAST(0x0000AA4600000000 AS DateTime), NULL)
INSERT [dbo].[Category] ([CateID], [CateName], [isActive], [CreatedAt], [UpdatedAt]) VALUES (11, N'Áo Sơ Mi Nữ', 1, CAST(0x0000AA5000000000 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProdID], [ProdName], [ImageUrl], [Decription], [Cost], [isActive], [CateID], [CreatedAt], [UpdatedAt], [Wantity], [Saving_Cost], [Album]) VALUES (5, N'Jackets Casual Chevron', N'/Assets/Data/Images/aokhoacnu11.jpg', N'Vòng cổ:	áo có mũ
Màu sắc :	Màu xanh lam
Chi tiết:	Dây kéo, Tương phản Mesh
Fabric:	Vải không có căng
Loại Phù hợp:	Phù hợp thường
Chiều dài:	Thường xuyên
Thành phần:	97% Polyester, 3% Spandex
Kiểu mẫu:	Chevron, Ngụy trang
Túi đeo tay:	Dây kéo
Mùa:	Mùa xuân
Chiều dài tay:	Tay áo dài
Phong cách:	Thể thao
Kiểu:	áo có mũ và dây kéo', 300000, 1, 8, CAST(0x0000AA5100000000 AS DateTime), NULL, 10, 250000, N'/Assets/Data/Images/aokhoacnu12.jpg|/Assets/Data/Images/aokhoacnu13.jpg')
INSERT [dbo].[Product] ([ProdID], [ProdName], [ImageUrl], [Decription], [Cost], [isActive], [CateID], [CreatedAt], [UpdatedAt], [Wantity], [Saving_Cost], [Album]) VALUES (8, N'Jackets Dây Kéo Hoa Màu Đen Casual', N'/Assets/Data/Images/aokhoacnu21.jpg', N'Vòng cổ:	Đứng cổ áo
Màu sắc :	màu đen
Chi tiết:	Dây kéo
Fabric:	Vải có một số căng
Loại Phù hợp:	Phù hợp thường
Chiều dài:	Thường xuyên
Thành phần:	95% Polyester, 5% Spandex
Kiểu mẫu:	Hoa
Túi đeo tay:	Dây kéo
Mùa:	Mùa xuân/thu
Chiều dài tay:	Tay áo dài
Phong cách:	Boho
Kiểu:	áo bomber', 250000, 1, 8, CAST(0x0000AA5100000000 AS DateTime), NULL, 10, 230000, N'/Assets/Data/Images/aokhoacnu22.jpg|/Assets/Data/Images/aokhoacnu23.jpg')
INSERT [dbo].[Product] ([ProdID], [ProdName], [ImageUrl], [Decription], [Cost], [isActive], [CateID], [CreatedAt], [UpdatedAt], [Wantity], [Saving_Cost], [Album]) VALUES (10, N'Áo Sơ Mi Nút Màu Trơn Hồng Tao Nhã', N'/Assets/Data/Images/aosominu11.jpg', N'Vòng cổ:	Vòng cổ
Màu sắc :	Hồng
Chi tiết:	Ruffle Hem, Nút
Fabric:	Vải không có căng
Loại Phù hợp:	Phù hợp thường
Chiều dài:	Thường xuyên
Thành phần:	100% Polyester
Kiểu mẫu:	màu trơn
Mùa:	Mùa hè
Loại áo sơ mi:	Peplum
Chiều dài tay:	Ngắn tay
Phong cách:	Tao nhã
Hình hem:	Bùng nổ
Loại túi váy:	Áo chui
Vật liệu:	Polyester', 255000, 1, 11, CAST(0x0000AA5100000000 AS DateTime), NULL, 10, 225000, N'/Assets/Data/Images/aosominu12.jpg|/Assets/Data/Images/aosominu13.jpg')
INSERT [dbo].[Product] ([ProdID], [ProdName], [ImageUrl], [Decription], [Cost], [isActive], [CateID], [CreatedAt], [UpdatedAt], [Wantity], [Saving_Cost], [Album]) VALUES (11, N'Áo Sơ Mi Casual Sọc Nút Nhiều Màu', N'/Assets/Data/Images/aosominu21.jpg', N'Trang phục Aribian :	Vâng
Vòng cổ:	Cổ không đối xứng
Màu sắc :	Nhiều màu
Chi tiết:	Nút
Fabric:	Vải không có căng
Loại Phù hợp:	Phù hợp thường
Chiều dài:	Thường xuyên
Thành phần:	Polyester
Kiểu mẫu:	Sọc
Mùa:	Mùa xuân/thu
Loại áo sơ mi:	Áo sơ mi
Chiều dài tay:	Tay áo dài
Loại tay áo:	Tay thường
Phong cách:	Casual
Loại túi váy:	Không nút', 324000, 1, 11, CAST(0x0000AA5100000000 AS DateTime), NULL, 10, 315000, N'/Assets/Data/Images/aosominu22.jpg|/Assets/Data/Images/aosominu23.jpg')
INSERT [dbo].[Product] ([ProdID], [ProdName], [ImageUrl], [Decription], [Cost], [isActive], [CateID], [CreatedAt], [UpdatedAt], [Wantity], [Saving_Cost], [Album]) VALUES (13, N'SHEIN Áo Thun Khối Màu Báo Trắng Casual', N'/Assets/Data/Images/aothunnu11.jpg', N'Màu sắc :	trắng
Chi tiết:	Khối Màu
Fabric:	Vải có một số căng
Loại Phù hợp:	Phù hợp thường
Chiều dài:	Thường xuyên
Thành phần:	95% Polyester, 5% Spandex
Viền :	Vòng cổ
Kiểu mẫu:	Sọc, Báo
Mùa:	Mùa hè
Chiều dài tay:	Ngắn tay
Phong cách:	Casual
Loại túi váy:	Áo chui', 187000, 1, 7, CAST(0x0000AA5100000000 AS DateTime), NULL, 10, 150000, N'/Assets/Data/Images/aothunnu11.jpg|/Assets/Data/Images/aothunnu11.jpg')
INSERT [dbo].[Product] ([ProdID], [ProdName], [ImageUrl], [Decription], [Cost], [isActive], [CateID], [CreatedAt], [UpdatedAt], [Wantity], [Saving_Cost], [Album]) VALUES (16, N'SHEIN Áo Thun Khối Màu Chevron Nhiều Màu Casual', N'/Assets/Data/Images/aothunnu31.jpg', N'Màu sắc :	Nhiều màu
Chi tiết:	Khối Màu
Fabric:	Vải có một số căng
Loại Phù hợp:	Phù hợp thường
Chiều dài:	Thường xuyên
Thành phần:	95% Bông, 5% Spandex
Viền :	Vòng cổ
Kiểu mẫu:	Chevron
Mùa:	Mùa hè
Chiều dài tay:	Ngắn tay
Phong cách:	Casual
Loại túi váy:	Áo chui', 208000, 1, 7, CAST(0x0000AA5100000000 AS DateTime), NULL, 10, 200000, N'/Assets/Data/Images/aothunnu32.jpg|/Assets/Data/Images/aothunnu33.jpg')
INSERT [dbo].[Product] ([ProdID], [ProdName], [ImageUrl], [Decription], [Cost], [isActive], [CateID], [CreatedAt], [UpdatedAt], [Wantity], [Saving_Cost], [Album]) VALUES (17, N'Váy Plus Size Chia Màu Trơn Màu Đen Tao Nhã', N'/Assets/Data/Images/chanvay11.jpg', N'Màu sắc :	màu đen
Chi tiết:	Knot, Chia, Dây kéo
Fabric:	Vải không có căng
Loại Phù hợp:	Thường xuyên
Thành phần:	Polyester
Kiểu mẫu:	màu trơn
Mùa:	Mùa xuân/Mùa hè/Mùa thu
Phong cách:	Tao nhã
Kiểu:	Một Line
Vật liệu:	Polyester', 301000, 1, 10, CAST(0x0000AA5100000000 AS DateTime), NULL, 10, 289000, N'/Assets/Data/Images/chanvay12.jpg|/Assets/Data/Images/chanvay13.jpg')
INSERT [dbo].[Product] ([ProdID], [ProdName], [ImageUrl], [Decription], [Cost], [isActive], [CateID], [CreatedAt], [UpdatedAt], [Wantity], [Saving_Cost], [Album]) VALUES (18, N'SHEIN Váy Plus Size Cắt Ra Màu Trơn Màu Đen Casual', N'/Assets/Data/Images/chanvay21.jpg', N'Màu sắc :	màu đen
Chi tiết:	Cắt ra, Sò điệp
Fabric:	Vải có một số căng
Loại Phù hợp:	Thường xuyên
Thành phần:	95% Polyester, 5% Spandex
Kiểu mẫu:	màu trơn
Mùa:	Mùa xuân/Mùa hè
Phong cách:	Tao nhã
Kiểu:	Một Line', 255000, 1, 10, CAST(0x0000AA5100000000 AS DateTime), NULL, 10, 245000, N'/Assets/Data/Images/chanvay22.jpg|/Assets/Data/Images/chanvay23.jpg')
INSERT [dbo].[Product] ([ProdID], [ProdName], [ImageUrl], [Decription], [Cost], [isActive], [CateID], [CreatedAt], [UpdatedAt], [Wantity], [Saving_Cost], [Album]) VALUES (19, N'Denim Plus Size Bị Tách Màu Trơn Màu Xanh Lam Casual', N'/Assets/Data/Images/quannu11.jpg', N'loại đóng kín:	Nút bay
Màu sắc :	Màu xanh lam
Chi tiết:	Bị tách
Fabric:	Vải có một số căng
Thành phần:	100% Polyester
Kiểu mẫu:	màu trơn
Mùa:	Tất cả
Phong cách:	Casual
Kiểu:	Quần jean
Vòng eo:	Tự nhiên
Vật liệu:	Denim/jean', 533000, 1, 6, CAST(0x0000AA5100000000 AS DateTime), NULL, 10, 533000, N'/Assets/Data/Images/quannu12.jpg|/Assets/Data/Images/quannu13.jpg')
INSERT [dbo].[Product] ([ProdID], [ProdName], [ImageUrl], [Decription], [Cost], [isActive], [CateID], [CreatedAt], [UpdatedAt], [Wantity], [Saving_Cost], [Album]) VALUES (20, N'SHEIN Denim Plus Size Nút Màu Trơn Màu Đen Casua', N'/Assets/Data/Images/quannu21.jpg', N'loại đóng kín:	Nút bay, Zipper Fly
Màu sắc :	màu đen
Chi tiết:	Nút, Túi, Dây kéo
Fabric:	Vải rất giãn
Thành phần:	85% Bông, Denim/jean, 13% Polyester, 2% Spandex
Kiểu mẫu:	màu trơn
Mùa:	Tất cả
Phong cách:	Casual
Kiểu:	Quần jean
Vòng eo:	Tự nhiên', 550000, 1, 6, CAST(0x0000AA5100000000 AS DateTime), NULL, 10, 500000, N'/Assets/Data/Images/quannu22.jpg|/Assets/Data/Images/quannu23.jpg')
INSERT [dbo].[Product] ([ProdID], [ProdName], [ImageUrl], [Decription], [Cost], [isActive], [CateID], [CreatedAt], [UpdatedAt], [Wantity], [Saving_Cost], [Album]) VALUES (21, N'Đầm Knot Màu Trơn Màu Đen Tao Nhã', N'/Assets/Data/Images/vay21.jpg', N'Thắt lưng:	Không
Pad ngực:	Không
Màu sắc :	màu đen
Chi tiết:	Tương phản ren, Knot
Đầm dài:	Ngắn
Fabric:	Vải rất giãn
Vải lót:	Không
Thành phần:	100% Polyester
Viền :	Cổ v
Kiểu mẫu:	màu trơn
Mùa:	Mùa xuân/Mùa hè
Hình bóng:	vỏ kiếm
Chiều dài tay:	Ngắn tay
Loại tay áo:	Tay Raglan
Phong cách:	Classy, Tao nhã
Vòng eo:	Vòng eo cao
Hình hem:	Bất đối xứng
Tuổi:	Trẻ
Vật liệu:	Polyester
Quốc gia:	US', 394000, 1, 3, CAST(0x0000AA5100000000 AS DateTime), NULL, 10, 390000, N'/Assets/Data/Images/vay22.jpg|/Assets/Data/Images/vqy23.jpg')
INSERT [dbo].[Product] ([ProdID], [ProdName], [ImageUrl], [Decription], [Cost], [isActive], [CateID], [CreatedAt], [UpdatedAt], [Wantity], [Saving_Cost], [Album]) VALUES (22, N'SHEIN Đầm Cắt Ra Màu Trơn Trắng Boho', N'/Assets/Data/Images/vay11.jpg', N'Thắt lưng:	Vâng
Màu sắc :	trắng
Chi tiết:	Cắt ra, Belted
Đầm dài:	Ngắn
Fabric:	Vải không có căng
Thành phần:	100% Bông
Viền :	Bỏ khỏi vai
Kiểu mẫu:	màu trơn
Mùa:	Mùa hè
Hình bóng:	thay đổi
Chiều dài tay:	Ngắn tay
Loại tay áo:	Tay thường
Phong cách:	Boho
Kiểu:	Áo khoác
Vòng eo:	Tự nhiên
Loại Quần áo:	H
Hình hem:	Thẳng
Tuổi:	Trẻ
Vật liệu:	schiffy
Quốc gia:	US, FR', 463000, 1, 3, CAST(0x0000AA5100000000 AS DateTime), NULL, 10, 463000, N'/Assets/Data/Images/vay12.jpg|/Assets/Data/Images/vqy13.jpg')
INSERT [dbo].[Product] ([ProdID], [ProdName], [ImageUrl], [Decription], [Cost], [isActive], [CateID], [CreatedAt], [UpdatedAt], [Wantity], [Saving_Cost], [Album]) VALUES (23, N'Men Jeans Bị Tách Màu Xanh Lam Casual', N'/Assets/Data/Images/quannam11.jpg', N'loại đóng kín:	Nút bay
Màu sắc :	Màu xanh lam
Chi tiết:	Nghề thêu, Đắp vá, Bị tách
Fabric:	Vải không có căng
Loại Phù hợp:	Thường xuyên
Thành phần:	98% Bông, 2% Spandex
Chiều dài quần:	Mùa vụ
Loại quần:	Chân thẳng
Mùa:	Mùa xuân/Mùa hè
Phong cách:	Casual
Loại eo:	giữa eo
Vật liệu:	Denim/jean', 835000, 1, 1, CAST(0x0000AA5100000000 AS DateTime), NULL, 10, 835000, N'/Assets/Data/Images/quannam12.jpg|/Assets/Data/Images/quannam13.jpg')
INSERT [dbo].[Product] ([ProdID], [ProdName], [ImageUrl], [Decription], [Cost], [isActive], [CateID], [CreatedAt], [UpdatedAt], [Wantity], [Saving_Cost], [Album]) VALUES (24, N'Men Jeans Nút Màu Trơn Màu Đen Phong Cách Campus', N'/Assets/Data/Images/quannam21.jpg', N'loại đóng kín:	Nút bay
Màu sắc :	màu đen
Chi tiết:	Bị tách, Nút
Fabric:	Vải có một số căng
Loại Phù hợp:	Thường xuyên
Thành phần:	80% Bông, 20% Polyester
Chiều dài quần:	Dài
Loại quần:	Hình nón/ cà rốt
Kiểu mẫu:	màu trơn
Mùa:	Mùa xuân
Phong cách:	Phong cách Campus
Loại eo:	giữa eo
Vật liệu:	Denim/jean', 603000, 1, 1, CAST(0x0000AA5100000000 AS DateTime), NULL, 10, 603000, N'/Assets/Data/Images/quannam22.jpg|/Assets/Data/Images/quannam23.jpg')
INSERT [dbo].[Product] ([ProdID], [ProdName], [ImageUrl], [Decription], [Cost], [isActive], [CateID], [CreatedAt], [UpdatedAt], [Wantity], [Saving_Cost], [Album]) VALUES (25, N'SHEIN Tops Nam Hoa Màu Đen Casual', N'/Assets/Data/Images/aothunnam11.jpg', N'Màu sắc :	màu đen
Fabric:	Vải có một số căng
Loại Phù hợp:	Phù hợp thường
Chiều dài:	Thường xuyên
Thành phần:	95% Bông, 5% Spandex
Viền :	Vòng cổ
Kiểu mẫu:	Hoa
Mùa:	Mùa hè
Chiều dài tay:	Ngắn tay
Phong cách:	Casual
Loại túi váy:	Áo chui', 279000, 1, 2, CAST(0x0000AA5100000000 AS DateTime), NULL, 10, 250000, N'/Assets/Data/Images/aothunnam12.jpg|/Assets/Data/Images/aothunnam13.jpg')
INSERT [dbo].[Product] ([ProdID], [ProdName], [ImageUrl], [Decription], [Cost], [isActive], [CateID], [CreatedAt], [UpdatedAt], [Wantity], [Saving_Cost], [Album]) VALUES (27, N'Tops Nam Rau Quả Trắng Casual', N'/Assets/Data/Images/aothunnam21.jpg', N'Màu sắc :	trắng
Fabric:	Vải có một số căng
Loại Phù hợp:	Phù hợp thường
Chiều dài:	Thường xuyên
Thành phần:	95% Polyester, 5% Spandex
Viền :	Vòng cổ
Kiểu mẫu:	Rau quả
Mùa:	Mùa hè
Chiều dài tay:	Ngắn tay
Phong cách:	Casual
Loại túi váy:	Áo chui
Vật liệu:	Polyester', 278000, 1, 2, CAST(0x0000AA5100000000 AS DateTime), NULL, 10, 230000, N'/Assets/Data/Images/aothunnam22.jpg|/Assets/Data/Images/aothunnam23.jpg')
INSERT [dbo].[Product] ([ProdID], [ProdName], [ImageUrl], [Decription], [Cost], [isActive], [CateID], [CreatedAt], [UpdatedAt], [Wantity], [Saving_Cost], [Album]) VALUES (29, N'Áo Khoác Nam Màu Trơn Màu Đen Casual', N'/Assets/Data/Images/aokhoacnam11.jpg', N'Vòng cổ:	Đứng cổ áo
Màu sắc :	màu đen
Fabric:	Vải có một số căng
Loại Phù hợp:	Phù hợp thường
Chiều dài:	Thường xuyên
Thành phần:	100% Polyester
Kiểu mẫu:	màu trơn
Túi đeo tay:	Dây kéo
Mùa:	Mùa thu
Chiều dài tay:	Tay áo dài
Phong cách:	Casual
Kiểu:	áo', 626000, 1, 5, CAST(0x0000AA5100000000 AS DateTime), NULL, 10, 500000, N'/Assets/Data/Images/aokhoacnam12.jpg|/Assets/Data/Images/aokhoacnam13.jpg')
INSERT [dbo].[Product] ([ProdID], [ProdName], [ImageUrl], [Decription], [Cost], [isActive], [CateID], [CreatedAt], [UpdatedAt], [Wantity], [Saving_Cost], [Album]) VALUES (30, N'SHEIN Áo Khoác Nam Nút Màu Trơn Xám Casual', N'/Assets/Data/Images/aokhoacnam21.jpg', N'Vòng cổ:	Vòng cổ
Màu sắc :	Xám
Chi tiết:	Nút
Fabric:	Vải không có căng
Loại Phù hợp:	Phù hợp thường
Chiều dài:	Thường xuyên
Thành phần:	Corduroy, 3% Nylon, 97% Polyester
Kiểu mẫu:	màu trơn
Túi đeo tay:	Ngực đơn
Mùa:	Mùa thu
Chiều dài tay:	Tay áo dài
Phong cách:	Casual', 811000, 1, 5, CAST(0x0000AA5100000000 AS DateTime), NULL, 10, 800000, N'/Assets/Data/Images/aokhoacnam22.jpg|/Assets/Data/Images/aokhoacnam23.jpg')
INSERT [dbo].[Product] ([ProdID], [ProdName], [ImageUrl], [Decription], [Cost], [isActive], [CateID], [CreatedAt], [UpdatedAt], [Wantity], [Saving_Cost], [Album]) VALUES (31, N'Men Shirts Túi Nhiệt Đới Trắng Boho', N'/Assets/Data/Images/aosominam11.jpg', N'Vòng cổ:	Vòng cổ
Màu sắc :	trắng
Chi tiết:	Túi
Fabric:	Vải không có căng
Loại Phù hợp:	Phù hợp thường
Chiều dài:	Thường xuyên
Thành phần:	42% Bông, 58% Polyester
Kiểu mẫu:	Nhiệt đới
Mùa:	Mùa hè
Loại áo sơ mi:	Áo sơ mi
Chiều dài tay:	Ngắn tay
Phong cách:	Boho
Loại túi váy:	Không nút
Vật liệu:	Polyester', 348000, 1, 9, CAST(0x0000AA5100000000 AS DateTime), NULL, 10, 310000, N'/Assets/Data/Images/aosominam12.jpg|/Assets/Data/Images/aosominam13.jpg')
INSERT [dbo].[Product] ([ProdID], [ProdName], [ImageUrl], [Decription], [Cost], [isActive], [CateID], [CreatedAt], [UpdatedAt], [Wantity], [Saving_Cost], [Album]) VALUES (32, N'Men Shirts Thú Vật Màu Đen Boho', N'/Assets/Data/Images/aosominam21.jpg', N'Vòng cổ:	Vòng cổ
Màu sắc :	màu đen
Fabric:	Vải không có căng
Loại Phù hợp:	Phù hợp thường
Chiều dài:	Thường xuyên
Thành phần:	42% Bông, 58% Polyester
Kiểu mẫu:	Thú vật, Nhiệt đới
Mùa:	Mùa hè
Loại áo sơ mi:	Áo sơ mi
Chiều dài tay:	Ngắn tay
Phong cách:	Boho
Loại túi váy:	Không nút
Vật liệu:	Polyester', 350000, 1, 9, CAST(0x0000AA5100000000 AS DateTime), NULL, 10, 350000, N'/Assets/Data/Images/aosominam22.jpg|/Assets/Data/Images/aosominam23.jpg')
SET IDENTITY_INSERT [dbo].[Product] OFF
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CateID])
REFERENCES [dbo].[Category] ([CateID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
