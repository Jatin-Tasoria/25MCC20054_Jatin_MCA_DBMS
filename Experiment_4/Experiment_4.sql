--- For Loop (simple iteration):
DO $$
BEGIN
  FOR i IN 1..5 LOOP
    RAISE NOTICE 'Number: %', i;
  END LOOP;
END $$;
 
--- For Loop with Query (Row-by-Row Processing):
DO $$
DECLARE
    rec RECORD;
BEGIN
    FOR rec IN
        SELECT id, marks FROM   students
    LOOP
        RAISE NOTICE 'ID: %, Marks: %', rec.id, rec.marks;
    END LOOP;
END $$;

 

---	While Loop (conditional iteration):
DO $$
DECLARE
	i int:=1;
BEGIN
	WHILE i<=5 LOOP
		RAISE NOTICE 'WHILE LOOP turn %',i;
		i:=i+1;
	END LOOP;
END $$
 

---	Loop with ‘EXIT WHEN’:
DO $$
DECLARE
	i int :=1;
BEGIN
	LOOP
		RAISE NOTICE 'i=%',i;
		i:=i+1;
		EXIT WHEN i>5;
	END LOOP;
END $$;
 
--- Salary increment using For Loop:
DO $$
DECLARE
    rec RECORD;
BEGIN
    FOR rec IN
        SELECT id, salary FROM salaries
    LOOP
        UPDATE salaries
        SET salary = rec.salary * 1.10
        WHERE id = rec.id;
    END LOOP;
END $$;

--- Combining Loop with IF condition:
DO $$
DECLARE
    rec RECORD;
BEGIN
    FOR rec IN
        SELECT id, marks FROM students
    LOOP
        IF rec.marks > 50 THEN
            RAISE NOTICE 'ID: %, Marks: %', rec.id, rec.marks;
        END IF;
    END LOOP;
END $$;
