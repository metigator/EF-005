CREATE DATABASE Resto;
GO

USE Resto;
GO

CREATE SCHEMA [Inventory];
GO

CREATE SCHEMA [Sales];
GO

CREATE TABLE [Inventory].[Products] (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(50) NOT NULL,
    UnitPrice DECIMAL(18,2) NOT NULL,
    Description NVARCHAR(500) NOT NULL
);


CREATE TABLE [Sales].[Orders] (
    Id INT PRIMARY KEY IDENTITY(1,1),
    OrderDate DATETIME NOT NULL DEFAULT GETDATE(),
    CustomerEmail NVARCHAR(100) NOT NULL,
	CONSTRAINT UC_CustomerEmail UNIQUE (CustomerEmail)
);

CREATE TABLE [Sales].OrderDetails (
    Id INT PRIMARY KEY IDENTITY(1,1),
    OrderId INT NOT NULL FOREIGN KEY REFERENCES [Sales].[Orders](Id),
    ProductId INT NOT NULL FOREIGN KEY REFERENCES [Inventory].[Products](Id),
    UnitPrice DECIMAL(18,2) NOT NULL,
    Quantity INT NOT NULL
);

-- Products Data

INSERT INTO [Inventory].[Products] (Name, UnitPrice, Description)
VALUES ('Grilled Chicken Sandwich', 10.99, 'Grilled chicken breast on a toasted bun with lettuce, tomato, and mayo.'),
       ('Caesar Salad', 8.99, 'Crisp romaine lettuce, Parmesan cheese, and croutons with Caesar dressing.'),
       ('Fish and Chips', 12.99, 'Beer-battered cod with French fries and tartar sauce.'),
       ('Veggie Burger', 9.99, 'A vegetarian burger patty topped with lettuce, tomato, and mayo.'),
       ('Margherita Pizza', 14.99, 'A classic pizza with tomato sauce, mozzarella cheese, and fresh basil.'),
       ('Grilled Salmon Salad', 15.99, 'Grilled salmon on a bed of mixed greens with cucumber, red onion, and balsamic vinaigrette.'),
       ('Chicken Alfredo', 13.99, 'Grilled chicken breast with fettuccine pasta and creamy Alfredo sauce.'),
       ('Shrimp Tacos', 11.99, 'Grilled shrimp tacos with avocado salsa and lime crema.'),
       ('Roast Beef Sandwich', 10.99, 'Thinly sliced roast beef on a roll with horseradish sauce.'),
       ('Caprese Salad', 9.99, 'Fresh mozzarella, tomato, and basil with balsamic glaze.'),
       ('Turkey Club Sandwich', 11.99, 'Turkey breast, bacon, lettuce, tomato, and mayo on toasted bread.'),
       ('Spinach and Artichoke Dip', 8.99, 'Creamy spinach and artichoke dip served with tortilla chips.'),
       ('Lobster Roll', 16.99, 'Butter-poached lobster meat on a toasted roll with lemon mayo.'),
       ('Chicken Fajitas', 13.99, 'Sizzling grilled chicken with onions and peppers, served with flour tortillas and toppings.'),
       ('Tuna Melt', 9.99, 'Tuna salad with melted cheddar cheese on grilled bread.'),
       ('Greek Salad', 9.99, 'Mixed greens, feta cheese, kalamata olives, and red onion with Greek dressing.'),
       ('BBQ Chicken Pizza', 14.99, 'BBQ sauce, grilled chicken, red onion, and mozzarella cheese on a pizza crust.'),
       ('Steak Frites', 16.99, 'Grilled steak with French fries and garlic aioli.'),
       ('Lobster Bisque', 7.99, 'Creamy lobster soup with sherry and herbs.'),
       ('Mushroom Risotto', 12.99, 'Creamy risotto with mushrooms, Parmesan cheese, and herbs.');

-- Insert order 1
INSERT INTO [Sales].[Orders] (OrderDate, CustomerEmail)
VALUES ('2022-01-02 12:30:00', 'customer1@example.com');

	INSERT INTO [Sales].[OrderDetails] (OrderId, ProductId, UnitPrice, Quantity)
	VALUES (SCOPE_IDENTITY(), 5, 14.99, 2),
		   (SCOPE_IDENTITY(), 9, 10.99, 1),
		   (SCOPE_IDENTITY(), 11, 11.99, 1);

-- Insert order 2
INSERT INTO [Sales].[Orders] (OrderDate, CustomerEmail)
VALUES ('2022-02-05 18:45:00', 'customer2@example.com');


	INSERT INTO [Sales].[OrderDetails] (OrderId, ProductId, UnitPrice, Quantity)
	VALUES (SCOPE_IDENTITY(), 3, 12.99, 1),
		   (SCOPE_IDENTITY(), 6, 15.99, 1),
		   (SCOPE_IDENTITY(), 17, 14.99, 1);

