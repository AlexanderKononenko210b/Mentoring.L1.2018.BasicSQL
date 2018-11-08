if not exists (select * from sys.objects
	where object_id = OBJECT_ID(N'dbo.[CreditCards]') and type in (N'U'))
begin
create table [dbo].[CreditCards](
	[CardNumber] nvarchar(13) not null,
	[EndDate] date not null,
	[CardHolder] nvarchar(25) not null,
	[EmployeeID] int not null,
	[Note] nvarchar(max) null,
	constraint [PK_CreditCards] primary key ( [CardNumber] asc),
	constraint [FK_CreditCards_Employees] foreign key ([EmployeeId]) references [dbo].[Employees] ([EmployeeID])
);
end