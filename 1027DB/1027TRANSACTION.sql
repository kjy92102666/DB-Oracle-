    set TRANSACTION name 'mytrain';
    insert into book values(99, '�����ͺ��̽�', '�Ѻ�', 25000);
    select *
    from book
    where bookid=99;
    savepoint a;    --commit�ϱ���(������ũ�� ���� ������) a����Ʈ���� �ѹ��ϰڴ�~.
    
    
    update book set bookname = '����Ʈ���̽� ����'
    where bookid=99;
    savepoint b;
    
    update book set bookname = '����Ʈ���̽� ���� �� �ǽ�'
    where bookid=99;
    
    rollback to a;  --�� 
    
    commit; --���������� ��ũ�� �ø��� �۾�.
    
    rollback;
    