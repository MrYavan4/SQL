SELECT B.Title, BR.Name, BR.Address
FROM BOOK B, BORROWER BR, BOOK_LOANS BL, LIBRARY_BRANCH LB
WHERE LB.BranchName='Sharpstown' AND LB.BranchId = BL.BranchId AND
BL.DueDate = 'today' AND BL.CardNo = BR.CardNo AND BL.BookId=B.BookId