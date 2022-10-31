SET TRANSACTION NAME 'T2';


UPDATE Book 
SET     price=price*1.1
WHERE  bookid=2;

select bookid, price from book;

UPDATE Book 
SET     price=price*1.1
WHERE  bookid=1;
commit;