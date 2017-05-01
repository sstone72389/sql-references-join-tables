CREATE TABLE recipe_ingredients (
  id SERIAL PRIMARY KEY,
  recipe_name TEXT,
  ingredient_name TEXT,
  ingredient_amt INTEGER,
  recipe_id INTEGER REFERENCES recipes (id),
  ingredient_id INTEGER REFERENCES ingredients (id)
);

CREATE INDEX ON recipe_ingredients (recipe_id);
CREATE INDEX ON recipe_ingredients (ingredient_id);
