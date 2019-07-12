SCHEMA omar

  DEFINE
    instruction STRING,
    m_window ui.Window
    
MAIN

  CLOSE WINDOW SCREEN
  
  DATABASE omar
    
  CALL window_display()
  
END MAIN

FUNCTION window_input()

  DEFINE ar DYNAMIC ARRAY OF RECORD LIKE machine_list.*
  DEFINE a INTEGER,
  f_id INTEGER,
  f_mach_make STRING,
  f_mach_model STRING,
  f_mach_type STRING,
  f_os_id INTEGER,
  f_mach_cpu STRING,
  f_mach_ram INTEGER,
  f_mach_hdd INTEGER,
  f_mach_purchased DATETIME YEAR TO SECOND,
  f_mach_active BOOLEAN
  BREAKPOINT
  
  OPEN WINDOW w WITH FORM "input"

  INITIALIZE instruction TO NULL 
  LET m_window = ui.Window.getCurrent()

  CALL m_window.setText("Office Machine Asset Register")

  INPUT f_id, f_mach_make, f_mach_model, f_mach_type, f_os_id, f_mach_cpu,
        f_mach_ram, f_mach_hdd, f_mach_purchased, f_mach_active 
        FROM id, mach_make, mach_model, mach_type, os_id, mach_cpu,
             mach_ram, mach_hdd, mach_purchased, mach_active ATTRIBUTE(UNBUFFERED)

    --BEFORE INPUT
    --  DISPLAY "bananas"
    --  LET m_mach_make="BANANAS"

    ON ACTION bt_input
      INSERT INTO machine_List VALUES (NULL,
                                      f_mach_make,
                                      f_mach_model, 
                                      f_mach_type, 
                                      f_os_id, 
                                      f_mach_cpu, 
                                      f_mach_ram, 
                                      f_mach_hdd, 
                                      f_mach_purchased,
                                      f_mach_active)
    ON ACTION bt_exit
      EXIT INPUT
      
  END INPUT
  
  DECLARE b CURSOR FOR
    SELECT id, mach_make, mach_model, mach_type, os_id, mach_cpu, mach_ram, mach_hdd, mach_purchased, mach_active FROM machine_list
    
  LET a = 1
  
  FOREACH b INTO ar[a].*
    LET a = a + 1
  END FOREACH
  CALL ar.deleteElement(a)

END FUNCTION

FUNCTION window_display()

  DEFINE
    rec_machine_list DYNAMIC ARRAY OF RECORD LIKE machine_list.*,
    f_int INTEGER,
    f_min INTEGER,
    f_max INTEGER
  
  OPEN WINDOW w WITH FORM "display"
  
  INITIALIZE instruction TO NULL 
  LET m_window = ui.Window.getCurrent()

  CALL m_window.setText("Office Machine Asset Register")

  DECLARE s1 CURSOR FOR SELECT * FROM machine_list
  LET f_int = 1
  
  FOREACH s1 INTO rec_machine_list[f_int].*
    LET f_int=f_int+1
  END FOREACH
  CALL rec_machine_list.deleteElement(f_int)
  
  LET f_int = 1
  LET f_min = 1
  LET f_max = rec_machine_list.getLength()
  
  MENU
    BEFORE MENU
      CALL DIALOG.setActionActive("bt_back", FALSE)
      DISPLAY rec_machine_list[f_int].* TO sr_mach.*
    
    ON ACTION bt_next
      DISPLAY "NEXT"
      IF (f_int + 1) = f_max
      THEN
        CALL DIALOG.setActionActive("bt_next", FALSE)
      ELSE
        CALL DIALOG.setActionActive("bt_back", TRUE)
      END IF
      LET f_int = f_int + 1
      DISPLAY rec_machine_list[f_int].* TO machine_list.*

    ON ACTION bt_back
      DISPLAY "BACK"
      IF (f_int - 1) = f_min
      THEN
        CALL DIALOG.setActionActive("bt_back", FALSE)
      ELSE
        CALL DIALOG.setActionActive("bt_next", TRUE)
      END IF
      LET f_int = f_int - 1
      DISPLAY rec_machine_list[f_int].* TO machine_list.*


    ON ACTION bt_exit
      EXIT MENU
      
  END MENU
 
END FUNCTION

--FUNCTION input_()
--
--  DEFINE mac DYNAMIC ARRAY OF RECORD LIKE machine_list.*
--  
--  OPEN FORM f FROM "pine"
--  DISPLAY FORM f 
--
--  INPUT ARRAY mac WITHOUT DEFAULTS FROM machine_list.*
--
--    BEFORE INPUT
--      CALL DIALOG.setActionHidden("delete",1)
--      CALL DIALOG.setActionHidden("append",1)
--      CALL DIALOG.setActionHidden("cancel",1)
--
--    ON ACTION insert
--      FOR int = 1 TO mac.getLength()
--        DISPLAY mac[int].*
--        BREAKPOINT
--        TRY
--          LET mac[int].id = NULL
--          INSERT INTO machine_list VALUES mac[int].*
--          DISPLAY "INSERTED ROW " || arr_curr() || " successfully!"
--        CATCH
--          DISPLAY "********************************************"
--          DISPLAY "ERROR: COULDN'T INSERT ROW " || arr_curr()
--          DISPLAY "BECAUSE: " || SQLCA.sqlcode 
--          DISPLAY SQLCA.sqlerrm
--          DISPLAY "********************************************"
--        END TRY
--      END FOR
--  END INPUT
--
--END FUNCTION

