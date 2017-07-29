-- Initialize lookup tables

-- Department lookup
INSERT ALL
    INTO DEPARTMENT (D_ID, DEPARTMENT) VALUES (1, 'BenCo')
    INTO DEPARTMENT (D_ID, DEPARTMENT) VALUES (2, 'Computer Science')
    INTO DEPARTMENT (D_ID, DEPARTMENT) VALUES (3, 'Math')
    INTO DEPARTMENT (D_ID, DEPARTMENT) VALUES (4, 'Physics')
    INTO DEPARTMENT (D_ID, DEPARTMENT) VALUES (5, 'Chemistry')
SELECT * FROM DUAL;

-- Title lookup
INSERT ALL
    INTO TITLE (T_ID, TITLE) VALUES (1, 'Department Head')
    INTO TITLE (T_ID, TITLE) VALUES (2, 'Direct Supervisor')
    INTO TITLE (T_ID, TITLE) VALUES (3, 'BenCo')
    INTO TITLE (T_ID, TITLE) VALUES (4, 'Employee')
SELECT * FROM DUAL;

-- Commit
COMMIT;