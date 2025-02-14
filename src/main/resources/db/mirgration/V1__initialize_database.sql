
insert into question(
    id, category, difficulty_level, option1, option2, option3, option4, question_title, right_answer
) values
      (1, 'Java', 'Easy', 'class', 'interface', 'extends', 'implements', 'Which Java keyword is used to create a subclass?', 'extends'),
      (2, 'Java', 'Medium', 'final', 'abstract', 'static', 'private', 'Which keyword prevents method overriding?', 'final'),
      (3, 'Java', 'Easy', 'public', 'private', 'protected', 'static', 'Which access modifier allows access to all classes in the same package and subclasses?', 'protected'),
      (4, 'Java', 'Medium', 'int', 'long', 'short', 'byte', 'Which primitive data type has the largest size?', 'long'),
      (5, 'Java', 'Hard', 'Object', 'Integer', 'String', 'Boolean', 'Which class is the root of all Java classes?', 'Object'),
      (6, 'Java', 'Easy', 'ArrayList', 'LinkedList', 'HashSet', 'TreeMap', 'Which Java collection class allows duplicates and maintains insertion order?', 'ArrayList'),
      (7, 'Java', 'Medium', 'try', 'catch', 'finally', 'throw', 'Which block is used to ensure code runs after try/catch blocks?', 'finally'),
      (8, 'Java', 'Hard', 'StringBuilder', 'StringBuffer', 'String', 'String', 'Which class is synchronized and thread-safe?', 'StringBuffer'),
      (9, 'Java', 'Easy', 'abstract', 'private', 'protected', 'final', 'Which keyword can be used to prevent class instantiation?', 'abstract'),
      (10, 'Java', 'Medium', 'java.lang', 'java.util', 'java.io', 'java.net', 'Which package provides the core classes for Java programming?', 'java.lang');


insert into question(
    id, category, difficulty_level, option1, option2, option3, option4, question_title, right_answer
) values
      (11, 'SQL', 'Easy', 'INNER JOIN', 'OUTER JOIN', 'LEFT JOIN', 'RIGHT JOIN', 'Which SQL clause is used to combine rows from two or more tables based on a related column?', 'INNER JOIN'),
      (12, 'SQL', 'Medium', 'WHERE', 'HAVING', 'GROUP BY', 'ORDER BY', 'Which clause is used to filter groups in SQL?', 'HAVING'),
      (13, 'SQL', 'Easy', 'AND', 'OR', 'NOT', 'EXCEPT', 'Which SQL operator is used to combine multiple conditions and return true only if all conditions are true?', 'AND'),
      (14, 'SQL', 'Medium', 'COUNT()', 'SUM()', 'MAX()', 'AVG()', 'Which SQL aggregate function returns the total number of rows in a group?', 'COUNT()'),
      (15, 'SQL', 'Hard', 'SELECT', 'INSERT', 'UPDATE', 'DELETE', 'Which SQL command is used to remove all rows from a table without deleting the table?', 'DELETE'),
      (16, 'SQL', 'Easy', 'PRIMARY KEY', 'FOREIGN KEY', 'UNIQUE', 'CHECK', 'Which constraint uniquely identifies each record in a database table?', 'PRIMARY KEY'),
      (17, 'SQL', 'Medium', 'DISTINCT', 'ALL', 'UNIQUE', 'NONE', 'Which SQL keyword is used to return only distinct (unique) values from a query?', 'DISTINCT'),
      (18, 'SQL', 'Hard', 'TRUNCATE', 'DELETE', 'DROP', 'ALTER', 'Which SQL command removes all rows from a table but keeps the table structure intact?', 'TRUNCATE'),
      (19, 'SQL', 'Medium', 'NULL', 'IS NULL', 'IS NOT NULL', 'NOT NULL', 'Which SQL operator is used to check if a value is absent in a column?', 'IS NULL'),
      (20, 'SQL', 'Easy', 'FROM', 'WHERE', 'SELECT', 'JOIN', 'Which SQL clause is used to specify the table from which to select or delete data?', 'FROM');
