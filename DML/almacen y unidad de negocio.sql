INSERT INTO Almacen (nombre, tipo, especializacion, bit)
VALUES
('solidos', 'productos secos', 'almacen para productos secos', 1),
('frios', 'refrigerado', 'almacen para productos frios', 1),
('congelados', 'congelado', 'almacen para productos congelados', 1),
('frutas', 'frutas', 'almacen para productos en frutas', 1),
('panaderia', 'panaderia', 'almacen para productos para panes', 1),
('pasteleria', 'pasteleria', 'almacen para productos para pasteles', 1),
('masas', 'panaderia y pasteleria', 'almacen para productos compuestos de harina', 1),
('verduleria', 'verduras', 'almacen para productos relacionado con verduras', 1),
('paqueteria', 'auxiliares y embalaje', 'almacen para productos empaquetado y desempaquetado', 1);

INSERT INTO UnidadNegocio(nombre, empresa, tipo, canal_comercial)
VALUES
('hipermaxi', 'Supermercados Hipermaxi S.A.', 'Hipermercado / Supermercado', 'amplia gama de productos'),
('Ketal', 'Ketal S.A.', 'Hipermercado / Supermercado', 'amplia gama de productos'),
('Fidalga', 'Fidalga S.A.', 'Supermercado', 'amplia gama de productos'),
('IC Norte', 'IC Norte S.A.', 'Supermercado', 'amplia gama de productos'),
('Tiendas 3B', 'Tiendas 3B Bolivia', 'Supermercado de descuento (Hard Discount)', 'amplia gama de productos'),
('Andys', 'Andys S.A.', 'Micromercado', 'amplia gama de productos'),
('Supermercados Pompeya', 'Supermercados Pompeya S.A.', 'Micromercado', 'amplia gama de productos'),
('WILLGREEN SUPERMARKET', 'WILLGREEN SUPERMARKET S.A.', 'Micromercado', 'amplia gama de productos'),
('CREX WHOLESALE', 'CREX WHOLESALE S.A.', 'Micromercado', 'amplia gama de productos');