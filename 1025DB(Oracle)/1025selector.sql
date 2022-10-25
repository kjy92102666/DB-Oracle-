-- Book 테이블에서 '축구'라는 문구가 포함된 자료만 보여주는 뷰
create view vw_book
as 
    select *
    from book
    where bookname like '%축구%';
    
select *
from vw_book
where publisher = '나무수';

-- Orders 테이블에 고객이름과 도서이름을 바로 확인할 수 있는 뷰를 생성한 후,
-- '김연아'고객이 구입한 도서의 주문번호, 도서이름, 주문액을 보이시오.
create view vw_orders_kim
as -- 주문정보 전체
select od.orderid, cs.custid, cs.name,
       bk.bookid, bk.bookname, saleprice, orderdate
       from orders od, book bk, customer cs
    where od.custid = cs.custid and
          od.bookid = bk.bookid and
          cs.name = '김연아';

-- 생성한 뷰 vw_Customer는 주소가 대한민국인 고개을 보여준다. 
-- 이 뷰를 영국을 주소로 가진 고객으로 변경하시오.
-- phone 속성은 필요 없으므로 포함시키지 마시오.
create or  replace view vw_Customer(custid, name, address)
as
    select custid, name, address
    from customer
    where address like '%영국%';


select *
from vw_orders_kim;



