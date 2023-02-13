create database MyODB
create table Account (
	accountID int identity primary key ,
	accountName varchar(50) NOT NULL,
	[password] varchar(100) NOT NULL,
	accountEmail varchar(100) NOT NULL unique,
	accountAddress nvarchar(100),
	accountPhone nchar(10) unique,
	isActive bit default 0,
	isAdmin bit default 0,
)

create table Customer(
	customerID int identity primary key,
	customerName nvarchar(50) NOT NULL,
	customerAddress nvarchar(100) ,
	customerPhone nchar(10) unique,
	customerEmail varchar(100) unique,	
	[status] bit default 0,
	note nvarchar(500) ,
	total float,
	accountID int,
	Constraint FK_Debt foreign key (accountID) references Account(accountID)
)
create table historyTransaction(
       transactionID int identity primary key,
	   totalMoney float ,
	   moneyBack float,
	   moneyRemain float,
	   [date] date,	 
	   accountID int,
	   constraint FK_AccountTransaction foreign key (accountID) references Account(accountID),
	   customerID int,
	   constraint FK_CustomerTransaction foreign key (customerID) references Customer(customerID)
)
create table OTP(
       requestType int NOT NULL,
	   isVerify bit default 0,
	   code nchar(20) ,
	   expireTime time,
	   accountID int primary key,
	   constraint FK_OTP foreign key (accountID) references Account(accountID)
)
create table Email(
       emailID int identity primary key,
	   content nvarchar(200),
	   isSent bit default 0,
	   accountID int,
	   constraint FK_AccountrelatedtoEmail foreign key (accountID) references Account(accountID),
)