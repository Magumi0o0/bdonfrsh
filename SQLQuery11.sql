create table Comment (
ID int primary key identity,
PID int foreign key references Posts(ID),
StudentName nvarchar(50)  ,
comment nvarchar(max),
CDate datetime
);