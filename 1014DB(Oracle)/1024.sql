-- EXISTS 연산자로 대한민국에 거주하는 고객에게 판매한 도서의 총 가격.
select sum(saleprice) 총판매액
from orders od
where not exists (
select * 
from customer cs
where address like '%대한민국%' and
od.custid=cs.custid
);

-- 마당 서점의 고객별 판매액을 보이시오(결과는 고객이름과 고객별 판매액을 출력)
select (select name from 
        customer cs
        where cs.custid=od.custid) name, sum(saleprice) 판매액
from orders od
group by custid;



--orders테이블에 각주문에 맞는 도서이름을 입력하시오. 1.도서명 필드추가(alter), 2.도서명을 구하는 작업(update)
alter table orders add bookname varchar2(40);
DESCRIBE orders;
update orders
set bookname = (select bookname
                from book
                where book.bookid = orders.bookid);
                
                
-- 고객번호가 2 이하
select custid, name
from customer cs
where custid <= 2;

--인 고객의 판매액을 보이시오.
select cs.name 이름, sum(saleprice) 총판매액
from (  select custid, name
        from customer
        where custid <= 2) cs, orders od
where cs.custid = od.custid
group by cs.name;





