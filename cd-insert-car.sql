CREATE OR REPLACE PROCEDURE insert_car(
	_serial_number VARCHAR,
    _make VARCHAR,
    _model VARCHAR,
    _price DECIMAL
)
AS
$$
BEGIN
	INSERT INTO car(serial_number, make, model, price)
	VALUES(_serial_number, _make, _model, _price);

	COMMIT;
END;
$$
LANGUAGE plpgsql;


-- call procedure
CALL insert_car('4SGBM68B36050', 'toyota', 'prius', 28220);
CALL insert_car('2BPZX63D96219', 'honda', 'accord', 24970);
CALL insert_car('5UKLW91S40835', 'acura', 'mdx', 47200);
CALL insert_car('3OJHS34F5926G', 'audi', 'Q7', 56900);
CALL insert_car('9DSAC76J2763A', 'toyota', 'camry', 25295);


-- select table records
SELECT * FROM car

 