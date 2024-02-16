-- Table for authors
CREATE TABLE authors (
    author_id INT IDENTITY(1,1) PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL
);

-- Table for genres
CREATE TABLE genres (
    genre_id INT IDENTITY(1,1) PRIMARY KEY,
    genre_name VARCHAR(50) NOT NULL
);

-- Table for publishers
CREATE TABLE publishers (
    publisher_id INT IDENTITY(1,1) PRIMARY KEY,
    publisher_name VARCHAR(100) NOT NULL
);

-- Table for books
CREATE TABLE books (
    book_id INT IDENTITY(1,1) PRIMARY KEY,
    book_title VARCHAR(200) NOT NULL,
    author_id INT NOT NULL,
    genre_id INT NOT NULL,
    publisher_id INT NOT NULL,
    publication_year INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (publisher_id) REFERENCES publishers(publisher_id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Table for book sales
CREATE TABLE book_sales (
    sale_id INT IDENTITY(1,1) PRIMARY KEY,
    book_id INT NOT NULL,
    sale_date DATE NOT NULL,
    sale_price DECIMAL(10, 2) NOT NULL,
    quantity_sold INT NOT NULL,
    FOREIGN KEY (book_id) REFERENCES books(book_id) ON DELETE CASCADE ON UPDATE CASCADE
);
