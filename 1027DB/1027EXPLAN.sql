EXPLAIN PLAN -- EXPLANIN  PLAN 선언부
    SET STATEMENT_ID = 'PLAN1' INTO PLAN_TABLE -- SQL에 PLAN1이라는 ID 부여
    FOR
    select bookname from book
    where bookname ='%축구%';
    
--     (
--        select bookid from orders
--     where orders.bookid = book.bookid);

select * from table(DBMS_XPLAN.DISPLAY('PLAN_TABLE','PLAN1','ALL'));
