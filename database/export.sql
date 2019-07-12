--
-- File generated with SQLiteStudio v3.2.1 on Wed Jul 10 11:57:57 2019
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Machine_List
CREATE TABLE Machine_List (ID INTEGER PRIMARY KEY UNIQUE NOT NULL, Mach_Make VARCHAR (16) NOT NULL, Mach_Model VARCHAR (32) NOT NULL, Mach_Type VARCHAR (16) NOT NULL, OS_ID INTEGER REFERENCES OS_List (ID) NOT NULL, Mach_CPU VARCHAR (32) NOT NULL, Mach_RAM INTEGER NOT NULL, Mach_HDD INTEGER NOT NULL, Mach_Purchased DATETIME NOT NULL, Mach_Active BOOLEAN NOT NULL);

-- Table: OS_List
CREATE TABLE OS_List (ID INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL, OS_Type VARCHAR (16) NOT NULL, OS_Distro VARCHAR (128) NOT NULL, OS_Download VARCHAR (3000) NOT NULL);
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (2, 'Windows', '10', 'https://www.microsoft.com/en-gb/software-download/windows8ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (3, 'Windows', '10', 'https://www.microsoft.com/en-gb/software-download/windows10ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (4, 'Windows', '8.1', 'https://www.microsoft.com/en-gb/software-download/windows8ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (5, 'Windows', '10', 'https://www.microsoft.com/en-gb/software-download/windows10ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (6, 'Windows', '8.1', 'https://www.microsoft.com/en-gb/software-download/windows8ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (7, 'Windows', '10', 'https://www.microsoft.com/en-gb/software-download/windows10ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (8, 'Windows', '8.1', 'https://www.microsoft.com/en-gb/software-download/windows8ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (9, 'Windows', '10', 'https://www.microsoft.com/en-gb/software-download/windows10ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (10, 'Windows', '8.1', 'https://www.microsoft.com/en-gb/software-download/windows8ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (11, 'Windows', '10', 'https://www.microsoft.com/en-gb/software-download/windows10ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (12, 'Windows', '8.1', 'https://www.microsoft.com/en-gb/software-download/windows8ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (13, 'Windows', '10', 'https://www.microsoft.com/en-gb/software-download/windows10ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (14, 'Windows', '8.1', 'https://www.microsoft.com/en-gb/software-download/windows8ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (15, 'Windows', '10', 'https://www.microsoft.com/en-gb/software-download/windows10ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (16, 'Windows', '8.1', 'https://www.microsoft.com/en-gb/software-download/windows8ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (17, 'Windows', '10', 'https://www.microsoft.com/en-gb/software-download/windows10ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (18, 'Windows', '8.1', 'https://www.microsoft.com/en-gb/software-download/windows8ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (19, 'Windows', '10', 'https://www.microsoft.com/en-gb/software-download/windows10ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (20, 'Windows', '8.1', 'https://www.microsoft.com/en-gb/software-download/windows8ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (21, 'Windows', '10', 'https://www.microsoft.com/en-gb/software-download/windows10ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (22, 'Windows', '8.1', 'https://www.microsoft.com/en-gb/software-download/windows8ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (23, 'Windows', '10', 'https://www.microsoft.com/en-gb/software-download/windows10ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (24, 'Windows', '8.1', 'https://www.microsoft.com/en-gb/software-download/windows8ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (25, 'Windows', '10', 'https://www.microsoft.com/en-gb/software-download/windows10ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (26, 'Windows', '8.1', 'https://www.microsoft.com/en-gb/software-download/windows8ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (27, 'Windows', '10', 'https://www.microsoft.com/en-gb/software-download/windows10ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (28, 'Windows', '8.1', 'https://www.microsoft.com/en-gb/software-download/windows8ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (29, 'Windows', '10', 'https://www.microsoft.com/en-gb/software-download/windows10ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (30, 'Windows', '8.1', 'https://www.microsoft.com/en-gb/software-download/windows8ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (31, 'Windows', '10', 'https://www.microsoft.com/en-gb/software-download/windows10ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (32, 'Windows', '8.1', 'https://www.microsoft.com/en-gb/software-download/windows8ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (33, 'Windows', '10', 'https://www.microsoft.com/en-gb/software-download/windows10ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (34, 'Windows', '8.1', 'https://www.microsoft.com/en-gb/software-download/windows8ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (35, 'Windows', '10', 'https://www.microsoft.com/en-gb/software-download/windows10ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (36, 'Windows', '8.1', 'https://www.microsoft.com/en-gb/software-download/windows8ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (37, 'Windows', '10', 'https://www.microsoft.com/en-gb/software-download/windows10ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (38, 'Windows', '8.1', 'https://www.microsoft.com/en-gb/software-download/windows8ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (39, 'Windows', '10', 'https://www.microsoft.com/en-gb/software-download/windows10ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (40, 'Windows', '8.1', 'https://www.microsoft.com/en-gb/software-download/windows8ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (41, 'Windows', '10', 'https://www.microsoft.com/en-gb/software-download/windows10ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (42, 'Windows', '8.1', 'https://www.microsoft.com/en-gb/software-download/windows8ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (43, 'Windows', '10', 'https://www.microsoft.com/en-gb/software-download/windows10ISO');
INSERT INTO OS_List (ID, OS_Type, OS_Distro, OS_Download) VALUES (44, 'Windows', '8.1', 'https://www.microsoft.com/en-gb/software-download/windows8ISO');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
