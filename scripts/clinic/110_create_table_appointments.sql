-- starts_at is for the start of appointment
-- we are connecting docs and patients

CREATE TABLE appointments (
  id SERIAL PRIMARY KEY,
  starts_at TIMESTAMP,
  length INTEGER,
  patient_id INTEGER REFERENCES patients (id),
  doctor_id INTEGER REFERENCES doctors (id)
);

CREATE INDEX ON appointments(patient_id);
CREATE INDEX ON appointments(doctor_id);
