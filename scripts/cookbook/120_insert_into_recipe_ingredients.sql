INSERT INTO recipe_ingredients (ingredient_name, recipe_name, ingredient_amt)
    SELECT i.id, r.id, 1
    FROM recipes r
    INNER JOIN ingredients i
    ON i.recipe_id = r.id
  ;
