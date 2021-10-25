CREATE OR REPLACE PROCEDURE insert_salesperson(
	_first_name VARCHAR,
    _last_name VARCHAR
)
AS
$$
BEGIN
	INSERT INTO salesperson(first_name, last_name)
	VALUES(_first_name, _last_name);

	COMMIT;
END;
$$
LANGUAGE plpgsql;


-- call procedure
CALL insert_salesperson('Steve', 'Miller');
CALL insert_salesperson('Linda', 'Parker');
CALL insert_salesperson('John', 'Wilson');
CALL insert_salesperson('Sam', 'Miller');
CALL insert_salesperson('Paul', 'Wright');


-- select table records
SELECT * FROM salesperson

 