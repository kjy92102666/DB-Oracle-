create or replace PROCEDURE InsertBook (
    myBookID in Number,
    myBookName in varchar2,
    myPublisher in varchar2,
    myPrice in Number)
    as
    begin
        insert into book(bookid, bookname, publisher, price)
        values(myBookID, myBookName, myPublisher, myPrice);
    end;
    
-- 프로시저 InsertBook을 테스트하는 부분
exec InsertBook(13, '스포츠과학', '마당과학서적', 25000);    
select * from book;

