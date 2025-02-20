use sakila;

/* 1) Display the first and last names of all actors from the table actor*/
SELECT first_name, last_name
FROM actor;

/* 2) You need to find the ID number, first name, and last name of an actor, of whom you know only the first name, “Joe.” 
What is one query would you use to obtain this information? */
SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = 'Joe';



/* 3) Select specific columns from the films table that last 3 hours or longer. */    
SELECT *
FROM film
WHERE length > 180;
    
/* 4) Select all columns from the customer table for rows that have a last name beginning with "S" and a first name ending with "N". */
SELECT *
FROM customer
WHERE last_name Like 'S%' AND first_name Like '%N';
    
    
/* 5) Select specific columns from the payments table for payments made on or after 05/27/2005. */
SELECT *
FROM payment
WHERE payment_date >= '2005/05/27';
    
/* 6) Using IN, display the country_id and country columns of the following countries: Afghanistan, Bangladesh, and China: */
SELECT country_id, country
FROM Country
WHERE Country IN ('Afghanistan', 'Bangladesh', 'China');

/* 7) Find all actors whose last name contain the letters GEN */
SELECT *
FROM actor
WHERE last_name LIKE '%GEN%';

    
/* 8) Find all actors whose last names contain the letters LI. This time, 
order the rows by last name and first name, in that order: */
SELECT *
FROM actor
WHERE last_name LIKE '%LI%'
ORDER BY last_name;
SELECT *
FROM actor
WHERE last_name LIKE '%LI%'
ORDER BY first_name;


    
/* 9) Which actors have the first name ‘Scarlett’ */
SELECT *
FROM actor
WHERE first_name IN ('Scarlett');


/* 10) Which actors have the last name ‘Johansson’ */
SELECT *
FROM actor
WHERE last_name IN ('Johansson');


/* 11) Select the following columns from the film table for rows where the description ends with the word "Boat"
and rental duration greater than 6. Title, Description, Rental Duration */
SELECT Title, Description, rental_duration
FROM film
WHERE description LIKE ('%Boat%') AND rental_duration > 6;


/* 12) How many distinct actors last names are there? */
SELECT count(distinct last_name)
FROM actor;

/* 13) When is ‘Academy Dinosaur’ due? */
SELECT title, release_year
FROM film
WHERE title = 'Academy Dinosaur';


/* 14) What is that average running time of all the films in the sakila DB? */
SELECT AVG(length) AS average_length
FROM film;



/* 15- Use `INNER JOIN` to display the first and last names, as well as the address, of each staff member. 
Use the tables `staff` and `address` */

  
  
  
/* 16- Use `INNER JOIN` to display first name, last name and the amount for each staff member. 
Use tables `staff` and `payment*/




/* 17- Use `INNER JOIN` to display first name, last name,  payment date and 
the amount for each staff member in  August of 2005. Use tables `staff` and `payment*/



  
/* 18- Use `INNER JOIN` to display the total amount rung up by each staff member in August of 2005. 
Use tables `staff` and `payment`. */




/* 19) List each film and the number of actors who are listed for that film. Use tables `film_actor` and `film`. 
Use inner join, group by. */




/* 20) How many copies of the film `Hunchback Impossible` exist in the inventory system? 
Use tables `film` and `inventory`*/





/* 21) Using the tables `payment` and `customer` and the `INNER JOIN` command, list payments by each customer. 
List the customers alphabetically by last name */




/* 22) Using the tables `payment` and `customer` and the `INNER JOIN` command, list the total paid by each customer. 
List the customers alphabetically by last name. */




/* 23) Which actor has appeared in the most films? */




/* 24) Find the most common actor surname from the Sakila database */




/* 25) List the last names of actors, as well as how many actors have that last name.*/




/* 26) Which last names are not repeated? (Please search for having clause for this exercises) */




/* 27) Which last names appear more than once? (Please search for having clause for this exercises) */




