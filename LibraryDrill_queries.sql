
-- 1. Copies of The Lost Tribe owned by Sharpstown branch

SELECT COUNT (BookID) AS Sharpstown_#Copies_TheLostTribe
FROM BOOK_COPIES
WHERE BookID = 10 
AND BranchID = 1



-- 2. How many copies of The Lost Tribe are owned by each library branch?

SELECT B.BookID, B.Title, BC.No_Of_Copies, LB.BranchName, LB.BranchID
FROM BOOK AS B JOIN BOOK_COPIES AS BC
ON B.BookID = BC.BookID
JOIN LIBRARY_BRANCH AS LB
ON BC.BranchID = LB.BranchID
WHERE B.BookID = 10



-- 3. Retrieve names of borrowers with no books checked out

SELECT BO.CardNo,BO.Name AS Borrower_No_Books 
FROM BORROWER AS BO JOIN BOOK_LOANS AS BL 
ON BO.CardNo = BL.CardNo
GROUP BY BO.CardNo, Name
HAVING COUNT (BL.BookID) = 0



-- 4. Title, borrower's name, and borrower's address for books from Sharpstown branch due today

SELECT B.Title, BO.Name, BO.[Address], LB.BranchName, BL.DueDate
FROM 
BOOK_LOANS AS BL JOIN BOOK AS B ON BL.BookID = B.BookID
JOIN BORROWER AS BO ON BL.CardNo = BO.CardNo
JOIN LIBRARY_BRANCH AS LB ON BL.BranchID = LB.BranchID
WHERE LB.BranchName = 'Sharpstown'
AND BL.DueDate = '2017-01-25'  -- Have a question about how to automatically reference the current date..



-- 5. Retrieve branch name and total number of books loaned for each library branch

SELECT LB.BranchID, LB.BranchName, COUNT (BL.BookID) AS Total_Books_Out
FROM BOOK_LOANS AS BL JOIN LIBRARY_BRANCH AS LB
ON BL.BranchID = LB.BranchID
GROUP BY LB.BranchID, LB.BranchName



-- 6.Retrieve the name, addresses, and number of books checked out for all borrowers with more than five books out

SELECT BO.CardNo, BO.Name, BO.[Address], COUNT (BL.CardNo) AS Total_Books_Out
FROM BORROWER AS BO JOIN BOOK_LOANS AS BL
ON BO.CardNo = BL.CardNo
GROUP BY BO.CardNo, BO.Name, BO.[Address]
HAVING COUNT (BL.CardNo) > 5
ORDER BY BO.CardNo



-- 7. Retrieve the title and number of copies of Stephen King books owned by Central branch

SELECT B.Title, BA.AuthorName, BC.No_Of_Copies AS No_Of_Copies_CentralBranch
FROM 
BOOK AS B JOIN BOOK_AUTHORS AS BA ON B.BookID = BA.BookID
JOIN BOOK_COPIES AS BC ON BA.BookID = BC.BookID
JOIN LIBRARY_BRANCH AS LB ON BC.BranchID = LB.BranchID
WHERE BA.AuthorName = 'Stephen King' 
AND LB.BranchName = 'Central'





















