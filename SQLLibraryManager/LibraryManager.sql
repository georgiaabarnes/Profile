CREATE DATABASE LibraryManagement

CREATE TABLE book (
BookID INT PRIMARY KEY,
Title varchar(60),
PublisherName varchar (30)
);

CREATE TABLE Publisher (
Name varchar(30)PRIMARY KEY,
[Address] varchar (40),
Phone varchar(10)
);

CREATE TABLE Book_Authors (
BookID int,
AuthorName varchar(40)
);

CREATE TABLE Book_Copies (
BookID int,
BranchID int,
No_Of_Copies int
);

CREATE TABLE Book_Loans (
BookID int,
BranchID int,
CardNo varchar(12),
DateOut date,
DueDate date,
);

CREATE TABLE Library_Branch (
BranchID int PRIMARY KEY,
BranchName varchar(25),
[Address] varchar(40)
);

CREATE TABLE Borrower (
CardNo varchar (12) PRIMARY KEY,
Name varchar (40),
[Address] varchar(40),
Phone varchar(10)
);

INSERT INTO Publisher
Values ('Penguin','The Sewers','9865496497'),
('Scarecrow','3679 Gotham Ave','687138948'),
('Joker','1 Arkham Asylum','667924692'),
('Poison Ivy','2 First St','258796315'),
('Bane','39 Freakish Ln','264987359'),
('Two-Face','7893 Broadway','259734973'),
('Dr. Strange','2 Smart Way','264973597');

INSERT INTO book 
Values (1,'In Search of Lost Time','Penguin'),
(2,'Ulysses','Scarecrow'),
(3,'Don Quixote','Joker'),
(4,'Moby Dick','Poison Ivy'),
(5,'Hamlet','Bane'),
(6,'War and Peace','Two-Face'),
(7,'The Odyssey','Dr. Strange'),
(8,'The Great Gatsby','Penguin'),
(9,'The Divine Comedy','Joker'),
(10,'Madame Bovary','Scarecrow'),
(11,'The Brothers Karamazov','Bane'),
(12,'One Hundred Years of Solitude','Dr. Strange'),
(13,'The Adventures of Hucklebetty Finn','Poison Ivy'),
(14,'The Illiad','Joker'),
(15,'Lolita','Two-Face'),
(16,'Anna Karenina','Penguin'),
(17,'Crime and Punishment','Bane'),
(18,'Alices Adventures in Wonderland','Penguin'),
(19,'The Sound and the Fury','Joker'),
(20,'The Lost Tribe','Scarecrow');

INSERT INTO Book_Authors
Values(1,'Marcel Proust'),
(2,'James Joyce'),
(3,'Miguel de Cervantes'),
(4,'Herman Melville'),
(5,'Shakespeare'),
(6,'Leo Tolstoy'),
(7,'Homer'),
(8,'F. Scott Fitzgerald'),
(9,'Dante Alighieri'),
(10,'Gustave Flaubert'),
(11,'Fyodor Dostoyevsky'),
(12,'Gabriel Garcia Marquez'),
(13,'Mark Twain'),
(14,'Homer'),
(15,'Vladimir Nabokov'),
(16,'Leo Tolstoy'),
(17,'Fyodor Dostoyevsky'),
(18,'Lewis Carroll'),
(19,'William Faulkner'),
(20, 'Stephen King');

INSERT INTO Book_Copies
Values (1,1,6),
(1,2,5),
(1,3,9),
(1,4,7),
(2,1,5),
(2,2,5),
(2,3,7),
(2,4,5),
(3,1,4),
(3,2,7),
(3,3,6),
(3,4,8),
(4,1,7),
(4,2,6),
(4,3,5),
(4,4,5),
(5,1,3),
(5,2,4),
(5,3,2),
(5,4,4),
(6,1,3),
(6,2,5),
(6,3,4),
(6,4,3),
(7,1,2),
(7,2,4),
(7,3,5),
(7,4,5),
(8,1,4),
(8,2,6),
(8,3,6),
(8,4,4),
(9,1,4),
(9,2,3),
(9,3,2),
(9,4,7),
(10,1,4),
(10,2,8),
(10,3,3),
(10,4,2),
(11,2,5),
(11,3,9),
(11,4,7),
(12,1,5),
(12,2,5),
(12,3,7),
(12,4,5),
(13,1,4),
(13,2,7),
(13,3,6),
(13,4,8),
(14,1,7),
(14,2,6),
(14,3,5),
(14,4,5),
(15,1,3),
(15,2,4),
(15,3,2),
(15,4,4),
(16,1,3),
(16,2,5),
(16,3,4),
(16,4,3),
(17,1,2),
(17,2,4),
(17,3,5),
(17,4,5),
(18,1,4),
(18,2,6),
(18,3,6),
(18,4,4),
(19,1,4),
(19,2,3),
(19,3,2),
(19,4,7),
(20,1,4),
(20,2,8),
(20,3,3),
(20,4,2);

