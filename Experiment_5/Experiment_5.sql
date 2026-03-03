--- Simple Forward-Only Cursor

DO $$
DECLARE
    rec RECORD;
    emp_cursor CURSOR FOR
        SELECT id, name, salary FROM employee;
BEGIN
    OPEN emp_cursor;
    LOOP
        FETCH emp_cursor INTO rec;
        EXIT WHEN NOT FOUND;
        RAISE NOTICE 'ID: %, Name: %, Salary: %', rec.id, rec.name, rec.salary;
    END LOOP;
    CLOSE emp_cursor;
END $$;


--- Salary Update using Cursor

DO $$
DECLARE
    rec RECORD;
    emp_cursor CURSOR FOR
        SELECT id, experience, salary FROM employee;
BEGIN
    OPEN emp_cursor;
    LOOP
        FETCH emp_cursor INTO rec;
        EXIT WHEN NOT FOUND;

        IF rec.experience > 5 THEN
            UPDATE employee
            SET salary = salary * 1.20
            WHERE id = rec.id;
        ELSE
            UPDATE employee
            SET salary = salary * 1.10
            WHERE id = rec.id;
        END IF;
    END LOOP;
    CLOSE emp_cursor;
END $$;


--- Cursor with Exception Handling

DO $$
DECLARE
    rec RECORD;
    emp_cursor CURSOR FOR SELECT id FROM employee;
BEGIN
    OPEN emp_cursor;
    LOOP
        FETCH emp_cursor INTO rec;
        EXIT WHEN NOT FOUND;
        RAISE NOTICE 'Employee ID: %', rec.id;
    END LOOP;
    CLOSE emp_cursor;
EXCEPTION
    WHEN OTHERS THEN
        RAISE NOTICE 'An error occurred while processing cursor.';
END $$;
