
CREATE TABLE question (
                          id SERIAL PRIMARY KEY,
                          text VARCHAR(255) NOT NULL
);

CREATE TABLE answer (
                        id SERIAL PRIMARY KEY,
                        text VARCHAR(255) NOT NULL,
                        correct BOOLEAN NOT NULL,
                        question_id INT REFERENCES question(id) ON DELETE CASCADE
);

INSERT INTO question (text) VALUES
                                ('What is the purpose of the transient keyword in Java?'),
                                ('Which design pattern is used to implement a flexible and reusable algorithm?'),
                                ('What is the purpose of the finalize() method in Java?'),
                                ('What is the difference between method overloading and method overriding?'),
                                ('What is the purpose of the java.util.concurrent package?'),
                                ('What is the difference between HashSet and TreeSet in Java?'),
                                ('What is the purpose of the transient keyword in Java?'),
                                ('Which design pattern is used to implement a flexible and reusable algorithm?'),
                                ('What is the purpose of the finalize() method in Java?'),
                                ('What is the difference between method overloading and method overriding?');

INSERT INTO answer (text, correct, question_id) VALUES
                                                    ('To make a variable immutable', false, 1),
                                                    ('To indicate that a variable should not be serialized', true, 1),
                                                    ('To make a variable volatile', false, 1),
                                                    ('To declare a variable as a class variable', false, 1),

                                                    ('Observer Pattern', false, 2),
                                                    ('Strategy Pattern', true, 2),
                                                    ('Singleton Pattern', false, 2),
                                                    ('Decorator Pattern', false, 2),

                                                    ('To force garbage collection', false, 3),
                                                    ('To clean up resources before an object is garbage collected', true, 3),
                                                    ('To release the memory occupied by an object', false, 3),
                                                    ('To define a static method', false, 3),

                                                    ('Method overloading is resolved at compile time, while method overriding is resolved at runtime', true, 4),
                                                    ('Method overloading is resolved at runtime, while method overriding is resolved at compile time', false, 4),
                                                    ('Method overloading is specific to the subclass, while method overriding is specific to the superclass', false, 4),
                                                    ('Method overloading is used in abstract classes, while method overriding is used in interfaces', false, 4),

                                                    ('To provide support for concurrent programming in Java', true, 5),
                                                    ('To handle exceptions in a multithreaded environment', false, 5),
                                                    ('To implement data structures like queues and lists', false, 5),
                                                    ('To manage database connections', false, 5),

                                                    ('HashSet guarantees order of elements, while TreeSet does not', false, 6),
                                                    ('TreeSet guarantees order of elements, while HashSet does not', true, 6),
                                                    ('HashSet allows duplicate elements, while TreeSet does not', false, 6),
                                                    ('TreeSet allows duplicate elements, while HashSet does not', false, 6),

                                                    ('To make a variable immutable', false, 7),
                                                    ('To indicate that a variable should not be serialized', true, 7),
                                                    ('To make a variable volatile', false, 7),
                                                    ('To declare a variable as a class variable', false, 7),

                                                    ('Observer Pattern', false, 8),
                                                    ('Strategy Pattern', true, 8),
                                                    ('Singleton Pattern', false, 8),
                                                    ('Decorator Pattern', false, 8),

                                                    ('To force garbage collection', false, 9),
                                                    ('To clean up resources before an object is garbage collected', true, 9),
                                                    ('To release the memory occupied by an object', false, 9),
                                                    ('To define a static method', false, 9),

                                                    ('Method overloading is resolved at compile time, while method overriding is resolved at runtime', true, 10),
                                                    ('Method overloading is resolved at runtime, while method overriding is resolved at compile time', false, 10),
                                                    ('Method overloading is specific to the subclass, while method overriding is specific to the superclass', false, 10),
                                                    ('Method overloading is used in abstract classes, while method overriding is used in interfaces', false, 10);
