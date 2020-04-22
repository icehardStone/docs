-- ifnull  函数,  如果expr1 为null 则返回 expr2

-- syntax : IFNULL(expr1,expr2)

select IFNULL(null,1);

-- result: 1

select IFNULL(null,0);

--result: 0

select IFNULL(null,"string");

--result: "string"