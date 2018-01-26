--create database FIRST;


--create table Customer(
--IdCustomer int Primary Key not null,
--FirstName varchar(255),
--LastName varchar(255),
--PostalCode varchar(12),
--Age int,
--Email varchar(90) not null,
--Province varchar(20),
--City varchar(30),
--PhoneNumber int not null);


--Insert into Customer values (1,'Elis', 'Andrade' , 'M6E1C6', 30, 'elisandrade_18@yahoo.com.br', 
--'Ontario', 'Toronto', 647867462);

--Insert into Customer values (2,'Julia', 'Silva' , 'M9A2T8', 22, 'julia@gmail.com', 
--'Ontario', 'Toronto', 647565656);


--Select * from Customer;

--Select * from Customer where FirstName = 'Julia';

--Select * from Customer where FirstName = 'Elis' and City = 'Toronto';

--Update Customer Set FirstName = 'Jullia' where FirstName = 'Julia';

--Select * from Customer;

--Delete from Customer where FirstName = 'Jullia';

--Select * from Customer;


--create table Orders(
--OrderID int Primary Key not null,
--Quantity int,
--MethodOfPayment varchar(10),
--Amount float,
--OrderDescription varchar(255),
--PizzaID int,
--BeverageID int,
--ToppingsID int,
--SidesID int,
--IdCustomer int references Customer);

--select * from Orders;

--Insert into Orders values (1, 2, 'cash', 12.50, 'Small Cheese Pizza and Coke Can', 12, 01, 00, 00, 1);

--select * from Orders;

--Insert into Orders values (2, 3, 'debit card', 16.00, 'Pepperoni Slice, Cheese Garlic Bread 4pc. and Coke Can', 
--05, 01, 00, 04, 3);

--select * from Orders;

--create table Sides(
--SidesID int Primary Key not null,
--SidesDescription varchar(255));

--select * from Sides;

--insert into Sides values (01, 'French Fries');

--select * from Sides;

--create table PizzaToppings(
--PizzaToppingsID int Primary Key not null,
--PizzaDescription varchar(255));
 --select * from PizzaToppings;

 --create table Beverages(
 --BeveragesID int Primary Key not null,
 --BeveragesDescription varchar(255));

 --create table Pizza(
 --PizzaID int Primary Key not null,
 --PizzaDescription varchar(255));

 --Insert into Sides values (2, 'Chicken Wings');

 --select * from Sides;

 --Insert into Sides values (3, 'Sweet Potato Fries');

 --select * from Sides;

 --insert into Sides values (4, 'Cheese Garlic Bread 4pc.');

 --select * from Orders;

 --select * from Sides;

 --insert into Beverages values (1, 'Coke Can');

 --select * from Beverages;

 --insert into Beverages values (2, 'Fanta Can');

 --insert into Beverages values (3, 'Canada Dry Can');

 --insert into Beverages values (4, 'Sprite Can');
 --insert into Beverages values (5, 'Orange Juice');

 --insert into Beverages values (6, 'Water Bottle');
 --insert into Beverages values (7, 'Diet Coke Can');

 --select * from Beverages;

 --insert into Beverages values (8, 'Coke Bottle');

 --insert into Beverages values (9, 'Fanta Bottle');
  
  --insert into Beverages values (10, 'Apple juice');

  --select * from Beverages;
  --select * from Customer
   
   
--select * from PizzaToppings;

--insert into PizzaToppings values (2, 'pepperoni');


--insert into PizzaToppings values (3, 'chicken');

--insert into PizzaToppings values (4, 'ham');

--select * from PizzaToppings;

--insert into PizzaToppings values (5, 'mushrooms');

--insert into PizzaToppings values (6, 'bacon');

--alter table Customer alter column PhoneNumber varchar(14);

--select * from Customer;
--insert into Customer values (2, 'Camila', 'Almeida', 'W3M6TE', 24, 'camila_12@gmail.com', 'Ontario', 'Toronto', 647123456);

