if exists (select * from sys.tables SystemTables where SystemTables.[Name] = 'Region')
begin
	execute sp_rename '[dbo].[Region]', 'Regions'
end

if not exists (select * from sys.columns SystemColumns
	where SystemColumns.[object_id] = OBJECT_ID(N'[dbo].[Customers]')
	and Name = 'FoundationDate')
begin
	alter table [dbo].[Customers]
	add [FoundationDate] datetime null
end