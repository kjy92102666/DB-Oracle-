-- 대한민국에 거주하는 고객에게 판매한 도서의 총판매액을 구하시오.

select sum(saleprice) 총판매액
from orders
where custid in (
    select custid
    from customer
    where address like '%대한민국%');

-- 3번 고객이 주문한 도서의 최고 금액보다 더 비싼
-- 도서를 구입한 주문의 주문번호와 금액을 보이시오.
select orderid, saleprice
from orders
where saleprice > all (
    select max(saleprice)
    from orders
    where custid=3
    );

MAX(SALEPRICE)   
--------------
         13000
            ORDERID  SALEPRICE
---------- ----------
         2      21000
         5      20000





select orderid, saleprice
from orders
where saleprice > some ( -- 6000,12000,13000
    select saleprice
    from orders
    where custid=3
    );


   ORDERID  SALEPRICE
---------- ----------
         2      21000
         5      20000
        10      13000
         7      13000
         6      12000
         8      12000
         3       8000
         9       7000