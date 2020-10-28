/* 1-Contacts Français*/
/*
SELECT companyName AS 'Société',  ContactName AS 'Contact', ContactTitle AS 'Fonction', Phone AS 'Téléphone'
FROM customers
WHERE Country = 'France';
*/

/*2- Produits vendus par le fournisseur Exotic Liquids*/
/*
SELECT ProductName AS 'Produit', UnitPrice AS 'Prix'
FROM products
JOIN suppliers ON suppliers.SupplierID = products.SupplierID
WHERE CompanyName = 'Exotic Liquids';
*/

/*3-Nombre de produits vendus par les fournisseurs Français dans l’ordre décroissant*/
/*
SELECT CompanyName AS 'Fourniseur', COUNT(products.SupplierID) AS 'Nbre produits'
FROM suppliers
JOIN products ON suppliers.SupplierID = products.SupplierID
WHERE Country = 'France'
GROUP BY suppliers.SupplierID
ORDER BY COUNT(products.SupplierID) DESC;
*/

/*4-Liste des clients Français ayant plus de 10 commandes*/
/*
SELECT companyName AS 'Client', COUNT(orders.CustomerID) AS 'Nbres commandes'
FROM customers
JOIN orders ON orders.CustomerID = customers.CustomerID
WHERE Country = 'France'
GROUP BY customers.CustomerID
HAVING  COUNT(orders.CustomerID) >10;
*/

/*5-- Liste des clients ayant un chiffre d’affaires > 30.000*/
/*
SELECT companyName AS 'Client', sum(UnitPrice * quantity) AS 'CA', Country AS 'Pays'
FROM customers
JOIN orders ON orders.CustomerID = customers.CustomerID
JOIN `order details` ON `order details`.OrderID = orders.OrderID
GROUP BY customers.CustomerID
HAVING sum(UnitPrice * quantity) > 30000
ORDER BY sum(UnitPrice * quantity)  DESC;
*/

/*6-– Liste des pays dont les clients ont passé commande de produits fournis par « Exotic Liquids*/
/*
SELECT distinct customers.Country AS 'Pays'
FROM customers
JOIN orders ON orders.CustomerID = customers.CustomerID
JOIN `order details` ON `order details`.OrderID = orders.OrderID
JOIN products ON products.ProductID = `order details`.ProductID 
JOIN suppliers ON suppliers.SupplierID = products.SupplierID
WHERE suppliers.CompanyName = 'Exotic Liquids'
ORDER BY customers.Country asc;
*/

/*7-Montant des ventes de 1997*/
/*
SELECT SUM(UnitPrice*Quantity) AS 'Montant ventes 97'
FROM orders
JOIN `order details` ON `order details`.OrderID = orders.OrderID
WHERE YEAR(OrderDate) = 1997;
*/

/*8-Montant des ventes de 1997 mois par mois*/
/*
SELECT month(OrderDate) AS 'Mois 97', SUM(UnitPrice*Quantity) AS 'Montant ventes 97'
FROM orders
JOIN `order details` ON `order details`.OrderID = orders.OrderID
WHERE YEAR(OrderDate) = 1997
GROUP BY month(OrderDate);
*/

/*9-Date à partir de laquel le client Du monde entier n(a plus commandé*/
/*
SELECT MAX(OrderDate) AS 'Date de dernière commande'
FROM orders 
JOIN customers ON orders.CustomerID = customers.CustomerID
WHERE CompanyName = 'Du monde entier';
*/


/*10-– Délai moyen de livraison en jours */

SELECT round(AVG(DATEDIFF(ShippedDate, OrderDate))) as 'Délai moyen de livraison en jours'
FROM orders 
JOIN customers ON orders.CustomerID = customers.CustomerID;


