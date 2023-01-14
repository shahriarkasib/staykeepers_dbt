WITH SALES AS(
    SELECT *
    FROM {{ref('dim_sales')}}
)

SELECT 
  *,
  ROUND(Total_Unit_Cost*Order_Quantity,2) AS Total_Cost,
  Line_Total-(Total_Unit_Cost*Order_Quantity) AS Total_Profit
 FROM sales