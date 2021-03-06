USE [AdventureWorks2012]
GO
/****** Object:  StoredProcedure [dbo].[ProductSearch]    Script Date: 21/09/2016 10:23:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROC [dbo].[ProductSearch] @ListPrice INT = NULL, @Quantity INT = NULL
AS
SELECT PP.ProductID, PP.Name, PCH.StandardCost, PP.ListPrice, PPI.Quantity
FROM Production.Product AS PP INNER JOIN Production.ProductCostHistory AS PCH
ON PP.ProductID = PCH.ProductID
INNER JOIN Production.ProductInventory AS PPI
ON PP.ProductID = PPI.ProductID
WHERE PP.ListPrice = ISNULL(@ListPrice,PP.ListPrice) 
AND PPI.Quantity = ISNULL(@Quantity,PPI.Quantity)
GO
