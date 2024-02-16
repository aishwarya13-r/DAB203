-- Inserting data into authors
INSERT INTO authors (author_name) VALUES ('Stephen King');
INSERT INTO authors (author_name) VALUES ('J.K. Rowling');
INSERT INTO authors (author_name) VALUES ('Agatha Christie');
INSERT INTO authors (author_name) VALUES ('Harper Lee');

-- Inserting data into genres
INSERT INTO genres (genre_name) VALUES ('Horror');
INSERT INTO genres (genre_name) VALUES ('Fantasy');
INSERT INTO genres (genre_name) VALUES ('Mystery');
INSERT INTO genres (genre_name) VALUES ('Classic');

-- Inserting data into publishers
INSERT INTO publishers (publisher_name) VALUES ('Penguin Random House');
INSERT INTO publishers (publisher_name) VALUES ('Scholastic Corporation');
INSERT INTO publishers (publisher_name) VALUES ('HarperCollins');
INSERT INTO publishers (publisher_name) VALUES ('Simon & Schuster');

-- Inserting data into books
INSERT INTO books (book_title, author_id, genre_id, publisher_id, publication_year) 
VALUES ('It', 1, 1, 1, 1986);

INSERT INTO books (book_title, author_id, genre_id, publisher_id, publication_year) 
VALUES ('Harry Potter and the Philosopher''s Stone', 2, 2, 2, 1997);

INSERT INTO books (book_title, author_id, genre_id, publisher_id, publication_year) 
VALUES ('Murder on the Orient Express', 3, 3, 3, 1934);

INSERT INTO books (book_title, author_id, genre_id, publisher_id, publication_year) 
VALUES ('To Kill a Mockingbird', 4, 4, 4, 1960);

INSERT INTO books (book_title, author_id, genre_id, publisher_id, publication_year) 
VALUES ('The Shining', 1, 1, 2, 1977);

INSERT INTO books (book_title, author_id, genre_id, publisher_id, publication_year) 
VALUES ('Pet Sematary', 1, 1, 2, 1983);

INSERT INTO books (book_title, author_id, genre_id, publisher_id, publication_year) 
VALUES ('Harry Potter and the Chamber of Secrets', 2, 2, 2, 1998);

INSERT INTO books (book_title, author_id, genre_id, publisher_id, publication_year) 
VALUES ('Harry Potter and the Prisoner of Azkaban', 2, 2, 2, 1999);

INSERT INTO books (book_title, author_id, genre_id, publisher_id, publication_year) 
VALUES ('Death on the Nile', 3, 3, 3, 1937);

INSERT INTO books (book_title, author_id, genre_id, publisher_id, publication_year) 
VALUES ('And Then There Were None', 3, 3, 3, 1939);

INSERT INTO books (book_title, author_id, genre_id, publisher_id, publication_year) 
VALUES ('To Kill a Mockingbird', 4, 4, 4, 1960);

INSERT INTO books (book_title, author_id, genre_id, publisher_id, publication_year) 
VALUES ('Go Set a Watchman', 4, 4, 4, 2015);

-- Inserting data into book sales
INSERT INTO book_sales (book_id, sale_date, sale_price, quantity_sold) 
VALUES (1, '2024-02-13', 19.99, 100);

INSERT INTO book_sales (book_id, sale_date, sale_price, quantity_sold) 
VALUES (2, '2024-02-14', 14.99, 150);

INSERT INTO book_sales (book_id, sale_date, sale_price, quantity_sold) 
VALUES (3, '2024-02-15', 9.99, 80);

INSERT INTO book_sales (book_id, sale_date, sale_price, quantity_sold) 
VALUES (4, '2024-02-16', 12.99, 120);

INSERT INTO book_sales (book_id, sale_date, sale_price, quantity_sold) 
VALUES (5, '2024-02-17', 22.99, 90);

INSERT INTO book_sales (book_id, sale_date, sale_price, quantity_sold) 
VALUES (6, '2024-02-18', 18.49, 110);

INSERT INTO book_sales (book_id, sale_date, sale_price, quantity_sold) 
VALUES (7, '2024-02-19', 24.99, 70);

INSERT INTO book_sales (book_id, sale_date, sale_price, quantity_sold) 
VALUES (8, '2024-02-20', 29.00, 85);


