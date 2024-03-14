-- Create Authors table
CREATE TABLE Authors (
    AuthorID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Country VARCHAR(50)
);

-- Create Categories table
CREATE TABLE Categories (
    CategoryID SERIAL PRIMARY KEY,
    Name VARCHAR(50) NOT NULL
);

-- Create Books table
CREATE TABLE Books (
    BookID SERIAL PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    AuthorID INT NOT NULL,
    CategoryID INT NOT NULL,
    ISBN VARCHAR(20),
    PublicationYear INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

-- Create Loans table
CREATE TABLE Loans (
    LoanID SERIAL PRIMARY KEY,
    BookID INT NOT NULL,
    BorrowerName VARCHAR(100) NOT NULL,
    BorrowedDate DATE NOT NULL,
    DueDate DATE NOT NULL,
    ReturnedDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

-- Create Purchases table
CREATE TABLE Purchases (
    PurchaseID SERIAL PRIMARY KEY,
    BookID INT NOT NULL,
    PurchaseDate DATE NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
