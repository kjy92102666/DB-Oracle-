-- book 테ㅣ블의 bbokname 열을 대상으로 비 클러스터 인덱스 ix_Book을 생성하라
create index ix_Book on book (bookname);

--book 테이블의 publisher, price 열을 대상으로 인덱스ix_Book2를 생성하시오.
create index ix_book2 on book (publisher, price);

select * 
from book
where publisher = '대한미디어' and price >= 30000;

Alter index ix_book rebuild;