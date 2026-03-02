create database shruti;
use shruti;
create table Students(student_ID  INT PRIMARY KEY, Name varchar(50), Phone_no varchar(15), email varchar(50));
create table Books(book_id int PRIMARY Key , author varchar(20), Title varchar(50), available_copies INT);
create table issue(Issue_id int primary key , Student_ID int, book_id int , issue_date date , return_date date, foreign key (student_ID) references students(student_ID), foreign key (book_id) REFERENCES Books(book_id));
desc students;
insert into Students values(1,"shruti",9342346700,"shruti08@gmail.com"),(2, 'Rahul', '9876543210','rahul@gmail.com'),(3,"vaibhav",465399303,"vaibhav05@gmail.com"),(4,"prashant",91743676443,"prashant12@gmail.com"),(5,"deepali",9125432652,"deepali09@gmail.com"),(6,"pranay",9187685273,"pranay87@gmail.com"),(7,"sayli",9732423434,"sayli26@gmail.com"),(8,"pooja",905424152,"pooja89@gmail.com"),(9,"akash",91523433298,"akash29@gmail.com"),(10,"priyanshi",91763040844,"priya16@gmail.com");
select * from students;
desc Books;
insert into Books values(201,'John Smith','SQL Basics', 5),(202, 'David Kim', 'Database Concepts', 3),(203, 'Andrew Lee', 'MySQL Guide', 4),(204, 'James Brown', 'Learn Programming', 6),
 (205, 'Mark Allen', 'Data Structures', 2),
 (206, 'Robert Martin', 'Operating System', 5),
 (207, 'Lisa Ray', 'Computer Networks', 3),
 (208, 'Chris Evans', 'Web Development', 4),
 (209, 'Emma Watson', 'Python Basics', 7),
 (210, 'Daniel Craig', 'Java Programming', 5);
 select * from Books;
 desc issue;
select * from issue;
truncate table issue;
select * from issue;
insert into issue values(1, 1, 201, '2026-03-01', NULL),
(2, 2, 202, '2026-03-02', NULL),
(3, 3, 203, '2026-03-03', '2026-03-10'),
(4, 4, 204, '2026-03-04', NULL),
(5, 5, 205, '2026-03-05', '2026-03-12'),
(6, 1, 206, '2026-03-06', NULL),
(7, 2, 207, '2026-03-07', NULL),
(8, 3, 208, '2026-03-08', '2026-03-15'),
(9, 4, 209, '2026-03-09', NULL),
(10, 5, 210, '2026-03-10', NULL);

select * from books;


#Q1 Display student names and the books they have issued
SELECT Students.name, Books.title, Issue.issue_date
FROM Issue
JOIN Students ON Issue.Student_ID = Students.student_id
JOIN Books ON Issue.book_id = Books.book_id;

#Q2 Display all returned books
SELECT * FROM Issue
WHERE return_date IS not NULL;

#Q3 

