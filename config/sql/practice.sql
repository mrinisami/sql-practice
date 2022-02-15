DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS salesperson;
DROP TABLE IF EXISTS customer;

CREATE TABLE salesperson (
  id BIGSERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  age INTEGER NOT NULL,
  salary INTEGER NOT NULL
);

CREATE TABLE customer (
  id BIGSERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  city VARCHAR(255) NOT NULL,
  type VARCHAR(16) NOT NULL
);

CREATE TABLE orders (
  number INTEGER PRIMARY KEY,
  order_date DATE NOT NULL,
  cust_id BIGINT NOT NULL REFERENCES customer (id),
  salesperson_id BIGINT NOT NULL REFERENCES salesperson (id),
  amount BIGINT NOT NULL
);

INSERT INTO salesperson VALUES(1, 'Abe', 61, 140000);
INSERT INTO salesperson VALUES(2, 'Bob', 34, 44000);
INSERT INTO salesperson VALUES(5, 'Chris', 34, 40000);
INSERT INTO salesperson VALUES(7, 'Dan', 41, 52000);
INSERT INTO salesperson VALUES(8, 'Ken', 57, 115000);
INSERT INTO salesperson VALUES(11, 'Joe', 38, 38000);

INSERT INTO customer VALUES(4, 'Samsonic', 'pleasant', 'J');
INSERT INTO customer VALUES(6, 'Panasung', 'oaktown', 'J');
INSERT INTO customer VALUES(7, 'Samony', 'jackson', 'B');
INSERT INTO customer VALUES(9, 'Orange', 'Jackson', 'B');

INSERT INTO orders VALUES(10, '1996-08-02', 4, 2, 540);
INSERT INTO orders VALUES(20, '1999-01-30', 4, 8, 1800);
INSERT INTO orders VALUES(30, '1995-07-14', 9, 1, 460);
INSERT INTO orders VALUES(40, '1998-01-29', 7, 2, 2400);
INSERT INTO orders VALUES(50, '1998-02-03', 6, 7, 600);
INSERT INTO orders VALUES(60, '1998-03-02', 6, 7, 720);
INSERT INTO orders VALUES(70, '1998-05-06', 9, 7, 150);
