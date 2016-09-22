SELECT BA.AuthorName,LB.BranchName,BC.No_Of_Copies
FROM Book AS B INNER JOIN Book_Authors AS BA
ON B.BookID = BA.BookID
INNER JOIN Book_Copies AS BC
ON BC.BookID = B.BookID
INNER JOIN Library_Branch AS LB
ON LB.BranchID = BC.BranchId
WHERE BA.AuthorName = 'Stephen King'
AND LB.BranchName = 'Central'