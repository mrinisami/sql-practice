CREATE TABLE stocknames(
    id BIGSERIAL PRIMARY KEY,
    permno VARCHAR(16),
    permco VARCHAR(16)
);

CREATE TABLE dsf(
    id BIGSERIAL PRIMARY KEY,
    date DATE NOT NULL,
    price NUMERIC,
    permno VARCHAR(16)
);
