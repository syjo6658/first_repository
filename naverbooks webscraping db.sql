use mywork;

create table newbooks (
        title varchar(200) not null,
        author varchar(30) not null,
        genre varchar(30),
        genre_rank int,
        publisher varchar(30),
        publication_date datetime,
        price int,
        ebook_price int,
        primary key (title)
    );
create table bestsellers (
        bookrank int,
        title varchar(200) not null,
        author varchar(30) not null,
        publisher varchar(30),
        publication_date datetime,
        price int,
        ebook_price int,
        primary key(bookrank)
    );
    
select * from newbooks;
select * from bestsellers;

-- ----------------------------------------------------------------------------------------------------------------
SELECT A.BOOK_ID, A.TITLE, A.AUTHOR, A.GENRE, A.GENRE_RANK, A.PUBLISHER, A.PUBLICATION_DATE
	FROM NEWBOOKS A
    INNER JOIN BESTSELLERS B
    ON A.TITLE = B.TITLE;
    
SELECT A.BOOK_ID, A.TITLE, A.AUTHOR, A.GENRE, A.GENRE_RANK, A.PUBLISHER, A.PUBLICATION_DATE
	FROM NEWBOOKS A
    INNER JOIN BESTSELLERS B
    ON A.AUTHOR = B.AUTHOR;
    
SELECT A.BOOK_ID, A.TITLE, A.AUTHOR, A.GENRE, A.GENRE_RANK, A.PUBLISHER, A.PUBLICATION_DATE
	FROM NEWBOOKS A
    INNER JOIN BESTSELLERS B
    ON A.PUBLISHER = B.PUBLISHER;