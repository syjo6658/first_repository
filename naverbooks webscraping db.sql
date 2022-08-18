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

-- 장르별 신간 도서 수
select genre, count(*) from newbooks
	group by genre
    order by count(*) desc;
-- ----------------------------------------------------------------------------------------------------------------
-- 신간 / 베스트셀러 비교 - 도서명
SELECT A.BOOK_ID, A.TITLE, A.AUTHOR, A.GENRE, A.GENRE_RANK, A.PUBLISHER, A.PUBLICATION_DATE
	FROM NEWBOOKS A
    INNER JOIN BESTSELLERS B
    ON A.TITLE = B.TITLE;
    
-- 신간 / 베스트셀러 비교 - 저자명
SELECT A.AUTHOR, A.GENRE, count(*)
	FROM NEWBOOKS A
    INNER JOIN BESTSELLERS B
    ON A.AUTHOR = B.AUTHOR
    group by a.genre
    order by count(*) desc;

-- 신간 / 베스트셀러 비교 - 출판사명    
SELECT A.PUBLISHER, A.GENRE, count(*)
	FROM NEWBOOKS A
    INNER JOIN BESTSELLERS B
    ON A.PUBLISHER = B.PUBLISHER
    group by a.genre
    order by count(*) desc;