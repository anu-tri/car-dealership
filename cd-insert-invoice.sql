CREATE OR REPLACE PROCEDURE insert_invoice(
    _customer_id INTEGER,
    _car_id INTEGER,
    _salesperson_id INTEGER
)
AS
$$
BEGIN
	INSERT INTO invoice(customer_id, car_id, salesperson_id)
	VALUES(_customer_id, _car_id, _salesperson_id);

	COMMIT;
END;
$$
LANGUAGE plpgsql;


-- call procedure
CALL insert_invoice(3,2,1);
CALL insert_invoice(4,1,1);
CALL insert_invoice(5,3,2);
CALL insert_invoice(6,4,4);
CALL insert_invoice(7,5,5);

-- select table records
SELECT * FROM invoice