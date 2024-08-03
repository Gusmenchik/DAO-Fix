-- schema.sql
CREATE TABLE CUSTOMERS (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    phone_number VARCHAR(20),
    city VARCHAR(50)
);

INSERT INTO CUSTOMERS (name, surname, age, phone_number, city) VALUES
('Alexey', 'Ivanov', 30, '123-456-7890', 'Moscow'),
('Ivan', 'Petrov', 25, '123-456-7891', 'Saint Petersburg'),
('Sergey', 'Sidorov', 40, '123-456-7892', 'Moscow'),
('Petr', 'Smirnov', 35, '123-456-7893', 'Kazan');

CREATE TABLE ORDERS (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    customer_id BIGINT,
    product_name VARCHAR(100),
    amount DECIMAL(10, 2),
    CONSTRAINT fk_customer
        FOREIGN KEY (customer_id)
        REFERENCES CUSTOMERS(id)
);

INSERT INTO ORDERS (date, customer_id, product_name, amount) VALUES
('2023-01-01', 1, 'Product1', 100.00),
('2023-01-02', 1, 'Product2', 150.00),
('2023-01-03', 2, 'Product3', 200.00),
('2023-01-04', 3, 'Product4', 250.00),
('2023-01-05', 3, 'Product5', 300.00),
('2023-01-06', 4, 'Product6', 350.00);


