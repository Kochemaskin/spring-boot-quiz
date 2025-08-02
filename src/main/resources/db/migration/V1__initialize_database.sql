DROP TABLE IF EXISTS options;
DROP TABLE IF EXISTS questions;
DROP TABLE IF EXISTS topics;
DROP TABLE IF EXISTS question;

CREATE TABLE topics (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE questions (
    id SERIAL PRIMARY KEY,
    topic_id INT NOT NULL,
    question_text TEXT NOT NULL,
    difficulty VARCHAR(50) NOT NULL,
    CONSTRAINT fk_topic
        FOREIGN KEY(topic_id)
        REFERENCES topics(id)
);

CREATE TABLE options (
    id SERIAL PRIMARY KEY,
    question_id INT NOT NULL,
    option_text TEXT NOT NULL,
    is_correct BOOLEAN NOT NULL DEFAULT FALSE,
    CONSTRAINT fk_question
        FOREIGN KEY(question_id)
        REFERENCES questions(id)
);

INSERT INTO topics (name) VALUES ('Java'), ('SQL');

-- id тем (Java -> 1, SQL -> 2)
-- Вопросы по Java
INSERT INTO questions (topic_id, question_text, difficulty) VALUES
(1, 'Which Java keyword is used to create a subclass?', 'Easy'), -- id 1
(1, 'Which keyword prevents method overriding?', 'Medium'), -- id 2
(1, 'Which access modifier allows access to all classes in the same package and subclasses?', 'Easy'), -- id 3
(1, 'Which primitive data type has the largest size?', 'Medium'), -- id 4
(1, 'Which class is the root of all Java classes?', 'Hard'), -- id 5
(1, 'Which Java collection class allows duplicates and maintains insertion order?', 'Easy'), -- id 6
(1, 'Which block is used to ensure code runs after try/catch blocks?', 'Medium'), -- id 7
(1, 'Which class is synchronized and thread-safe?', 'Hard'), -- id 8
(1, 'Which keyword can be used to prevent class instantiation?', 'Easy'), -- id 9
(1, 'Which package provides the core classes for Java programming?', 'Medium'); -- id 10

-- Вопросы по SQL
INSERT INTO questions (topic_id, question_text, difficulty) VALUES
(2, 'Which SQL clause is used to combine rows from two or more tables based on a related column?', 'Easy'), -- id 11
(2, 'Which clause is used to filter groups in SQL?', 'Medium'), -- id 12
(2, 'Which SQL operator is used to combine multiple conditions and return true only if all conditions are true?', 'Easy'), -- id 13
(2, 'Which SQL aggregate function returns the total number of rows in a group?', 'Medium'), -- id 14
(2, 'Which SQL command is used to remove all rows from a table without deleting the table?', 'Hard'), -- id 15
(2, 'Which constraint uniquely identifies each record in a database table?', 'Easy'), -- id 16
(2, 'Which SQL keyword is used to return only distinct (unique) values from a query?', 'Medium'), -- id 17
(2, 'Which SQL command removes all rows from a table but keeps the table structure intact?', 'Hard'), -- id 18
(2, 'Which SQL operator is used to check if a value is absent in a column?', 'Medium'), -- id 19
(2, 'Which SQL clause is used to specify the table from which to select or delete data?', 'Easy'); -- id 20



-- Java Options
INSERT INTO options (question_id, option_text, is_correct) VALUES
(1, 'class', FALSE), (1, 'interface', FALSE), (1, 'extends', TRUE), (1, 'implements', FALSE),
(2, 'final', TRUE), (2, 'abstract', FALSE), (2, 'static', FALSE), (2, 'private', FALSE),
(3, 'public', FALSE), (3, 'private', FALSE), (3, 'protected', TRUE), (3, 'static', FALSE),
(4, 'int', FALSE), (4, 'long', TRUE), (4, 'short', FALSE), (4, 'byte', FALSE),
(5, 'Object', TRUE), (5, 'Integer', FALSE), (5, 'String', FALSE), (5, 'Boolean', FALSE),
(6, 'ArrayList', TRUE), (6, 'LinkedList', FALSE), (6, 'HashSet', FALSE), (6, 'TreeMap', FALSE),
(7, 'try', FALSE), (7, 'catch', FALSE), (7, 'finally', TRUE), (7, 'throw', FALSE),
(8, 'StringBuilder', FALSE), (8, 'StringBuffer', TRUE), (8, 'String', FALSE), (8, 'String', FALSE),
(9, 'abstract', TRUE), (9, 'private', FALSE), (9, 'protected', FALSE), (9, 'final', FALSE),
(10, 'java.lang', TRUE), (10, 'java.util', FALSE), (10, 'java.io', FALSE), (10, 'java.net', FALSE);

-- SQL Options
INSERT INTO options (question_id, option_text, is_correct) VALUES
(11, 'INNER JOIN', TRUE), (11, 'OUTER JOIN', FALSE), (11, 'LEFT JOIN', FALSE), (11, 'RIGHT JOIN', FALSE),
(12, 'WHERE', FALSE), (12, 'HAVING', TRUE), (12, 'GROUP BY', FALSE), (12, 'ORDER BY', FALSE),
(13, 'AND', TRUE), (13, 'OR', FALSE), (13, 'NOT', FALSE), (13, 'EXCEPT', FALSE),
(14, 'COUNT()', TRUE), (14, 'SUM()', FALSE), (14, 'MAX()', FALSE), (14, 'AVG()', FALSE),
(15, 'SELECT', FALSE), (15, 'INSERT', FALSE), (15, 'UPDATE', FALSE), (15, 'DELETE', TRUE),
(16, 'PRIMARY KEY', TRUE), (16, 'FOREIGN KEY', FALSE), (16, 'UNIQUE', FALSE), (16, 'CHECK', FALSE),
(17, 'DISTINCT', TRUE), (17, 'ALL', FALSE), (17, 'UNIQUE', FALSE), (17, 'NONE', FALSE),
(18, 'TRUNCATE', TRUE), (18, 'DELETE', FALSE), (18, 'DROP', FALSE), (18, 'ALTER', FALSE),
(19, 'NULL', FALSE), (19, 'IS NULL', TRUE), (19, 'IS NOT NULL', FALSE), (19, 'NOT NULL', FALSE),
(20, 'FROM', TRUE), (20, 'WHERE', FALSE), (20, 'SELECT', FALSE), (20, 'JOIN', FALSE);