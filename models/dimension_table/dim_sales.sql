WITH sales_orders AS(
    SELECT *
    FROM
    `dataproject-359115.staykeeper.sales_orders`
),

customers AS(
    SELECT *
    FROM
    `dataproject-359115.staykeeper.customers`
),

products AS(
    SELECT *
    FROM
    `dataproject-359115.staykeeper.products`
),

regions AS(
    SELECT *
    FROM
    `dataproject-359115.staykeeper.regions`
)


SELECT 
  so.OrderNumber AS OrderNumber,
  so.OrderDate AS OrderDate,
  so.Customer_Name_Index AS Customer_Name_Index,
  c.Customer_Names AS Customer_Names,
  so.Channel AS Channel,
  so.Currency_Code AS Currency_Code,
  so.Warehouse_Code AS Warehouse_Code,
  so.Delivery_Region_Index AS Delivery_Region_Index,
  r.City AS City,
  r.Country AS Country,
  r.Full_Name AS Region_Full_Name,
  r.Territory AS Territory,
  so.Product_Description_Index AS Product_Description_Index,
  p.Product_Name AS Product_Name,
  so.Order_Quantity AS Order_Quantity, 
  so.Unit_Price AS Unit_Price,
  so.Line_Total AS Line_Total,
  so.Total_Unit_Cost AS Total_Unit_Cost     
FROM sales_orders AS so 
LEFT JOIN customers AS c
  ON c.Customer_Index = so.Customer_Name_Index
LEFT JOIN regions AS r
  ON r.Index = so.Delivery_Region_Index
LEFT JOIN products AS p
  ON p.Index = so.Product_Description_Index


