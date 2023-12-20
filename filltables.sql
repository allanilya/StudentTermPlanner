insert into course (name, instructor, schedule)
values 
('CUS1163', 'Nikhil Yadav', 'Asynchronous'),
('CUS1156', 'Nikhil Yadav', 'W 10:40-13:30'),
('CUS1165', 'Bonnie MacKellar', 'R 09:05-10:30'),
('PHI3000C', 'Kevin McShane', 'TF 10:40-12:05'),
('THE1000C', 'Barbara Pinnola', 'TF 09:05-10:30');

insert into event (name, category, duedate, description, courseid)
values
-- CUS1163
('Student Attendance Quiz', 'Quiz', NULL, 'Due by the end of the second week of class', 1),
('Discussion 1', 'Discussion', NULL, 'What are the functionalities that Kernel mode provides that user mode does not?', 1),
('Lab 1', 'Lab', '2023-02-03', 'Linux Commands and System Calls.', 1),
('Discussion 2', 'Discussion', NULL, 'What sets apart Unix and Linux? Discuss.', 1),
('Lab 2', 'Lab', '2023-02-10', 'Command Line Arguments.', 1),
('Discussion 3', 'Discussion', NULL, 'What are the main configurations an OS can be organized by?', 1),
('Lab 3', 'Lab', '2023-03-01', 'Thread Synchronization.', 1),
('Discussion 4', 'Discussion', NULL, 'How are livelock and deadlock different? Look up dining philosophers problem...highlight the issues in this related to deadlock, livelock, starvation etc.?', 1),
('Exam 1', 'Exam', '2023-03-10','Online exam. 85 minute time limit. Due midnight. Late submissions not accepted.', 1),
('Deliverable 1', 'Project', '2023-03-10', 'Project paper idea. Write a 500 word essay that describes your idea for a research paper regarding topics related to operating systems.', 1),
('Deliverable 2', 'Project', '2023-04-10', 'Research Paper Literature Review + Background Essay. Site 15 journal sources', 1),
('Final Deliverable', 'Project', '2023-05-01', 'OS Research paper Final Submission. must be 8+ pages long.', 1),
('Assignment 1', 'Assignment', '2023-03-24', 'Process Synchronization. Answer Questions.', 1),
('Discussion 5', 'Discussion', NULL, 'What is the difference between multithreading and multiprocessing? Do Synchronization problems occur in both of them?', 1),
('Assignment 2', 'Assignment', '2023-03-31', 'Synchronization, CPU Scheduling. Answer Questions.', 1),
('Discussion 6', 'Discussion', NULL, 'How would you analyze which CPU scheduling algorithm to use between FCFS and RR?', 1),
('Discussion 7', 'Discussion', NULL, 'Explain the difference between a TLB and a page table. Where would you find each in the OS?', 1),
('Assignment 3', 'Assignment', '2023-04-24', 'Page Replacement. Answer Questions.', 1),
('Discussion 8', 'Discussion', NULL, 'What is the difference between a frame and a page? Where is each used?', 1),
('Exam 2', 'Exam', '2023-04-21','Online exam. Due midnight. Late submissions not accepted.', 1),
('CUS1163 Final', 'Exam', '2023-05-05','Online exam. Due at noon. Late submissions not accepted.', 1),
('Reading Assignment: Concurrency', 'Assignment', '2023-02-17', 'Read the given tutorial.', 1);
insert into event (name, category, duedate, description, courseid)
values
-- CUS1156
('Student Attendance Quiz', 'Quiz', NULL, 'Due by the end of the second week of class', 2),
('Exam 1', 'Exam', '2023-03-08','In person Mid-term exam. You are allowed a standard sized paper as a cheat sheet.', 2),
('Final', 'Exam', '2023-05-10','In person exam. good luck.', 2),
('Lab 1', 'Lab', '2023-01-20', 'Java review. Write Java program', 2),
('Lab 2', 'Lab', '2023-01-25', 'Java classes. Write Java programs', 2),
('Lab 3', 'Lab', '2023-02-08', 'Git and BitBucket (Installs/Setup)', 2),
('Discussion #2', 'Discussion', NULL, 'When would you use an interface as opposed to an abstract class?', 2),
('In Class Exercise', 'Assignment', '2023-02-10', 'In a group, come up with a requirements document.', 2),
('Lab 4', 'Lab', '2023-02-22', 'UML to code Translation (Due: 02/22 Strictly Before Class)', 2),
('J-Unit Reading Assignment', 'Assignment', NULL, 'JUnit Reading Assignment + Accompanying Code Review', 2),
('Discussion #3', 'Discussion', NULL, 'What would determine your choice of architectural design?', 2),
('Discussion #4', 'Discussion', NULL, 'How are livelock and deadlock different? Look up dining philosophers problem...highlight the issues in this related to deadlock, livelock, starvation etc.?', 2),
('Lab 5', 'Lab', '2023-04-05', 'Lambda Expressions - Individual Assignment (Due 04/05)', 2),
('Project 1', 'Project', '2023-04-05', 'Use Java to make an Arcade Machine interface. Must have an external storage.', 2),
('Project 2', 'Project', '2023-04-26', 'Using canvas, make Personalized Student Term Planner in Java', 2),
('Project 2 (Test Plan)', 'Project', '2023-04-26', 'Please extend your work in Project 2 to include JUnit test cases and a solid test plan. Document your tests for the reader.', 2);

