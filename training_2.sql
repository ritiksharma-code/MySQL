use sql_intro1;

CREATE TABLE sales_info1 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fiscal_Year SMALLINT NOT NULL,
    product VARCHAR(100) NOT NULL,
    quantity INT NOT NULL DEFAULT 0,
    CHECK (fiscal_Year BETWEEN 2000 and 2050),
    CHECK (quantity >= 0),
    UNIQUE (product, fiscal_Year)
);

INSERT INTO sales_info1 (product, quantity, fiscal_Year) VALUES
    ('2003 Maruti Suzuki', 110, 2020),
    ('2015 Avenger', 120, 2020),
    ('2018 Honda Shine', 150, 2020),
    ('2014 Apache', 150, 2020);