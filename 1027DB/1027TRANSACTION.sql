    set TRANSACTION name 'mytrain';
    insert into book values(99, '데이터베이스', '한빛', 25000);
    select *
    from book
    where bookid=99;
    savepoint a;    --commit하기전(최종디스크에 쓰기 전까지) a포인트까지 롤백하겠다~.
    
    
    update book set bookname = '데이트베이스 개론'
    where bookid=99;
    savepoint b;
    
    update book set bookname = '데이트베이스 개론 및 실습'
    where bookid=99;
    
    rollback to a;  --용어만 
    
    commit; --최종적으로 디스크에 올리는 작업.
    
    rollback;
    