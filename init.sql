CREATE TABLE IF NOT EXISTS productos (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  precio NUMERIC(10,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS pedidos (
  id SERIAL PRIMARY KEY,
  cliente VARCHAR(100) NOT NULL,
  producto_id INT REFERENCES productos(id),
  cantidad INT NOT NULL,
  fecha TIMESTAMP DEFAULT NOW()
);

-- Solo inserta los productos si la tabla esta vacia
INSERT INTO productos (nombre, precio)
SELECT v.nombre, v.precio
FROM (VALUES
  ('Arroz 1 kg', 4.50),
  ('Aceite 1 L', 9.80),
  ('Leche 1 L', 4.20),
  ('Pan', 0.50)
) AS v(nombre, precio)
WHERE NOT EXISTS (SELECT 1 FROM productos);