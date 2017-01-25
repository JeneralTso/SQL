
-- Stored Procedure 1: Number of copies of a book per library branch
USE LibraryDrill
GO

CREATE PROC dbo.uspTotalBookCopiesEachBranch @BookID int
AS
SELECT B.BookID, B.Title, BC.No_Of_Copies, LB.BranchName, LB.BranchID
FROM BOOK AS B JOIN BOOK_COPIES AS BC
ON B.BookID = BC.BookID
JOIN LIBRARY_BRANCH AS LB
ON BC.BranchID = LB.BranchID
WHERE B.BookID = @BookID
GO

EXEC dbo.uspTotalBookCopiesEachBranch @BookID = 5



-- Stored Procedure 2: Retrieve branch name and total number of books loaned out per branch
USE LibraryDrill
GO

CREATE PROC dbo.uspTotalBooksEachBranch @BranchName varchar(255)
AS
SELECT LB.BranchID, LB.BranchName, COUNT (BL.BookID) AS Total_Books_Out
FROM BOOK_LOANS AS BL JOIN LIBRARY_BRANCH AS LB
ON BL.BranchID = LB.BranchID
GROUP BY LB.BranchID, LB.BranchName
HAVING LB.BranchName = @BranchName
GO

EXEC dbo.uspTotalBooksEachBranch @BranchName = 'Wisdom Street'



-- Stored Procedure 3: Title, borrower's name, and borrower's address for books due today by branch

USE LibraryDrill
GO

CREATE PROC dbo.uspGetBooksDueToday @BranchName varchar(255), @DueDate date
AS
SELECT B.Title, BO.Name, BO.[Address], LB.BranchName, BL.DueDate
FROM 
BOOK_LOANS AS BL JOIN BOOK AS B ON BL.BookID = B.BookID
JOIN BORROWER AS BO ON BL.CardNo = BO.CardNo
JOIN LIBRARY_BRANCH AS LB ON BL.BranchID = LB.BranchID
WHERE LB.BranchName = @BranchName
AND BL.DueDate = @DueDate
GO

EXEC dbo.uspGetBooksDueToday @BranchName = 'Lakeside', @DueDate = '2017-02-01'