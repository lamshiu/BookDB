-- Insert into Authors
INSERT INTO Authors (Name, Country) VALUES
('J.K. Rowling', 'United Kingdom'),
('George R.R. Martin', 'United States'),
('Jane Austen', 'United Kingdom');

-- Insert into Categories
INSERT INTO Categories (Name) VALUES
('Fantasy'),
('Historical Fiction'),
('Classic Literature');

-- Insert into Books
INSERT INTO Books (Title, AuthorID, CategoryID, ISBN, PublicationYear) VALUES
('Harry Potter and the Sorcerer''s Stone', 1, 1, '978-0439708180', 1997),
('A Game of Thrones', 2, 1, '978-0553103540', 1996),
('Pride and Prejudice', 3, 3, '978-1503290563', 1813);

-- Insert into Loans
INSERT INTO Loans (BookID, BorrowerName, BorrowedDate, DueDate) VALUES
(1, 'Alice Johnson', '2024-01-15', '2024-02-15'),
(3, 'Bob Smith', '2024-01-20', '2024-02-20');

-- Insert into Purchases
INSERT INTO Purchases (BookID, PurchaseDate, Price) VALUES
(1, '2023-12-01', 19.99),
(2, '2023-12-10', 29.99),
(3, '2023-11-17', 9.99);
