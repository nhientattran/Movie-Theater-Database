INSERT INTO Customers(
	customer_id,
	first_name,
	last_name,
	email,
	sex,
	phone_number,
	address,
	membership_date,
	birthday
) VALUES (
	'1234567890',
	'Nhien',
	'Tran',
	'nhientattran@gmail.com',
	'male',
	'(346)212-6656',
	'123 Ratata str',
	CURRENT_DATE,
	'01/09/1995'
);

INSERT INTO Theaters(
	theater_id,
	"name",
	"location",
	capacity
) VALUES(
	'1',
	'Clear Lake',
	'Houston, TX',
	'200'
);

INSERT INTO Theaters(
	theater_id,
	"name",
	"location",
	capacity
) VALUES(
	'2',
	'SugarLand',
	'SugarLand, TX',
	'240'
);

INSERT INTO Movies(
	movie_id,
	movie_name,
	genre,
	rating,
	release_date,
	end_date,
	duration,
	"cast",
	director
) VALUES(
	'1',
	'The Flash',
	'Action',
	'PG13',
	'June 16, 2023',
	'July 16, 2023',
	'146',
	'Ezra Miller, Antje Traue, Kiersey Clemons, Ben Affleck,...',
	'Andy Muschietti'
);

INSERT INTO Movies(
	movie_id,
	movie_name,
	genre,
	rating,
	release_date,
	end_date,
	duration,
	"cast",
	director
) VALUES(
	'2',
	'Spider-Man: Across The Spider-Verse',
	'Animation',
	'PG',
	'June 2, 2023',
	'July 2, 2023',
	'140',
	'Oscar Isaac, Shameik Moore, Jake Johnson, Hailee Steinfeld,...',
	'Joaquim dos Santos, Kemp Powers, Justin K. Thompson'
);


INSERT INTO Show_Times(
	showtime_id,
	start_time,
	end_time,
	movie_id,
	theater_id
) VALUES(
	'1',
	'9:00',
	'11:24',
	'1',
	'1'
);

INSERT INTO Tickets(
	ticket_id,
	seat_number,
	ticket_price,
	quantity,
	purchase_date,
	showtime_id,
	customer_id
) VALUES(
	'1',
	'9A',
	'20',
	'2',
	'06/21/2023',
	'1',
	'1'
);

INSERT INTO Orders_History(
	order_id,
	customer_id,
	"date",
	total_amount,
	payment_method
) VALUES(
	'1',
	'1',
	'06/21/2023',
	'40',
	'cash'
);

INSERT INTO Consessions(
	consession_id,
	"name",
	description,
	price
) VALUES(
	'1',
	'Pringles',
	'Potatoes Chip',
	'5'
);
INSERT INTO Consessions(
	consession_id,
	"name",
	description,
	price
) VALUES(
	'2',
	'Coke',
	'Soft Drink',
	'3'
);
INSERT INTO Consessions(
	consession_id,
	"name",
	description,
	price
) VALUES(
	'3',
	'Budlight',
	'Beer',
	'8'
);

INSERT INTO Consession_Sales(
	sale_id,
	customer_id,
	consession_id,
	quantity,
	total_payment,
	sale_date
) VALUES(
	'1',
	'1',
	'1',
	'5',
	'25',
	'06/21/2023'
);

ALTER TABLE Consession_Sales
ADD COLUMN "name" VARCHAR(50);

UPDATE Consession_Sales
SET "name" = 'Pringles'
WHERE consession_id = 1;

ALTER TABLE Consession_Sales
ADD COLUMN "consession_name" VARCHAR(50);

UPDATE Consession_Sales
SET "consession_name" = 'Pringles'
WHERE consession_id = 1;

ALTER TABLE Consession_Sales
DROP COLUMN "name";

SELECT *
FROM Consession_Sales;