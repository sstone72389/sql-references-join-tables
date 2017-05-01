-- what are all the appointments, for which doctors are they and for which patients?
--uses both main resources and join table (generally what you want to JOIN)
--INER JOIN requires data

SELECT d.family_name, d.Specialty, p.family_name, a.starts_at
  FROM appointments a
  --from appointments to doctors
    INNER JOIN doctors d
    on d.id = a.doctor_id
  --from appointments to patients
    INNER JOIN patients p
    ON p.id = a.patient_id
;
