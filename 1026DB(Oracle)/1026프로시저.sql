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
    
-- ���ν��� InsertBook�� �׽�Ʈ�ϴ� �κ�
exec InsertBook(13, '����������', '������м���', 25000);    
select * from book;

