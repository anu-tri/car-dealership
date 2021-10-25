CREATE OR REPLACE PROCEDURE insert_customer(
	_first_name VARCHAR,
    _last_name VARCHAR,
    _phone_number VARCHAR
)
AS
$$
BEGIN
	INSERT INTO customer(first_name, last_name, phone_number)
	VALUES(_first_name, _last_name, _phone_number);

	COMMIT;
END;
$$
LANGUAGE plpgsql;


-- call procedure
CALL insert_customer('Scott', 'Adams', '302-999-0011');
CALL insert_customer('Carl', 'Williams', '814-235-9090');
CALL insert_customer('Frank', 'Baker', '650-666-2318');
CALL insert_customer('Jeff', 'Anderson', '224-222-2882');
CALL insert_customer('John', 'Hill', '350-541-1357');


-- select table records
SELECT * FROM customer

 