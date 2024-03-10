
-- SQL Schema:
-- The following SQL script demonstrates the schema creation for the given entities and enforces referential integrity through foreign key constraints.




CREATE TABLE Product_Category (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE Product (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  category_id INTEGER REFERENCES Product_Category(id) ON DELETE RESTRICT ON UPDATE CASCADE
);



--Explanation of the SQL schema:
--The Product_Category table is created with an id column as the primary key and a name column for the category name.
--The Product table is created with an id column as the primary key, a name column for the product name, and a category_id column to store the category of the product.
--The category_id column in the Product table references the id column in the Product_Category table, ensuring that only valid category IDs are used.
--The ON DELETE RESTRICT and ON UPDATE CASCADE clauses are used to manage the behavior when a record in the Product_Category table is deleted or updated:
--ON DELETE RESTRICT prevents deletion of a category if there are any related products.
--ON UPDATE CASCADE updates the category_id in the Product table when the id is updated in the Product_Category table.