-- Insert order 3
INSERT INTO [Sales].[Orders] (OrderDate, CustomerEmail)
VALUES ('2022-03-10 11:15:00', 'customer3@example.com');

	INSERT INTO [Sales].[OrderDetails] (OrderId, ProductId, UnitPrice, Quantity)
	VALUES (SCOPE_IDENTITY(), 1, 10.99, 1),
		   (SCOPE_IDENTITY(), 4, 9.99, 1),
		   (SCOPE_IDENTITY(), 7, 13.99, 2);

-- Insert order 4
INSERT INTO [Sales].[Orders] (OrderDate, CustomerEmail)
VALUES ('2022-04-12 14:00:00', 'customer4@example.com');

	INSERT INTO [Sales].[OrderDetails] (OrderId, ProductId, UnitPrice, Quantity)
	VALUES (SCOPE_IDENTITY(), 2, 8.99, 1),
		   (SCOPE_IDENTITY(), 8, 11.99, 1),
		   (SCOPE_IDENTITY(), 14, 13.99, 1);

-- Insert order 5
INSERT INTO [Sales].[Orders] (OrderDate, CustomerEmail)
VALUES ('2022-05-20 19:30:00', 'customer5@example.com');

	INSERT INTO [Sales].[OrderDetails] (OrderId, ProductId, UnitPrice, Quantity)
	VALUES (SCOPE_IDENTITY(), 5, 14.99, 1),
		   (SCOPE_IDENTITY(), 10, 9.99, 1),
		   (SCOPE_IDENTITY(), 13, 16.99, 1);

-- Insert order 6
INSERT INTO [Sales].[Orders] (OrderDate, CustomerEmail)
VALUES ('2022-06-25 13:45:00', 'customer6@example.com');

	INSERT INTO [Sales].[OrderDetails] (OrderId, ProductId, UnitPrice, Quantity)
	VALUES (SCOPE_IDENTITY(), 1, 10.99, 2),
		   (SCOPE_IDENTITY(), 15, 9.99, 1),
		   (SCOPE_IDENTITY(), 18, 7.99, 1);

-- Insert order 7
INSERT INTO [Sales].[Orders] (OrderDate, CustomerEmail)
VALUES ('2022-07-30 17:00:00', 'customer7@example.com');

	INSERT INTO [Sales].[OrderDetails] (OrderId, ProductId, UnitPrice, Quantity)
	VALUES (SCOPE_IDENTITY(), 3, 12.99, 1),
	(SCOPE_IDENTITY(), 9, 10.99, 1),
	(SCOPE_IDENTITY(), 16, 9.99, 1);

-- Insert order 8
INSERT INTO [Sales].[Orders] (OrderDate, CustomerEmail)
VALUES ('2022-08-05 12:15:00', 'customer8@example.com');

	INSERT INTO [Sales].[OrderDetails] (OrderId, ProductId, UnitPrice, Quantity)
	VALUES (SCOPE_IDENTITY(), 4, 9.99, 1),
	(SCOPE_IDENTITY(), 6, 15.99, 1),
	(SCOPE_IDENTITY(), 12, 8.99, 2);

-- Insert order 9
INSERT INTO [Sales].[Orders] (OrderDate, CustomerEmail)
VALUES ('2022-09-15 20:00:00', 'customer9@example.com');

	INSERT INTO [Sales].[OrderDetails] (OrderId, ProductId, UnitPrice, Quantity)
	VALUES (SCOPE_IDENTITY(), 7, 13.99, 1),
	(SCOPE_IDENTITY(), 10, 9.99, 1),
	(SCOPE_IDENTITY(), 19, 7.99, 1);

-- Insert order 10
INSERT INTO [Sales].[Orders] (OrderDate, CustomerEmail)
VALUES ('2022-10-20 14:30:00', 'customer10@example.com');

	INSERT INTO [Sales].[OrderDetails] (OrderId, ProductId, UnitPrice, Quantity)
	VALUES (SCOPE_IDENTITY(), 2, 8.99, 1),
	(SCOPE_IDENTITY(), 11, 11.99, 1),
	(SCOPE_IDENTITY(), 20, 12.99, 1);

GO
-- OrderWithDetailsView
CREATE VIEW OrderWithDetailsView
AS
SELECT o.Id AS OrderId, o.OrderDate, o.CustomerEmail, od.ProductId, p.Name AS ProductName, od.UnitPrice, od.Quantity
FROM [Sales].[Orders] o
JOIN [Sales].[OrderDetails] od ON o.Id = od.OrderId
JOIN [Inventory].[Products] p ON od.ProductId = p.Id;

GO
-- GetOrderBill Table-Valued function
CREATE FUNCTION dbo.GetOrderBill
(
    @OrderId INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT o.Id AS OrderId, o.OrderDate, p.Name AS ProductName, od.UnitPrice, od.Quantity,
           (od.UnitPrice * od.Quantity) AS SubTotal
    FROM [Sales].[Orders] o
    JOIN [Sales].OrderDetails od ON o.Id = od.OrderId
    JOIN [Inventory].[Products] p ON od.ProductId = p.Id
    WHERE OrderId = @OrderId
);