#!/bin/bash

sqlite3 OMAR_DB 'SELECT "Mach_Make" FROM "Machine_List"'

sqlite3 OMAR_DB 'SELECT "Mach_Model" FROM "Machine_List"'

sqlite3 OMAR_DB 'SELECT "OS_Type" FROM "OS_List"'

sqlite3 OMAR_DB 'SELECT "OS_Distro" FROM "OS_List"'
