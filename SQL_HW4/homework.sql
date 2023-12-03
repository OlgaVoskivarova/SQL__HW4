-- 1. Вывести название и стоимость в USD одного самого дорогого проданного товара
SELECT 
ProductName,
Price,
Price /0.92 AS Price_USA
FROM Products
ORDER BY Price DESC
LIMIT 1

-- 2. Вывести два самых дорогих товара из категории Beverages из USA
SELECT * FROM Categories
JOIN Products ON Categories.CategoryID = Products.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE Categories.CategoryName='Beverages'
AND
Suppliers.Country = 'USA'
ORDER BY Price DESC
LIMIT 3

-- 3.Вывести список стран, которые поставляют морепродукты
SELECT
Suppliers.Country
FROM Categories
JOIN Products ON Categories.CategoryID = Products.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE Categories.CategoryName='Seafood'