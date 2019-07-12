#!/bin/bash

sqlite3 OMAR_DB 'UPDATE "Machine_List" SET "Mach_Active" = "FALSE" WHERE "ID" = 1'

sqlite3 OMAR_DB 'UPDATE "Machine_List" SET "Mach_CPU" = "i3" WHERE "ID" = 2'

sqlite3 OMAR_DB 'UPDATE "OS_List" SET "OS_Distro" = "7" WHERE "ID" = 1'

sqlite3 OMAR_DB 'UPDATE "OS_List" SET "OS_Distro" = "10" WHERE "ID" = 2'
