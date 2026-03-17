-- DATEPART 

SELECT SalesOrderID, DATEPART(year,OrderDate) AS ANO
FROM Sales.SalesOrderHeader 

SELECT SalesOrderID, DATEPART(month,OrderDate) AS MÊS
FROM Sales.SalesOrderHeader 

SELECT SalesOrderID, DATEPART(week,OrderDate) AS SEMANA
FROM Sales.SalesOrderHeader 

SELECT AVG(TotalDue) Media, DATEPART(month,OrderDate) AS Mês
FROM sales.SalesOrderHeader
GROUP BY DATEPART(month, orderdate)
order by mês


