EXPLAIN PLAN -- EXPLANIN  PLAN �����
    SET STATEMENT_ID = 'PLAN1' INTO PLAN_TABLE -- SQL�� PLAN1�̶�� ID �ο�
    FOR
    select bookname from book
    where bookname ='%�౸%';
    
--     (
--        select bookid from orders
--     where orders.bookid = book.bookid);

select * from table(DBMS_XPLAN.DISPLAY('PLAN_TABLE','PLAN1','ALL'));
