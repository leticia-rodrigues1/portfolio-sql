-- SUBQUERY OU SUBSELECT 
-- Monte um relatório para mim de todos os produtos cadastrados que têm preço de venda acima da média
SELECT *
FROM Production.Product
WHERE ListPrice > 438.66

SELECT AVG(ListPrice)
FROM Production.Product

SELECT *
FROM production.product
WHERE ListPrice > (SELECT AVG(LISTPRICE) FROM Production.Product)


SELECT FirstName
FROM person.person
WHERE BusinessEntityID IN (
SELECT BusinessEntityID FROM HumanResources.Employee
WHERE JobTitle ='Desing Engineer')

SELECT *
FROM HumanResources.Employee
WHERE JobTitle = 'Desing Engineer'

SELECT P.FirstName
FROM Person.Person  P
INNER JOIN HumanResources.Employee E
ON P.BusinessEntityID = e.BusinessEntityID
AND E.Jobtitle ='Desing Engineer'


-- Encontre para mim todos os endereços que estão no estado de 'Alberta', pode trazer todas as informações 
SELECT*
FROM Person.Address
WHERE StateProvinceID IN (
SELECT StateProvinceID FROM person.StateProvince
WHERE name = 'Alberta'
)