INSERT INTO Library_Branch
Values (1, 'Sharpstown', '456 Summit St'),
(2, 'Central', '9860 Main St'),
(3, 'Countrywood','45 Treat Blvd'),
(4, 'Gahanna','89 Broad St');

INSERT INTO Borrower
Values ('324561287946', 'Jennifer Edwards', '876 Spokane Ct','6548793591'),
('315978469874','Jake Little','587 High St', '3549876429'),
('315436541258', 'Jessica Hindman', '830 4th St', '3211569748'),
('321542684658','Brian Doney', '873 5th Ave','6145879345'),
('214536987456','Jeffery Burgstrom','5678 3rd Ave','3645983654'),
('254687695491','Nicolas Glasser','20 Olentangy Blvd','3654897123'),
('362587964587','David Burkey','230 Lindon Blvd','3649756875'),
('364287954632','Rebecca Brown','469 Pennsylvania Ave','8796435298'),
('876954398762','Griffin Browning','5793 Neil Ave','4569876827'),
('846975921354','Daniel Loper','185 Northwood Ave','6148764592');

Insert Into Book_Loans
Values (1,2, '315978469874', '2017-01-15','2017-01-30'),
(2,2,'315978469874', '2016-11-12','2016-11-27'),
(5,2,'315978469874','2016-12-01','2016-12-16'),
(6,2,'315978469874','2016-10-30','2016-11-15'),
(8,2,'315978469874','2016-09-20','2016-10-05'),
(12,2,'315978469874','2016-05-10','2016-05-25'),
(15,2,'315978469874','2016-10-05','2016-10-20'),
(18,2,'315978469874','2016-08-11','2016-08-26'),
(3,3,'324561287946','2016-12-01','2016-12-16'),
(4,3,'324561287946','2016-10-30','2016-11-15'),
(9,3,'324561287946','2016-09-20','2016-10-05'),
(11,3,'324561287946','2016-05-10','2016-05-25'),
(13,3,'324561287946','2016-10-05','2016-10-20'),
(17,3,'324561287946','2016-08-11','2016-08-26'),
(5,4,'315436541258','2016-10-30','2016-11-15'),
(1,4,'315436541258','2016-09-20','2016-10-05'),
(12,4,'315436541258','2016-05-10','2016-05-25'),
(13,4,'315436541258','2016-10-05','2016-10-20'),
(15,4,'315436541258','2016-08-11','2016-08-26'),
(6,1,'214536987456','2016-09-20','2016-10-05'),
(14,1,'214536987456','2016-05-10','2016-05-25'),
(18,1,'214536987456','2016-10-05','2016-10-20'),
(20,1,'214536987456','2016-08-11','2016-08-26'),
(1,2,'254687695491','2016-05-10','2016-05-25'),
(3,2,'254687695491','2016-10-05','2016-10-20'),
(5,2,'254687695491','2016-08-11','2016-08-26'),
(16,2,'254687695491','2016-09-20','2016-10-05'),
(9,2,'254687695491','2016-05-10','2016-05-25'),
(12,2,'254687695491','2016-10-05','2016-10-20'),
(20,2,'254687695491','2016-08-11','2016-08-26'),
(3,3,'362587964587','2016-10-05','2016-10-20'),
(4,3,'362587964587','2016-08-11','2016-08-26'),
(11,3,'362587964587','2016-09-20','2016-10-05'),
(13,3,'362587964587','2016-05-10','2016-05-25'),
(17,3,'362587964587','2016-10-05','2016-10-20'),
(20,3,'362587964587','2016-08-11','2016-08-26'),
(1,4,'364287954632','2016-10-05','2016-10-20'),
(2,4,'364287954632','2016-08-11','2016-08-26'),
(8,4,'364287954632','2016-10-05','2016-10-20'),
(14,4,'364287954632','2016-08-11','2016-08-26'),
(15,4,'364287954632','2016-09-20','2016-10-05'),
(17,4,'364287954632','2016-05-10','2016-05-25'),
(19,4,'364287954632','2016-10-05','2016-10-20'),
(20,4,'364287954632','2016-08-11','2016-08-26'),
(2,2,'876954398762','2016-08-11','2016-08-26'),
(3,3,'876954398762','2016-10-05','2016-10-20'),
(4,3,'876954398762','2016-08-11','2016-08-26'),
(6,3,'876954398762','2016-09-20','2016-10-05'),
(7,3,'876954398762','2016-05-10','2016-05-25'),
(9,3,'876954398762','2016-10-05','2016-10-20'),
(11,3,'876954398762','2016-08-11','2016-08-26'),
(12,4,'876954398762','2016-10-05','2016-10-20'),
(13,4,'876954398762','2016-08-11','2016-08-26'),
(8,4,'876954398762','2016-10-05','2016-10-20'),
(14,4,'876954398762','2016-08-11','2016-08-26'),
(15,1,'876954398762','2016-09-20','2016-10-05'),
(17,1,'876954398762','2016-05-10','2016-05-25'),
(19,1,'876954398762','2016-10-05','2016-10-20'),
(20,1,'876954398762','2016-08-11','2016-08-26');


