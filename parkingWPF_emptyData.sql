CREATE TABLE [Users](
	[UserId] int identity(1,1) primary key not null,
	[Username] nvarchar(100) not null,
	[Password] nvarchar(225) not null,
	[Email] nvarchar(100),
	[Address] nvarchar(100),
	[Phone] varchar(15),
	[Role] varchar(10) not null
)

Create table [VehicleTypes](
	[TypeId] int identity(1,1) primary key not null,
	[Name] nvarchar(20),
	[PricePerHour] money not null,
	[PricePerDay] money not null,
	[PricePerWeek] money not null,
	[PricePerMonth] money not null,
	[PricePerYear] money not null
)

Create table [Vehicles](
	[VehicleCode] nvarchar(20) primary key not null,
	[Brand] nvarchar(20),
	[Name] nvarchar(20),
	[UserId] int not null,
	[TypeId] int not null,
	[IsParking] bit,
	FOREIGN KEY ([UserId]) REFERENCES [Users]([UserId]),
	FOREIGN KEY ([TypeId]) REFERENCES [VehicleTypes]([TypeId])
)

Create table [Lots](
	[LotId] nvarchar(5) primary key not null,
	[TypeId] int not null,
	[Status] bit,
	FOREIGN KEY ([TypeId]) REFERENCES [VehicleTypes]([TypeId])
)

Create table [Invoices](
	[InvoiceId] int identity(1,1) primary key not null,
	[CheckInTime] DateTime,
	[CheckInOut] DateTime,
	[VehicleCode] nvarchar(20) not null,
	[LotId] nvarchar(5) not null,
	[TotalPaid] money,
	FOREIGN KEY ([VehicleCode]) REFERENCES [Vehicles]([VehicleCode]),
	FOREIGN KEY ([LotId]) REFERENCES [Lots]([LotId])
)
