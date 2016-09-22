SELECT BC.No_Of_Copies, B.Title
FROM Book_Copies AS BC INNER JOIN Library_Branch LB
ON BC.BranchId = LB.BranchID
INNER JOIN Book AS B
ON B.BookID = BC.BookID
WHERE BranchName = 'Sharpstown' 
AND Title = 'The Lost Tribe'