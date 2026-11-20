[скриншот ](ba.png)

USE academy;

CREATE TABLE IF NOT EXISTS insert_logs (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    table_name  VARCHAR(50)  NOT NULL,
    record_id   INT          NOT NULL,
    action_time DATETIME     DEFAULT CURRENT_TIMESTAMP,
    description VARCHAR(255)
);

DELIMITER //

CREATE TRIGGER before_student_insert
BEFORE INSERT ON students
FOR EACH ROW
BEGIN
    SET NEW.full_name = TRIM(NEW.full_name);
    
    SET NEW.email = LOWER(TRIM(NEW.email));
END//

DELIMITER ;

DELIMITER //

CREATE TRIGGER after_student_insert
AFTER INSERT ON students
FOR EACH ROW
BEGIN
    INSERT INTO insert_logs (table_name, record_id, description)
    VALUES (
        'students',
        NEW.id,
        CONCAT('Добавлен студент: ', NEW.full_name, ' (', NEW.email, ')')
    );
END//

DELIMITER ;

SHOW TRIGGERS FROM academy;
