-- EXISTS 연산자로 대한민국에 거주하는 고객에게 판매한 도서의 총 가격.
 select sum(saleprice) 총판매액
 from orders
 where exists (
 select * 
 from customer cs, orders od
 where address like '%대한민국%' and
 od.custid=cs.custid
 );
반대(박지성, 추신수)
 select sum(saleprice) 총판매액
 from orders od
 where not exists (
 select * 
 from customer cs
 where address like '%대한민국%' and
 od.custid=cs.custid
 );


스칼라 부속질의 : select절에서 사용되는 부속질의, 결과 값을 단일 행,열의 스칼라값으로 반환
 ASCII(c), INSTR(s1,s2,n,k), LENGTH(s)


-- 마당 서점의 고객별 판매액을 보이시오(결과는 고객이름과 고객별 판매액을 출력)
 select (select name from 
        customer cs
        where cs.custid=od.custid) name, sum(saleprice) 판매액
 from orders od
 group by custid;


varchar2// 오라클이기에 써준다.