insert into event (name, category, duedate, description, courseid)
values
-- CUS1165
('Syllabus Quiz', 'Quiz', '2023-01-19', '(In class)', 3),
('Verification Quiz', 'Quiz', '2023-01-23', 'Due Monday', 3),
('Quiz 1', 'Quiz', '2023-01-30', 'Database concepts(In class)', 3),
('Lab 1', 'Lab', '2023-01-30', 'Answer questions about data', 3),
('Week2 Questions', 'Assignment', '2023-01-25', 'After watching the presentations on database models and architectures, and on the relational model, come up with two questions about these topics.', 3),
('Quiz 2', 'Quiz', '2023-02-02', 'Relational model (In class)', 3),
('Lab 2', 'Lab', '2023-02-06', 'Lab2 is mainly for the purpose of installing MySQL onto your machine. Here are the lab instructions', 3),
('Week3 Questions', 'Assignment', '2023-02-01', 'After watching the presentations on keys, foreign keys, and constraints in the relational model, come up with two questions about these topics', 3),
('Week 4 Quiz 3', 'Quiz', '2023-02-09', 'ER diagrams (In class)', 3),
('Lab 3', 'Lab', '2023-02-13', 'Answer questions about ER diagram', 3),
('Week4 Questions', 'Assignment', '2023-02-09', 'Come up with two questions about this weeks topics', 3),
('Lab 4', 'Lab', '2023-02-21', 'Follow lab instructions to make sql tables', 3),
('Week5 Questions', 'Assignment', '2023-02-15', 'Come up with two questions about this weeks topics', 3),
('Week 5 Quiz 4', 'Quiz', '2023-02-09', '(In class)', 3),
('Midterm 1', 'Exam', '2023-02-23','In person Mid-term exam. intro to querying with SQL', 3),
('Midterm 2', 'Exam', '2023-02-23','In person Mid-term exam. intro to querying with SQL', 3),
('Lab 5', 'Lab', '2023-03-13', 'Follow lab instructions to make sql tables', 3),
('Week7 Questions', 'Assignment', '2023-03-08', 'Come up with two questions about this weeks topics', 3),
('Week 7 Quiz 5', 'Quiz', '2023-03-09', '(In class)', 3),
('Lab 6', 'Lab', '2023-03-20', 'Follow lab instructions to make sql queries', 3),
('Week 8 Quiz 6', 'Quiz', '2023-03-16', '(In class)', 3),
('Week8 Questions', 'Assignment', '2023-03-19', 'Come up with two questions about this weeks topics', 3),
('Quiz 7', 'Quiz', '2023-03-23', 'SQL and informal design guidelines(In class)', 3),
('Lab 7', 'Lab', '2023-03-27', 'Follow lab instructions.', 3),
('Week9 Questions', 'Assignment', '2023-03-22', 'Come up with two questions about this weeks topics', 3),
('Homework 8', 'Assignment', '2023-04-12', 'Follow homework instructions.', 3),
('Homework 9', 'Assignment', '2023-04-17', 'Follow homework instructions.', 3),
('Week 12 Quiz 8', 'Quiz', '2023-04-13', 'Indexes (In class)', 3),
('Homework 10', 'Assignment', '2023-04-24', 'Follow homework instructions.', 3),
('Week 13 Quiz 9', 'Quiz', '2023-04-20', 'B+ trees (In class)', 3),
('Project stage 1', 'Project', '2023-02-09', 'Work with partner. Follow instructions', 3),
('Project stage 2 part 1', 'Project', '2023-02-21', 'Work with partner. Follow instructions', 3),
('Project stage 2 part 2', 'Project', '2023-03-09', 'Work with partner. Follow instructions', 3),
('Project stage 3', 'Project', '2023-03-24', 'Work with partner. Follow instructions', 3),
('Project stage 4', 'Project', '2023-04-17', 'Work with partner. Follow instructions', 3),
('Project stage 5', 'Project', '2023-05-01', 'Work with partner. Follow instructions', 3),
('Final', 'Exam', '2023-05-04','In person final.', 3);

