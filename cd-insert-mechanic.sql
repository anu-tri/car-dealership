CREATE OR REPLACE PROCEDURE insert_mechanic(
	_first_name VARCHAR,
    _last_name VARCHAR
)
AS
$$
BEGIN
	INSERT INTO mechanic(first_name, last_name)
	VALUES(_first_name, _last_name);

	COMMIT;
END;
$$
LANGUAGE plpgsql;


-- call procedure
CALL insert_mechanic('John', 'Smith');
CALL insert_mechanic('Brian', 'Lee');
CALL insert_mechanic('Max', 'Davis');
CALL insert_mechanic('Tim', 'Parker');
CALL insert_mechanic('Robert', 'Jones');


-- select table records
SELECT * FROM mechanic

 