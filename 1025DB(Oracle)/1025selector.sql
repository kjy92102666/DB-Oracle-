-- Book ���̺��� '�౸'��� ������ ���Ե� �ڷḸ �����ִ� ��
create view vw_book
as 
    select *
    from book
    where bookname like '%�౸%';
    
select *
from vw_book
where publisher = '������';

-- Orders ���̺� ���̸��� �����̸��� �ٷ� Ȯ���� �� �ִ� �並 ������ ��,
-- '�迬��'���� ������ ������ �ֹ���ȣ, �����̸�, �ֹ����� ���̽ÿ�.
create view vw_orders_kim
as -- �ֹ����� ��ü
select od.orderid, cs.custid, cs.name,
       bk.bookid, bk.bookname, saleprice, orderdate
       from orders od, book bk, customer cs
    where od.custid = cs.custid and
          od.bookid = bk.bookid and
          cs.name = '�迬��';

-- ������ �� vw_Customer�� �ּҰ� ���ѹα��� ���� �����ش�. 
-- �� �並 ������ �ּҷ� ���� ������ �����Ͻÿ�.
-- phone �Ӽ��� �ʿ� �����Ƿ� ���Խ�Ű�� ���ÿ�.
create or  replace view vw_Customer(custid, name, address)
as
    select custid, name, address
    from customer
    where address like '%����%';


select *
from vw_orders_kim;



