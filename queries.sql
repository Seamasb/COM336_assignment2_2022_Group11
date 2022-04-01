Search customer by customer NO

SELECT *
FROM customer
WHERE `Customer No` = 2

Search customer by customer name

SELECT * 
FROM `customer` 
WHERE `First name` LIKE '%john%' AND `Last name` LIKE '%hutchman%'

Add customer

INSERT INTO `customer` (`Customer No`, `user id`, `Phone No`, `Email Address`, `First name`, `Last name`, `Password`, `DOB`, `Address`) VALUES ('7', '0', '077456367', 'shea@email.com', 'shea', 'hutchman', 'password7', '6/4/91', '2 Magee');

Update customer TABLE

UPDATE `customer` 
SET `Email Address`='newemail.com'
WHERE `Customer No` = '7'

Delete from customer TABLE

DELETE FROM `customer` 
WHERE `Customer No` = '7';

Add review

INSERT INTO `reviews`(`Book id`, `Customer No`, `Reviews`) VALUES ('4','5','it was a good book')

shows all reviews written by customer using customer NO

SELECT *
FROM Reviews
WHERE `Customer No` = '1'

shows all reviews for book selected using book ID

SELECT `Reviews`
FROM Reviews
WHERE `Book id` = '1'

update reviews using book id and customer No

UPDATE `Reviews` 
SET `Reviews`='this book was bad' 
WHERE `Book id` = '4' AND `Customer No` = '5'