--select * from Customer;

--insert into Customer values (4, 'John', 'Smith', 'E2A1D6', 35, 'jsmith@outlook.com', 'Ontario', 'Toronto', '62474567890');
--select * from Customer;

--select * from Beverages;

--select * from PizzaToppings;

--select getdate();

--select substring(FirstName, 1,1) from Customer;

--select Right (FirstName,2) from Customer;

--select Len(FirstName) from Customer;

--select Replace(FirstName, 'Camila', 'Joana') from Customer;

--select UPPER(FirstName) from Customer;
--select LOWER(FirstName) from Customer;

--select Replicate(FirstName,2) from Customer;

--select * from Orders;

--create table Price (
--ProductsPrice float);

--insert into Price values(5.20);
--insert into Price values(9.00);

--select MAX(ProductsPrice) from Price;

--select * from Orders;

--Select LastName+ ', '+ FirstName as FullName from Customer;

--select * from Customer;

--select * from Customer Order by Firstname;
--select * from Customer;




--Select substring(FirstName,1,1) as Initial,
--FirstName + ' ' + LastName as FullName,
--City + ', '+ UPPER(substring(Province,1,2)) as City,
--'+1 ' + '(' + left(PhoneNumber,3)+')'+substring(PhoneNumber,4,3)+'-'+right(PhoneNumber,4)
--as Phone from Customer;

--select * from Orders;

--select P.PizzaID from Pizza P
--inner join Orders O
--on P.PizzaID = O.OrderID

--alter table Pizza add columnPizzaPrice float;
--select * from Pizza;

--alter table Pizza drop column columnPizzaPrice;
--alter table Pizza add PizzaPrice float;

--select * from Pizza;

--alter table Beverages add BeveragesPrice float;

--alter table Sides add SidesPrice float;


--alter table PizzaToppings add PizzaToppingsPrice float;

--select P.*, O.*, P.PizzaID, P.PizzaPrice*O.Quantity as Amount
-- from Pizza P
--inner join Orders O
--on P.PizzaID = O.PizzaID;

--alter table orders add  PizzaID int references Pizza;


--select * from Pizza;

--select BeveragesID from Beverages
--union
--select BeverageID from Orders;

--Select P.PizzaID,
--P.PizzaDescription,
--'CAD '+ Cast(P.PizzaPrice as varchar) as Price,
--O.Quantity,
--'CAD ' +cast(P.PizzaPrice*O.Quantity as varchar) as Amount,
--C.FirstName
--from Pizza P
--inner join Orders O
--on P.PizzaID=O.PizzaID
--inner join Customer C
--on C.IdCustomer=O.IdCustomer















--select * from Orders;

----insert into Pizza values (1, 'CheesePizzaSlice', 5.00);

----select * from PizzaToppings;

--update Orders set PizzaID= 1 where OrderID=1

