뷰 : 하나 이상의 테이블을 합하여 만든 가상의 테이블
-- Book 테이블에서 '축구'라는 문구가 포함된 자료만 보여주는 뷰
 select * 
 from book
 where bookname like '%축구%';

create or  replace  view vw_Customer ...
 //  vw_Customer가 없으면 만들고, 있으면 replace해라.

실제 데이터가 저장되는 곳은 보조기억장치
 하드디스크 : 영구보관 o
 SSD, USB 메모리 : 영구보관 x
 ※운용은 ssd... 로 했다가 저장은 하드에다가 한다.


DB에서 instance는 

