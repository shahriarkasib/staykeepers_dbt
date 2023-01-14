WITH SALES AS(
    SELECT *
    FROM {{ref('dim_sales')}}
)

SELECT 
  *,
  ROUND(Total_Unit_Cost*Order_Quantity,2) AS Total_Cost, -- Calculate total cost based on the units sold and buying price of one unit
  Line_Total-(Total_Unit_Cost*Order_Quantity) AS Total_Profit -- calculate profit by taking the difference between sales and cost
 FROM sales