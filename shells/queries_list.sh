#!/bin/bash

sqlite3 OMAR_DB 'INSERT INTO Machine_List ("ID", "Mach_Make", "Mach_Model", "Mach_Type", "Mach_CPU", "Mach_RAM", "Mach_HDD", "OS_ID", "Mach_Purchased", "Mach_Active")  VALUES(NULL,"Acer", "Aspire 5 A515-52", "Laptop", "i5", 8, 256, 1, 3/4/17, "TRUE")'

sqlite3 OMAR_DB 'INSERT INTO Machine_List ("ID", "Mach_Make", "Mach_Model", "Mach_Type", "Mach_CPU", "Mach_RAM", "Mach_HDD", "OS_ID", "Mach_Purchased", "Mach_Active") VALUES(NULL,"Dell", "Inspiron 15 3000 3584", "Laptop", "Intel Pentium Gold", 4, "1000", 2, 4/2/2014, "FALSE")'

sqlite3 OMAR_DB 'INSERT INTO OS_List ("ID", "OS_Type", "OS_Distro", "OS_Download") VALUES(NULL, "Windows", "10", "https://www.microsoft.com/en-gb/software-download/windows10ISO")'

sqlite3 OMAR_DB 'INSERT INTO OS_List ("ID", "OS_Type", "OS_Distro", "OS_Download") VALUES(NULL, "Windows", "8.1", "https://www.microsoft.com/en-gb/software-download/windows8ISO")'