--create table Users(
--IdUser int IDENTITY(1,1) not null Primary Key,
--FirstName varchar(255),
--LastName varchar(255),
--Email varchar(255),
--Password varchar(255)); 
 
 --select * from Users;

 --Insert into Users(FirstName,LastName,Email,Password) values
 --('Gabriel', 'De Marchi', 'g@gmail.com', '123');
 --select * from Users;

 --select * from Pizza;

 --select case when Pizza.PizzaPrice < 5
 --then 'Sale'
 --Else
 -- 'Not in Sale'
 --End as SalesProduct,Pizza.* from Pizza;

 --Select IIF (Pizza.PizzaPrice <50 and Pizza.PizzaDescription like '%Cheese%',
 --'Sale', 'Not in Sale')
 --as SalesProducts, Pizza.* from Pizza;

 --Select LastName +','+FirstName  as FullName,
 -- '(' + left(PhoneNumber,3)+')'
 --+substring(PhoneNumber,4,3)
 --+'-'+right(PhoneNumber,4) as PhoneNumber,
 -- Email, 
 --case when Customer.Email like '%gmail%' then 'Gmail'
 -- when Customer.Email like '%yahoo%' then 'Yahoo'
 --else 'Outlook'
 --end as Domain, Customer.*, City, IIF (Customer.City like '%Toronto%', 'Local', 'Outside') as Local
 --from Customer; 

 --Select Datename(month,getdate());
 --Select Datename(weekday,getdate());
 --select Datename(year,getdate());

 --Select 
 --case 
 --when Datename(WEEKDAY, getdate())  = 'Saturday' then 'Weekend'
 --when Datename(WEEKDAY, getdate())  = 'Sunday' then 'Weekend'
 --else 'Weekday' 
 --end as Weekday; 

 --If DATENAME(weekday,getdate()) in 
 --('Saturday', 'Sunday')
 --select 'Weekend'
 --else
 --select 'Weekday';

 --SP_HELP Customer;

 --Declare @x int=5;
 --while @x <30
 --Begin
 --Set @x=@x+1;
 --Print @x
 --End;


 --while (select sum(PizzaPrice) from Pizza) <81
 --Begin
 --Update Pizza set PizzaPrice=PizzaPrice*2
 --End
 --Select * from Pizza;

 
--while (select avg(PizzaPrice) from Pizza) < (Select max(PizzaPrice) from Pizza)
--begin
--Update Pizza set PizzaPrice = PizzaPrice * 0.72
--break
--End
--Select round(PizzaPrice,2) from Pizza;

----insert into Pizza values (3, 'PepperoniSlice', 6.00); 
 
-- select * from Pizza
-- Update Pizza set PizzaPrice= 8 where PizzaID = 1
--  Update Pizza set PizzaPrice= 9 where PizzaID = 2
--   Update Pizza set PizzaPrice= 12 where PizzaID = 3

--Declare @x int=0
--while @x<10
--begin
--set @x=@x+1
----Goto show
--End;
--Goto show
--show: print @x;

--alter view vw_Customer_FullName as
--Select FirstName+' '+LastName as FullName, Email
--from Customer; 

--select * from vw_Customer_FullName; 

--Drop view vw_Customer_FullName; 

--Create procedure SP_SelectPizza
--as
--Begin
--Select * from Pizza;
--End
--Go

--Execute SP_SelectPizza; 

--create procedure SP_Customer_City @City varchar(255)
--as
--begin
--Select * from Customer where City=@City
--End
--Go

--Execute SP_Customer_City 'Toronto'; 

--Alter procedure SP_Customer_City @City varchar(255),
--@FirstName varchar(255)
--as
--begin
--Select * from Customer where City=@City or FirstName like '%@FirstName%'
--End
--Go

--Execute SP_Customer_City 'Toronto', 'Elis' 

--select * from Customer

--Execute SP_Customer_City 'Winnipeg', 'Bruna'

--Create procedure SP_Update_PizzaPrice @PIzzaPrice float 
--as
--begin
--IF(select PizzaPrice from Pizza) > @PizzaPrice
--Update Pizza Set PizzaPrice = PizzaPrice*0.70
--end
--go

--Execute SP_Update_PizzaPrice 12;

--Exec SP_Upda

--create trigger trg_afterinsert_Customer on Customer
--for insert
--as
--begin
--Select* from Pizza
--end
--go

--insert into Customer values (8,'Maria', 'Joana', 'M4EO6P', 35, 'marial@gmail.com', 'Ontario', 
--'Toronto', '6466671234');


--Drop trigger trg_afterinsert_Customer 

--create trigger trg_afterinsert_Customer on Customer
--for insert
--as
--begin
--declare @IdCustomer int
--select @IdCustomer=IdCustomer from inserted
--Update Customer set FirstName= 'NEW' + FirstName
--where IdCustomer=@IdCustomer
--end
--go


