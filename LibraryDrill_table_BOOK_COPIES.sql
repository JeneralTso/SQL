USE LibraryDrill
GO

DELETE BOOK_COPIES
GO

-- Records for Sharpstown branch
INSERT INTO BOOK_COPIES (BookID, BranchID, No_Of_Copies)
VALUES
(3, 1, 2),
(4, 1, 2),
(6, 1, 2),
(8, 1, 2),
(10, 1, 2),
(16, 1, 2),
(19, 1, 2),
(21, 1, 2),
(23, 1, 2),
(25, 1, 2)

-- Records for Central branch
INSERT INTO BOOK_COPIES (BookID, BranchID, No_Of_Copies)
VALUES
(1, 2, 2),
(2, 2, 2),
(5, 2, 2),
(7, 2, 2),
(9, 2, 2),
(14, 2, 2),
(15, 2, 2),
(20, 2, 2),
(22, 2, 2),
(24, 2, 2)

-- Records for West County branch
INSERT INTO BOOK_COPIES (BookID, BranchID, No_Of_Copies)
VALUES
(1, 3, 2),
(3, 3, 2),
(5, 3, 2),
(6, 3, 2),
(11, 3, 2),
(12, 3, 2),
(13, 3, 2),
(17, 3, 2),
(18, 3, 2),
(10, 3, 2)

-- Records for Eagle Hill branch
INSERT INTO BOOK_COPIES (BookID, BranchID, No_Of_Copies)
VALUES
(2, 4, 2),
(3, 4, 2),
(4, 4, 2),
(6, 4, 2),
(11, 4, 2),
(12, 4, 2),
(19, 4, 2),
(20, 4, 2),
(22, 4, 2),
(25, 4, 2)

-- Records for Lakeside branch
INSERT INTO BOOK_COPIES (BookID, BranchID, No_Of_Copies)
VALUES
(1, 5, 2),
(2, 5, 2),
(3, 5, 2),
(7, 5, 2),
(8, 5, 2),
(9, 5, 2),
(13, 5, 2),
(14, 5, 2),
(23, 5, 2),
(24, 5, 2)

-- Records for Wisdom Street branch
INSERT INTO BOOK_COPIES (BookID, BranchID, No_Of_Copies)
VALUES
(4, 6, 2),
(5, 6, 2),
(6, 6, 2),
(11, 6, 2),
(12, 6, 2),
(15, 6, 2),
(16, 6, 2),
(19, 6, 2),
(20, 6, 2),
(21, 6, 2)

-- Records for Saltwater Central branch
INSERT INTO BOOK_COPIES (BookID, BranchID, No_Of_Copies)
VALUES
(1, 7, 2),
(4, 7, 2),
(5, 7, 2),
(7, 7, 2),
(9, 7, 2),
(10, 7, 2),
(13, 7, 2),
(15, 7, 2),
(17, 7, 2),
(22, 7, 2)