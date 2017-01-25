USE LibraryDrill
GO

DELETE BORROWER
GO

INSERT INTO BORROWER (CardNo, Name, [Address], Phone)
VALUES

(10001, 'Michelle Roberts', '447 N. 10th Ave., Sharpstown 20607', '240-442-1440'), -- BranchID 1
(10002, 'Nikolas Boreas', '235 Abbey Oak Circle., West County 20607', '240-313-5252'), --2
(10003, 'Alice Wells', '124 River Rd., West County 20607', '240-011-3110'), --2
(10004, 'Gary Chen', '210 S. Gate St., West County 20607', '301-264-9437'), --3
(10005, 'Margaret Walters', '73 Mooney St. B, Eagle Hill 20606', '240-613-4676'), --4
(10006, 'George Bayer', '335 Brendan Rd., Eagle Hill 20606', '301-233-0012'), --5
(10007, 'Julia Mason', '218 Helena St., Eagle Hill 20606', '301-614-0489'), --5
(10008, 'Joshua Fisher', '524 Logos Dr., Saltwater 20605', '240-304-9140'), --6
(10009, 'William Easton', '314 Mercy Circle, Saltwater 20605', '240-610-3830'), --7
(10010, 'Lauren Peterson', '610 Ambrose St., Saltwater 20605', '301-912-1677') --7