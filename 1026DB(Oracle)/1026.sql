-- book �פӺ��� bbokname ���� ������� �� Ŭ������ �ε��� ix_Book�� �����϶�
create index ix_Book on book (bookname);

--book ���̺��� publisher, price ���� ������� �ε���ix_Book2�� �����Ͻÿ�.
create index ix_book2 on book (publisher, price);

select * 
from book
where publisher = '���ѹ̵��' and price >= 30000;

Alter index ix_book rebuild;