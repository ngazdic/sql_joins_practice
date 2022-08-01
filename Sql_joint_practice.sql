/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 
 
 
 
 select products.name, categories.name
 from products 
 left join categories 
 on products.categoryid =categories.categoryid
 where categories.Name = "Computers";
 
 
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */

select products.name, products.price, reviews.rating
 from products 
 left join reviews 
 on products.productID = reviews.productID
 where reviews.rating = 5;



 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
select employees.FirstName, employees.Lastname, sum(sales.Quantity)
from employees
left join sales
on employees.EmployeeID = sales.EmployeeID
group by employees.FirstName, employees.Lastname
order by	sum(sales.Quantity) desc;


/* joins: find the name of the department, and the name of the category for Appliances and Games */

select departments.name as "department name", categories.name as "category name"
from departments
left join categories
on departments.DepartmentID = categories.DepartmentID
where categories.name = "Appliances" or categories.name = "Games";


/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 
 select products.name, sum(sales.quantity), sum(sales.quantity ) * sales.priceperunit 
 from products 
 left join sales 
 on products.productid = sales.productid
 where products.name = "Eagles: Hotel California";
 
 
 

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */


select products.name, reviews.reviewer,min(reviews.rating), reviews.comment
from products 
left join reviews
on products.ProductID = reviews.ProductID
where products.name	= "Visio TV";




-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */

select employees.EmployeeID, employees.FirstName, employees.lastname, products.name, sales.Quantity
from employees
 inner join sales
 on employees.employeeid=sales.employeeid
 inner join products
 on sales.Productid = products.productid;

 