--query 1
Select sum (No_Of_Copies) 
from Book_Copies a
Inner Join book b
On a.BookID=b.BookID
where title = 'The Lost Tribe'

--query 2
select d.BranchName, c.No_Of_Copies
From book b
INNER JOIN Book_Copies c
ON b.BookID=c.BookID
INNER JOIN Library_Branch d
ON c.BranchID=d.BranchID
Where title='The Lost Tribe'

--query 3
Select Borrower.Name
From Borrower
Left JOIN Book_Loans
On Borrower.CardNo=Book_Loans.CardNo
Where Book_Loans.CardNo IS NULL

--query 4/stored proc
Create Proc uspGetDueBooksFromBranchNameDate @DueDate Date = Null, @BranchName nvarchar(25) = Null
As 
Select book.Title, Borrower.Name, Borrower.[Address]
From book
INNER JOIN Book_Loans
On book.BookID=Book_Loans.BookID
INNER JOIN Borrower
ON Book_Loans.CardNo=Borrower.CardNo
INNER JOIN Library_Branch
ON Library_Branch.BranchID=Book_Loans.BranchID
Where Library_Branch.BranchName = @BranchName AND DueDate = @DueDate;
Go 

EXEC uspGetDueBooksFromBranchNameDate @DueDate = '2016-08-26', @BranchName = 'Sharpstown'
GO

--query 5
select Library_Branch.BranchName, Count (BookID) 
As TotalBooksLoaned From(Book_Loans
INNER JOIN Library_Branch
On Book_Loans.BranchID=Library_Branch.BranchID)
Group By BranchName

--query 6
Select Borrower.Name, Borrower.[Address], 
Count (Book_Loans.BookID)
AS NumberOfBooks
From (Borrower 
Inner join Book_Loans
on Borrower.CardNo=Book_Loans.CardNo)
Group By Name, [Address]
Having Count (Book_Loans.BookID) >5;

--query 7/stored proc
create proc uspGetTitleCopiesFromAuthorBranch @AuthorName nvarchar(40)=Null, @BranchName nvarchar(25)= null
AS
select book.Title, Book_Copies.No_Of_Copies
From book
INNER JOIN Book_Copies
ON book.BookID=Book_Copies.BookID
INNER JOIN Book_Authors
On book.BookID = Book_Authors.BookID
INNER JOIN Library_Branch
On Library_Branch.BranchID=Book_Copies.BranchID
Where Book_Authors.AuthorName=@AuthorName AND Library_Branch.BranchName=@BranchName;
Go

Exec uspGetTitleCopiesFromAuthorBranch @AuthorName = 'Stephen King', @BranchName = 'Central'
GO