--FUNCTION display_()
--  
--  DEFINE a INTEGER
--  DEFINE ar DYNAMIC ARRAY OF RECORD LIKE machine_list.*
--  
--  OPEN FORM f FROM "birch"
--  DISPLAY FORM f
--
--  DECLARE d CURSOR FOR
--    SELECT id, mach_make, mach_model, mach_type, os_id, mach_cpu, mach_ram, mach_hdd, mach_purchased, mach_active FROM machine_list
--  LET a = 1
--  FOREACH d INTO ar[a].*
--    LET a = a + 1
--  END FOREACH
--  CALL ar.deleteElement(a)
--
--  DISPLAY ARRAY ar TO sr_cust.*
--    ON ACTION PRINT
--      DISPLAY "Print a report"
--  END DISPLAY
--
--END FUNCTION

--FUNCTION db_select()
--
--  SELECT * INTO rec_machine_list.* FROM machine_list WHERE id = 1
--  
--  DISPLAY rec_machine_list.*
--
--END FUNCTION
--
--FUNCTION db_insert()
--  
--  LET rec_machine_list.id = 1
--  LET rec_machine_list.mach_make = " Acer "
--  LET rec_machine_list.mach_model = " Swift 3 "
--  LET rec_machine_list.mach_type = " Laptop "
--  LET rec_machine_list.os_id = 2
--  LET rec_machine_list.mach_cpu = " i5-8250U "
--  LET rec_machine_list.mach_ram = 8
--  LET rec_machine_list.mach_hdd = 256
--  LET rec_machine_list.mach_purchased = ' 2017-3-6 12:7:35 '
--  LET rec_machine_list.mach_active = TRUE
--  
--  INSERT INTO machine_List VALUES (NULL,
--                                  rec_machine_list.mach_make,
--                                  rec_machine_list.mach_model , 
--                                  rec_machine_list.mach_type, 
--                                  rec_machine_list.os_id, 
--                                  rec_machine_list.mach_cpu, 
--                                  rec_machine_list.mach_ram, 
--                                  rec_machine_list.mach_hdd, 
--                                  rec_machine_list.mach_purchased,
--                                  rec_machine_list.mach_active)
--
--END FUNCTION
--
--FUNCTION db_update()
--
--  LET rec_machine_list.id = 1
--  LET rec_machine_list.mach_make = " Dell "
--  LET rec_machine_list.mach_model = " Inspiron 15 3585 "
--  LET rec_machine_list.mach_type = " Laptop "
--  LET rec_machine_list.mach_cpu = " AMD Ryzen 5 "
--  LET rec_machine_list.mach_ram = 8
--  LET rec_machine_list.mach_hdd = 256
--  LET rec_machine_list.os_id = 1
--  LET rec_machine_list.mach_purchased = ' 2017-5-8 9:2:58 '
--  LET rec_machine_list.mach_active = FALSE
--
--  UPDATE machine_list SET
--    mach_make = rec_machine_list.mach_make,
--    mach_model = rec_machine_list.mach_model,
--    mach_type = rec_machine_list.mach_type,
--    mach_cpu = rec_machine_list.mach_cpu,
--    mach_ram = rec_machine_list.mach_ram,
--    mach_hdd = rec_machine_list.mach_hdd,
--    os_id = rec_machine_list.os_id,
--    mach_purchased = rec_machine_list.mach_purchased,
--    mach_active = rec_machine_list.mach_active
--  WHERE id = rec_machine_list.id
--
--END FUNCTION
--
--FUNCTION db_delete()
--
--  DELETE FROM machine_list 
--  
--END FUNCTION
--
--FUNCTION db_display_all_machs()
--  DEFINE  i INTEGER
--  DEFINE fid DYNAMIC ARRAY OF RECORD LIKE machine_list.*
--
--  DECLARE s1 CURSOR FOR SELECT id, mach_make, mach_model, mach_type, os_id, mach_cpu, mach_ram, mach_hdd, mach_purchased, mach_active FROM machine_list
--  LET i = 1
--  FOREACH s1 INTO fid[i].*
--    BREAKPOINT
--    DISPLAY fid[i].*
--    LET i=i+1
--  END FOREACH
--  CALL fid.deleteElement(i)
--  DISPLAY "Number of rows found: ",  fid.getLength()
--END FUNCTION