
/*-----------------------------------------------------------------------------------------------
                                      CAR DEALERSHIP
------------------------------------------------------------------------------------------------*/                                      

--------------------------------------CREATE TABLES----------------------------------------------


CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_number VARCHAR(15)
);

CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    serial_number VARCHAR(50),
    make VARCHAR(20),
    model VARCHAR(20),
    price DECIMAL(9,2)
);

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    invoice_date DATE DEFAULT CURRENT_DATE,
    customer_id INTEGER NOT NULL,
    car_id INTEGER NOT NULL,
    salesperson_id INTEGER NOT NULL,    
    
    FOREIGN KEY (car_id) REFERENCES car(car_id) ON DELETE CASCADE,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
    FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id) ON DELETE CASCADE
);

CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE service_ticket(
    service_id SERIAL PRIMARY KEY,
    service_date DATE DEFAULT CURRENT_DATE,
    service_amount DECIMAL(5,2),
    service_desc VARCHAR(200),
    --A service may not need a part
    parts_id INTEGER, 
    car_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    mechanic_id INTEGER NOT NULL,    
    
    FOREIGN KEY (car_id) REFERENCES car(car_id) ON DELETE CASCADE,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
    FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id) ON DELETE CASCADE
);

CREATE TABLE parts(
    parts_id SERIAL PRIMARY KEY,
    parts_number VARCHAR(100),
    description VARCHAR(150),
    price DECIMAL(6,2)
);