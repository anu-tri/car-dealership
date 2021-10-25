CREATE OR REPLACE PROCEDURE insert_service_ticket(
    _service_amount DECIMAL,
    _service_desc VARCHAR,
    _parts_id INTEGER,
    _car_id INTEGER,
    _customer_id INTEGER,
    _mechanic_id INTEGER
)
AS
$$
BEGIN
	INSERT INTO service_ticket(service_amount, service_desc, parts_id, car_id, customer_id, mechanic_id)
	VALUES(_service_amount, _service_desc, _parts_id, _car_id, _customer_id, _mechanic_id);

	COMMIT;
END;
$$
LANGUAGE plpgsql;


-- call procedure
CALL insert_service_ticket(135,'replacing brake lights', 1, 1, 4, 1);
CALL insert_service_ticket(180.50,'changing rear view mirror', 3, 1, 4, 2);
CALL insert_service_ticket(70,'cleaning a fuel injector nozzle', NULL, 2, 5, 3);
CALL insert_service_ticket(680,'replacing all four tires', 4, 3, 6, 1);
CALL insert_service_ticket(70,'replacing headlight', 5, 5, 7, 4);

-- select table records
SELECT * FROM service_ticket

 