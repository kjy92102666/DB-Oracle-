-- ���ѹα��� �����ϴ� ������ �Ǹ��� ������ ���Ǹž��� ���Ͻÿ�.

--select sum(saleprice) ���Ǹž�
--from orders
--where custid in (
--    select custid
--    from customer
--    where address like '%���ѹα�%');


-- 3�� ���� �ֹ��� ������ �ְ� �ݾ׺��� �� ���
-- ������ ������ �ֹ��� �ֹ���ȣ�� �ݾ��� ���̽ÿ�.
select orderid, saleprice
from orders
where saleprice > some ( -- 6000,12000,13000
    select saleprice
    from orders
    where custid=3
    );

