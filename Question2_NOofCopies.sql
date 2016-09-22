SELECT B.Title, LB.BranchName, BC.No_Of_Copies
FROM Book AS B INNER JOIN Book_Copies AS BC
ON B.BookID = BC.BookID
INNER JOIN Library_Branch AS LB
ON LB.BranchID = BC.BranchId
WHERE Title = 'The Lost Tribe'