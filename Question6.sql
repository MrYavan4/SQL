SELECT B.Name, B.Address, BL.CardNo
FROM Borrower AS B INNER JOIN Book_Loans AS BL
ON B.CardNo = BL.CardNo
WHERE BL.CardNo IN
	(
	SELECT BL.CardNo
	FROM Book_Loans 
	HAVING COUNT(*) > 5
	)