--insert into Customer values (9,'Paul', 'Smith', 'M8I9C4', 29, 'paul@gmail.com', 'Ontario',
--'Toronto', '6478884444') 
--select * from Customer


--alter trigger trg_afterupdate_Customer on Customer
--for update
--as
--begin
--declare @IdCustomer int
--select @IdCustomer=IdCustomer from inserted
--Update Customer set FirstName= Substring(FirstName,4,20)
--where IdCustomer=@IdCustomer
--end
--go

--select * from Orders

--Update Customer set PostalCode='jhgjh' where IdCustomer=9

--alter trigger trg_afterdelete_Pizza on Orders
--for delete 
--as
--begin
--declare @PizzaID int
--select @PizzaID=PizzaID from inserted
--Delete from Orders where PizzaID=@PizzaID
--end
--go

--alter trigger trg_afterinsert_tax on Orders
--for insert
--as
--begin
--declare @PizzaID int
--select @PizzaID=PizzaID from inserted
--Update Pizza set PizzaPrice = PizzaPrice*1.13  
--where PizzaID=@PizzaID
--end
--go

--drop trigger trg_afterinsert_tax  

----insert Orders values(3,2, 'debit card', 8.00, 'Small Cheese Pizza and Coke bottle',
-- 5, 00, 00, 9, 1) 

--select * from Pizza

--create procedure SP_SelectCustomer 
--as
--begin
--Select * from Customer
--end
--go

--Execute SP_SelectCustomer 

--Create procedure SP_Insert_Customer @IdCustomer int, @FirstName varchar(255),
--@LastName varchar (255),@PostalCode varchar (255), @Age int, @Email varchar(255),
--@Province varchar(255), @City varchar (255), @PhoneNumber varchar(255)
--as
--begin
--Insert into Customer values (@IdCustomer, @FirstName,
--@LastName,@PostalCode, @Age, @Email,
--@Province, @City, @PhoneNumber)
--end
--go

--Select * from customer
--Order by FirstName Desc

--Execute SP_Insert_Customer  10, 'Fabio', 'Lemos', 'N42H5T', 56, 'fabio@gmail.com', 
--'Ontario', 'Toronto', '6475643421'

--select * from Customer

--Create procedure SP_UpdatePizzaPrice_Pizza
--@PizzaPrice float, @PizzaID int
--as 
--begin
--Update Pizza set Pizzaprice=@PizzaPrice 
--where PizzaID=@PizzaID
--end
--go

--Execute SP_UpdatePizzaPrice_Pizza 4.00, 1

--select * from Pizza

--Select case
--when C.City like '%Toronto%'
--then 'GTA'
--else 'Outside from GTA'
--End as Location, C.*
--from Customer C

--Create view VW_Select as
--Select IdCustomer, Email, FirstName + ' '+ LastName as FullName,
--case when Email like '%gmail%' then 'Gmail'
--when Email like '%outlook%' then 'Outlook' 
--else 'Yahoo' 
--end as Domain,
--'('+ left(PhoneNumber,3) + ')' + substring(PhoneNumber,4,3) + '-'+ right(PhoneNumber,4)
--as PhoneNumber
--from Customer

--select * from VW_Select 


--Select P.PizzaID,
--P.PizzaDescription,
--'CAD '+ Cast(P.PizzaPrice as varchar) as Price,
--O.Quantity,
--'CAD ' +cast(P.PizzaPrice*O.Quantity as varchar) as Amount,
--C.FirstName
--from Pizza P
--inner join Orders O
--on P.PizzaID=O.PizzaID
--inner join Customer C
--on C.IdCustomer=O.IdCustomer


--Subquery

--Select O.OrderID, O.PizzaID, O.Quantity
--from Orders O
--where O.PizzaID in
--(select P.PizzaID from Pizza P
--where P.PizzaPrice>2)


--Create login elis with password= 'elis';
--create user elis for login elis;
--go


