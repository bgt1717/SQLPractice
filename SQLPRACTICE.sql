SELECT TOP (1000) [Employee_ID]
      ,[Sales_Person]
      ,[Country]
      ,[Product]
      ,[Date]
      ,[Amount]
      ,[Boxes_Shipped]
  FROM [Choco_company].[dbo].[ChocoExcel]

    --this is a comment. 

  Update dbo.ChocoExcel
  SET Country = 'UK'
  WHERE Sales_Person = '14';

  DELETE FROM dbo.ChocoExcel WHERE Sales_Person='Brien Boise';
  --this is a comment. 

  --max and min 
  Select min(Boxes_Shipped) As Least_Amount_Boxes_Shipped
  From dbo.ChocoExcel

  Select max(Boxes_Shipped) As Most_Amount_Boxes_Shipped
  From dbo.ChocoExcel

  --max with groupby used.
SELECT 
    Sales_Person,
    Boxes_Shipped AS Most_Amount_Boxes_Shipped
FROM 
    dbo.ChocoExcel
WHERE 
    Boxes_Shipped = (SELECT MAX(Boxes_Shipped) FROM dbo.ChocoExcel);
--min with groupby used.
SELECT 
    Sales_Person,
    Boxes_Shipped AS Least_Amount_Boxes_Shipped
FROM 
    dbo.ChocoExcel
WHERE 
    Boxes_Shipped = (SELECT MIN(Boxes_Shipped) FROM dbo.ChocoExcel);

--Count
SELECT COUNT(*)
FROM Products;




