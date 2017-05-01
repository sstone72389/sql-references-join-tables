-- The list in the (are column names)
INSERT INTO appointments (starts_at, length, patient_id, doctor_id)
-- build query
  SELECT TIMESTAMP '2016-09-22 11:30', 20, p.id, d.id
  FROM doctors d, patients p
    -- may not need specialty (you can overspecify)
    WHERE d.specialty = 'Allergy and immunology'
      AND d.given_name = 'Randal'
      AND d.family_name = 'Sloan'
      AND p.given_name = 'Rhea'
      AND p.family_name = 'Ayala'
      AND p.born_on = '1969-02-03'
  UNION
  SELECT TIMESTAMP '2016-10-10 08:30', 30, p.id, d.id
  FROM doctors d
    INNER JOIN patients p
      ON d.specialty = 'Dermatology'
        AND d.given_name = 'Helga'
        AND d.family_name = 'Akers'
        AND p.given_name = 'Alba'
        AND p.family_name = 'Vang'
        AND p.born_on = '1966-08-27'
;
