-- Query to find all books by a specific author
-- Replace 'Author Name' with the actual author name
SELECT b.Title, b.PublicationYear, c.Name AS Category
FROM Books b
JOIN Authors a ON b.AuthorID = a.AuthorID
JOIN Categories c ON b.CategoryID = c.CategoryID
WHERE a.Name = 'Author Name';

-- View for Books currently on loan
CREATE VIEW BooksOnLoan AS
SELECT b.Title, l.BorrowerName, l.BorrowedDate, l.DueDate
FROM Loans l
JOIN Books b ON l.BookID = b.BookID
WHERE l.ReturnedDate IS NULL;

-- Query to use the view
SELECT * FROM BooksOnLoan;

-- Query to find all purchases made in a specific year
-- Replace YYYY with the actual year
SELECT b.Title, p.PurchaseDate, p.Price
FROM Purchases p
JOIN Books b ON p.BookID = b.BookID
WHERE EXTRACT(YEAR FROM p.PurchaseDate) = 'YYYY';
