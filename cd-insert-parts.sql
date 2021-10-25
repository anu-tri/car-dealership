CREATE OR REPLACE PROCEDURE insert_parts(
	_parts_number VARCHAR,
    _description VARCHAR,
	_price DECIMAL
)
AS
$$
BEGIN
	INSERT INTO parts(parts_number, description, price)
	VALUES(_parts_number, _description, _price);

	COMMIT;
END;
$$
LANGUAGE plpgsql;


-- call procedure
CALL insert_parts('HSC2190', 'brake light', 89.99);
CALL insert_parts('HPK4512', 'windshield wiper', 32.50);
CALL insert_parts('HSC2190', 'rear view mirror', 139.99);
CALL insert_parts('WHL1133', 'wheel', 121.99);
CALL insert_parts('LGT8220', 'headlight bulb', 30);

-- select table records
SELECT * FROM parts

 