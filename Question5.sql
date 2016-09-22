SELECT LB.BranchName, COUNT(*) AS Number_Of_Books_Loaned
FROM BOOK_COPIES BC, LIBRARY_BRANCH LB
WHERE BC.BranchId = LB.BranchId
GROUP BY LB.BranchName 