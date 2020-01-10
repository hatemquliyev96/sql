--create database XeberBazasi
--use XeberBazasi


create table Muellif (
Id int primary key identity,
[Muellif adi] nvarchar(50)
)

create table Istifadeci (
Id int primary key identity,
[Istifadeci adi] nvarchar(50)
)

create table Xeberler (
Id int primary key identity,
Basligi nvarchar(50),
Mezmunu nvarchar(100),
[post adi] nvarchar(50),
[Yazildigi tarix] datetime,
MuellifId int references Muellif(Id)
)

create table Comment(
Id int primary key identity,
Mezmunu nvarchar(100),
[Yazan istifadeci] nvarchar(50),
[Postun adi] nvarchar(50),
[Yazilma tarixi] datetime,
IstifadeciId int references Istifadeci(Id),
XeberlerId int references Xeberler(Id)
)

insert into Muellif values('Corc')
insert into Istifadeci values('Hatem')


select * from Comment 
inner join Xeberler on Xeberler.Id=Comment.XeberlerId
inner join Muellif on Muellif.Id=Xeberler.MuellifId
inner join Istifadeci on Istifadeci.Id=Comment.IstifadeciId