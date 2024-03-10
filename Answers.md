<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
  body {
    background-color: lightblue; /* Set the background color of the entire page */
    margin: 0; /* Remove default margin */
    padding: 20px; /* Add some padding to the content */
    font-family: Arial, sans-serif; /* Choose a font */
  }

  .container {
    max-width: 800px; /* Limit the width of the content */
    margin: 0 auto; /* Center the content horizontally */
    background-color: white; /* Set the background color of the content area */
    padding: 20px; /* Add some padding to the content area */
    border-radius: 10px; /* Add rounded corners to the content area */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add a shadow to the content area */
  }
</style>
</head>
<body>

<div class="container">

# Answer to Question 1

In the given diagram, the "Product" and "Product_Category" entities have a one-to-many relationship. Each record in the "Product_Category" table can be associated with multiple records in the "Product" table, as indicated by the "Product" table's foreign key "category_id" referencing the "id" in the "Product_Category" table. This relationship allows for proper categorization of products, ensuring that each product belongs to a specific category.

## Answer to Question 2

To ensure that each product in the "Product" table has a valid category assigned to it, you can enforce referential integrity through a foreign key constraint. This constraint would require the "category_id" column in the "Product" table to contain a valid "id" from the "Product_Category" table. If a record in the "Product" table is inserted or updated with an invalid "category_id", the database would reject the operation, preventing the creation of a product without a valid category.

</div>

</body>
</html>
