SET TRANSACTION NAME 'T1';      -- T1이라는 업무를 시작한다~
-- 연속적인 업데이트를 허용? 막?. 반복쓰기.

UPDATE Book 
SET     price=price+100
WHERE  bookid=1;

select bookid, price from book;

UPDATE Book 
SET     price=price+100
WHERE  bookid=2;
commit;uuuuuuuuuuuuuuuuuuuu
