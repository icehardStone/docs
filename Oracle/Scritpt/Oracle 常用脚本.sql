/* 查询前10条 */
select * from  temp where rownum <= 10;

/* 查询 第n行到第m行 （m > n） */

/* 方法一 */

select top m * from table where id is not in (select top n * from table)

/* 方法二 */

select * from (select employee_id , rownum rn from employees where rownum<=100) where rn>=10;