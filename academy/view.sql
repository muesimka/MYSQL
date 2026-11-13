USE academy;


CREATE OR REPLACE VIEW v_classes AS
SELECT id, class_name
FROM classes;

CREATE OR REPLACE VIEW v_student_groups AS
SELECT id, group_name
FROM student_groups;


CREATE OR REPLACE VIEW v_teachers AS
SELECT id, full_name, email
FROM teachers;


CREATE OR REPLACE VIEW v_students AS
SELECT id, full_name, email, phone
FROM students;

CREATE OR REPLACE VIEW v_subjects AS
SELECT id, sub_name
FROM subjects;

CREATE OR REPLACE VIEW v_lessons AS
SELECT id, theme_name, stud_count, subject_id
FROM lessons;


CREATE OR REPLACE VIEW v_students_grades AS
SELECT id, value_grade, teacher_id, student_id
FROM students_grades;


CREATE OR REPLACE VIEW v_shedules AS
SELECT id, date_day, lesson_1_id, lesson_2_id, lesson_3_id, lesson_4_id
FROM shedules;


SELECT * FROM v_classes;
SELECT * FROM v_student_groups;
SELECT * FROM v_teachers;
SELECT * FROM v_students;
SELECT * FROM v_subjects;
SELECT * FROM v_lessons;
SELECT * FROM v_students_grades;
SELECT * FROM v_shedules;
