USE academy;

INSERT INTO classes(class_name, places)
VALUES ('501 violet', 24),
	   ('502 ground', 22),
       ('403 yellow', 18);

INSERT INTO student_groups(group_name, stud_count, speciality)
VALUES ('РПО-1', 16, 'РАЗРАБОТЧИК 4 ГОДА'),
	   ('РПО-2', 16, 'РАЗРАБОТЧИК 4 ГОДА'),
       ('ГД-1', 14, 'ГРАФИЧЕСКИЙ ДИЗАЙН 3 ГОДА');
       
INSERT INTO teachers(full_name, email, phone, created_at)
VALUES ('Иванов Иван Петрович', 'ivanpp@gmail.com', '+79786758945', '2025-05-06'),
	   ('Попкин Дмитрий Кутузович', 'popkinpyzo@gmail.com', '+79786767676', '2025-05-06'),
       ('Кутузова Арина Вадимовна', 'davalk@gmail.com', '+79789876578', '2025-05-06');

INSERT INTO students(full_name, email, phone, student_group_id, brthday_date, created_at)
VALUES ('Иванова Владислава Александровна', 'vladis@gmail.com', '+79786358945', 1 ,'2009-05-03','2022-05-06'),
	   ('Кузьмин Дмитрий Кутузович', 'dmitro@gmail.com', '+79786768876', 2 ,'2009-02-09','2022-05-06'),
       ('Воронина Арина Вадимовна', 'voronar@gmail.com', '+79789878778', 3 ,'2009-01-02','2022-05-06');
