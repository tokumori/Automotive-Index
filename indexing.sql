DROP DATABASE IF EXISTS indexed_cars;
DROP USER IF EXISTS indexed_cars_user;
CREATE USER indexed_cars_user;
CREATE DATABASE indexed_cars WITH OWNER indexed_cars_user;


\i scripts/car_models.sql;
\i scripts/car_model_data.sql;
-- \i scripts/car_model_data.sql;
-- \i scripts/car_model_data.sql;
-- \i scripts/car_model_data.sql;
-- \i scripts/car_model_data.sql;
-- \i scripts/car_model_data.sql;
-- \i scripts/car_model_data.sql;
-- \i scripts/car_model_data.sql;
-- \i scripts/car_model_data.sql;
-- \i scripts/car_model_data.sql;

\timing

-- DROP INDEX IF EXISTS some_index;
CREATE INDEX some_index ON car_models (make_code, make_title, model_code, model_title, year);

SELECT DISTINCT ON (make_title) make_title
  FROM car_models WHERE make_code = 'LAM';

SELECT DISTINCT ON (model_title) make_title
  FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';

SELECT make_code, model_code, model_title, year
  FROM car_models
  WHERE make_code = 'LAM';

SELECT * FROM car_models
  WHERE year BETWEEN 2010 AND 2015;

SELECT * FROM car_models
  WHERE year = 2010