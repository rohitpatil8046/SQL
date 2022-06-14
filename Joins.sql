CREATE TABLE [dbo].[PizzaCompany]
(
  [CompanyId] [int]  PRIMARY KEY ,
  [CompanyName] [varchar](50) ,
  [CompanyCity] [varchar](30)  
)

INSERT INTO [dbo].[PizzaCompany] ([CompanyId], [CompanyName], [CompanyCity]) VALUES(1,'Dominos','Los Angeles') ;
INSERT INTO [dbo].[PizzaCompany] ([CompanyId], [CompanyName], [CompanyCity]) VALUES(2,'Pizza Hut','San Francisco') ;
INSERT INTO [dbo].[PizzaCompany] ([CompanyId], [CompanyName], [CompanyCity]) VALUES(3,'Papa johns','San Diego') ;
INSERT INTO [dbo].[PizzaCompany] ([CompanyId], [CompanyName], [CompanyCity]) VALUES(4,'Ah Pizz','Fremont') ;
INSERT INTO [dbo].[PizzaCompany] ([CompanyId], [CompanyName], [CompanyCity]) VALUES(5,'Nino Pizza','Las Vegas') ;
INSERT INTO [dbo].[PizzaCompany] ([CompanyId], [CompanyName], [CompanyCity]) VALUES(6,'Pizzeria','Boston') ;
INSERT INTO [dbo].[PizzaCompany] ([CompanyId], [CompanyName], [CompanyCity]) VALUES(7,'chuck e cheese','Chicago') ;
 


 CREATE TABLE [dbo].[Foods]
(
[ItemId] INT  PRIMARY KEY , 
 [ItemName]  Varchar(50), 
 [UnitsSold] int,
 CompanyID int,
 FOREIGN KEY(CompanyID) REFERENCES PizzaCompany(CompanyID)
 )
INSERT INTO [dbo].[Foods] ([ItemId], [ItemName], [UnitsSold], [CompanyId]) VALUES(1,'Large Pizza',5,2);
INSERT INTO [dbo].[Foods] ([ItemId], [ItemName], [UnitsSold], [CompanyId]) VALUES(2,'Garlic Knots',6,3);
INSERT INTO [dbo].[Foods] ([ItemId], [ItemName], [UnitsSold], [CompanyId]) VALUES(3,'Large Pizza',3,3);
INSERT INTO [dbo].[Foods] ([ItemId], [ItemName], [UnitsSold], [CompanyId]) VALUES(4,'Medium Pizza',8,4);
INSERT INTO [dbo].[Foods] ([ItemId], [ItemName], [UnitsSold], [CompanyId]) VALUES(5,'Breadsticks',7,1);
INSERT INTO [dbo].[Foods] ([ItemId], [ItemName], [UnitsSold], [CompanyId]) VALUES(6,'Medium Pizza',11,1);
INSERT INTO [dbo].[Foods] ([ItemId], [ItemName], [UnitsSold], [CompanyId]) VALUES(7,'Small Pizza',9,6);
INSERT INTO [dbo].[Foods] ([ItemId], [ItemName], [UnitsSold], [CompanyId]) VALUES(8,'Small Pizza',6,7);

select * from foods;
select * from dbo.PizzaCompany;

--drop table foods;

--inner join :

select foods.ItemName , foods.UnitsSold , PizzaCompany.CompanyName , PizzaCompany.CompanyCity
from foods 
inner join PizzaCompany ON Foods.CompanyID = PizzaCompany.CompanyId
where PizzaCompany.CompanyCity in ('Los Angeles' ,'Boston' );

--left join

select PizzaCompany.CompanyName , PizzaCompany.CompanyCity ,  Foods.ItemId
from PizzaCompany 
left join Foods ON Foods.CompanyID = PizzaCompany.CompanyId;

--right join

select PizzaCompany.CompanyName , PizzaCompany.CompanyCity ,  Foods.ItemId, Foods.UnitsSold
from PizzaCompany 
right join Foods ON Foods.CompanyID = PizzaCompany.CompanyId;

--full outer join


select PizzaCompany.CompanyName , PizzaCompany.CompanyCity , PizzaCompany.CompanyId as p_cid,  Foods.CompanyID as f_cid, Foods.UnitsSold
from PizzaCompany 
full outer join Foods ON Foods.CompanyID = PizzaCompany.CompanyId;

