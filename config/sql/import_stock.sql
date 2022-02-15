COPY stocknames(id, permno, permco)
FROM '/tmp/stocknames.csv'
DELIMITER ','
CSV HEADER;

COPY dsf(id, date, price)
FROM '/tmp/dsf.csv'
DELIMITER ','
CSV HEADER;