insert into event (name, category, duedate, description, courseid)
values
-- PHI3000C
('Student Attendance Quiz', 'Quiz', NULL, 'Due by the end of the second week of class', 4),
('Metaphysics Quiz 1', 'Quiz', '2023-02-03', 'Plato - Allegory of the cave', 4),
('Metaphysics Quiz 2', 'Quiz', '2023-02-17', 'Anselm and Aquinas arguments of God', 4),
('Metaphysics Quiz 3', 'Quiz', '2023-03-08', 'Descartes', 4),
('Metaphysics Quiz 4', 'Quiz', '2023-03-24', 'Spinoza and Leibniz', 4),
('Metaphysics Quiz 5', 'Quiz', '2023-04-05', 'Kant', 4),
('Metaphysics Quiz 6', 'Quiz', '2023-04-21', 'Nietzsche', 4),
('Final', 'Exam', '2023-05-04','Online test', 4);

insert into event (name, category, duedate, description, courseid)
values
-- THE1000C
('Student Attendance Quiz', 'Quiz', NULL, 'Due by the end of the second week of class', 5),
('Discussion 1', 'Discussion', '2023-01-20', 'Introduction', 5),
('Discussion 1 A', 'Discussion', '2023-01-24', 'Experience with the creator', 5),
('Discussion 2', 'Discussion', '2023-01-27', 'Mystery of God', 5),
('Discussion 3', 'Discussion', '2023-01-31', 'Mystery of God', 5),
('Discussion 4', 'Discussion', '2023-02-03', 'Navigating through the Bible', 5),
('Quiz 1', 'Quiz', '2023-02-03', 'Religion', 5),
('Bible Project Assignment 1', 'Project', '2023-02-07', 'Work with partners. Make a powerpoint', 5),
('Discussion 5', 'Discussion', '2023-02-10', 'Old Testament', 5),
('Quiz 2', 'Quiz', '2023-02-14', 'Religion', 5),
('Bible Project Assignment 2', 'Project', '2023-02-17', 'Work with partners. Make a powerpoint', 5),
('Midterm 1', 'Exam', '2023-02-24','In person Mid-term exam', 5),
('Discussion 6', 'Discussion', '2023-02-21', 'New Testament', 5),
('Discussion 7', 'Discussion', '2023-02-24', 'Christology', 5),
('Discussion 8', 'Discussion', '2023-03-07', 'Who is Jesus?', 5),
('Bible Project Assignment 3', 'Project', '2023-03-10', 'Work with partners. Finish powerpoint', 5),
('Bible Project Presentation', 'Project', '2023-03-14', 'Present', 5),
('Discussion 9', 'Discussion', '2023-03-14', 'The Church', 5),
('Discusion 10', 'Discussion', '2023-03-17', 'Social Justice', 5),
('Discusion 11', 'Discussion', '2023-03-21', 'Social Justice', 5),
('Discusion 12', 'Discussion', '2023-03-17', 'Christian Morality', 5),
('Quiz 3', 'Quiz', '2023-03-24', 'Religion', 5),
('Discusion 13', 'Discussion', '2023-03-28', 'Christian Morality', 5),
('Discusion 14', 'Discussion', '2023-03-31', 'Protestantism', 5),
('Discusion 15', 'Discussion', '2023-04-04', 'Protestantism', 5),
('Discussion 16', 'Discussion', '2023-04-11', 'Grace and Sacraments', 5),
('Discusion 17', 'Discussion', '2023-04-18', 'Spirituality', 5),
('Discusion 18', 'Discussion', '2023-04-21', 'Judaism', 5),
('Discusion 19', 'Discussion', '2023-04-28', 'Islam', 5),
('Final Exam', 'Exam', '2023-05-05','In person final.', 5);












