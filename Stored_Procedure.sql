CREATE PROC [dbo].[Book_Search] @Title VARCHAR(50) = Null, @Branch VARCHAR(30) = Null
AS
SELECT BC.No_Of_Copies, B.Title, LB.BranchName
FROM Book_Copies AS BC INNER JOIN Library_Branch LB
ON BC.BranchId = LB.BranchID
INNER JOIN Book AS B
ON B.BookID = BC.BookID
WHERE BranchName = ISNULL(@Title, B.Title) 
AND Title = ISNULL(@Branch, LB.BranchName)