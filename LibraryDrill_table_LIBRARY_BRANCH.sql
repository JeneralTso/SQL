USE LibraryDrill
GO

DELETE LIBRARY_BRANCH
GO

INSERT INTO LIBRARY_BRANCH (BranchID, BranchName, [Address])
VALUES
(1, 'Sharpstown', '315 N. 4th Ave., Sharpstown, MD 20607'),
(2, 'Central', '84 Main St., West County, MD 20607'),
(3, 'West County', '166 S. Wool St., West County, MD 20607'),
(4, 'Eagle Hill', '774 Sun Ave., Eagle Hill, MD 20606'),
(5, 'Lakeside', '151 Cieran Blvd., Eagle Hill, MD 20606'),
(6, 'Wisdom Street', '280 Wisdom St., Saltwater, MD 20605'),
(7, 'Saltwater Central', '842 Health Rd., Saltwater, MD 20605')
