-- EXISTS �����ڷ� ���ѹα��� �����ϴ� ������ �Ǹ��� ������ �� ����.
select sum(saleprice) ���Ǹž�
from orders od
where not exists (
select * 
from customer cs
where address like '%���ѹα�%' and
od.custid=cs.custid
);

-- ���� ������ ���� �Ǹž��� ���̽ÿ�(����� ���̸��� ���� �Ǹž��� ���)
select (select name from 
        customer cs
        where cs.custid=od.custid) name, sum(saleprice) �Ǹž�
from orders od
group by custid;



--orders���̺� ���ֹ��� �´� �����̸��� �Է��Ͻÿ�. 1.������ �ʵ��߰�(alter), 2.�������� ���ϴ� �۾�(update)
alter table orders add bookname varchar2(40);
DESCRIBE orders;
update orders
set bookname = (select bookname
                from book
                where book.bookid = orders.bookid);
                
                
-- ����ȣ�� 2 ����
select custid, name
from customer cs
where custid <= 2;

--�� ���� �Ǹž��� ���̽ÿ�.
select cs.name �̸�, sum(saleprice) ���Ǹž�
from (  select custid, name
        from customer
        where custid <= 2) cs, orders od
where cs.custid = od.custid
group by cs.name;





