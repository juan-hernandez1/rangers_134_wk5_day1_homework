INSERT INTO customer (
	email,
	phone,
	address
)	VALUES (
		'eyo@gmail.com',
		'773-202-5268',
		'234 Really Cool St.'
);

SELECT *
FROM customer;

INSERT INTO cart (
	customer_id,
	sub_total
)	VALUES (
	1,
	50.00
);

SELECT *
FROM cart;

INSERT INTO concessions (
	product,
	quantity,
	price,
	cart_id
)	VALUES (
	'popcorn',
	2,
	10.00,
	1
);
	
SELECT *
FROM concessions;

INSERT INTO billing (
	billing_address,
	full_name,
	card_number,
	payment_method,
	customer_id
)	VALUES (
	'234 Really Cool St',
	'Eyo Rhoades',
	'2345 9678 3459 1230',
	'Debit Card',
	1
);

SELECT *
FROM billing;

INSERT INTO movies (
	movie_title,
	showtimes,
	runtime
)	VALUES (
	'Any Given Sunday',
	'1700 1900 2100',
	'120mins'
);

SELECT *
FROM movies;

INSERT INTO screen (
	theater_row,
	seats
)	VALUES (
	F,
	2
);

SELECT *
FROM screen;

INSERT INTO tickets (
	movie_id,
	price,
	quantity,
	movie_date,
	showtime,
	screen_id,
	seats,
	theater_location,
	cart_id
)	VALUES (
	1,
	25.00,
	2,
	'2023-11-11',
	'7pm',
	1,
	'2F3F',
	'Webster',
	1,
);

SELECT *
FROM tickets;


