USE distribuidora_del_valle;

-- ========================================================
-- 1. CATEGORÍAS (10 Categorías)
-- ========================================================
INSERT INTO categorias (id_categoria, nombre_categoria) VALUES
(1, 'Cervezas y Licores'),
(2, 'Refrescos y Gaseosas'),
(3, 'Aguas Puras y Flavored'),
(4, 'Jugos y Néctares'),
(5, 'Bebidas Energizantes'),
(6, 'Bebidas Isotónicas'),
(7, 'Lácteos y Derivados'),
(8, 'Café y Té Listo para Tomar'),
(9, 'Vinos y Espumantes'),
(10, 'Jarabes y Concentrados');

-- ========================================================
-- 2. ENCARGADOS (10 Encargados)
-- ========================================================
INSERT INTO encargados (id_encargado, nombre_encargado, apellido_encargado, dpi) VALUES
(1, 'Carlos', 'Mendoza', '1982345670101'),
(2, 'María', 'García', '1982345680101'),
(3, 'Juan', 'López', '1982345690501'),
(4, 'Ana', 'Martínez', '1982345701601'),
(5, 'Luis', 'Hernández', '1982345711901'),
(6, 'Sofía', 'Pérez', '1982345721301'),
(7, 'Diego', 'González', '1982345731801'),
(8, 'Lucía', 'Rodríguez', '1982345740401'),
(9, 'José', 'Morales', '1982345751101'),
(10, 'Elena', 'Gómez', '1982345761701');

-- ========================================================
-- 3. SEDES (10 Sedes en Guatemala)
-- ========================================================
INSERT INTO sedes (id_sede, nombre_sede, ubicacion, capacidad_almacenamiento, id_encargado) VALUES
(1, 'Sede Central Capital', 'Calzada Roosevelt 12-45, Zona 11, Ciudad de Guatemala', 50000, 1),
(2, 'Sede Quetzaltenango', 'Avenida Las Américas 8-20, Zona 3, Quetzaltenango', 35000, 2),
(3, 'Sede Escuintla', 'Kilómetro 58 Carretera al Pacífico, Escuintla', 40000, 3),
(4, 'Sede Cobán', '4ta Calle 3-12, Zona 2, Cobán, Alta Verapaz', 25000, 4),
(5, 'Sede Zacapa', 'Barrio La Hacienda, Calle Principal, Zacapa', 30000, 5),
(6, 'Sede Huehuetenango', '6ta Avenida 4-55, Zona 1, Huehuetenango', 20000, 6),
(7, 'Sede Puerto Barrios', 'Calzada Justo Rufino Barrios, Puerto Barrios, Izabal', 30000, 7),
(8, 'Sede Chimaltenango', '1ra Calle 2-88, Zona 3, Chimaltenango', 22000, 8),
(9, 'Sede Retalhuleu', '3ra Avenida 5-10, Zona 1, Retalhuleu', 28000, 9),
(10, 'Sede Petén', 'Calle Central, Santa Elena, Flores, Petén', 18000, 10);

-- ========================================================
-- 4. PRODUCTOS (150 Productos de Guatemala)
-- ========================================================
INSERT INTO productos (id_producto, nombre, id_categoria, precio, volumen_ml, stock_actual, stock_minimo) VALUES
(1, 'Cerveza Gallo Lata', 1, 10.50, 350, 500, 50),
(2, 'Cerveza Gallo Botella Retornable', 1, 9.00, 355, 1000, 100),
(3, 'Cerveza Gallo Caguama', 1, 18.00, 1000, 300, 30),
(4, 'Cerveza Dorada Draft', 1, 11.00, 350, 400, 40),
(5, 'Cerveza Dorada Ice', 1, 10.00, 350, 450, 45),
(6, 'Cerveza Monte Carlo', 1, 14.00, 350, 200, 20),
(7, 'Cerveza Moza', 1, 12.00, 350, 150, 20),
(8, 'Ron Botran Añejo 12 Años', 1, 140.00, 750, 80, 10),
(9, 'Ron Botran XL 8 Años', 1, 85.00, 750, 120, 15),
(10, 'Ron Coche Viejo', 1, 45.00, 750, 200, 25),
(11, 'Aguardiente Venado Blanco', 1, 35.00, 750, 300, 30),
(12, 'Aguardiente Venado Especial', 1, 40.00, 750, 250, 25),
(13, 'Aguardiente Quetzalteca Rosa de Jamaica', 1, 42.00, 750, 400, 40),
(14, 'Aguardiente Quetzalteca Horchata', 1, 42.00, 750, 380, 40),
(15, 'Aguardiente Quetzalteca Tamarindo', 1, 42.00, 750, 350, 40),
(16, 'Tiki Soda Fresa Botella', 2, 5.00, 500, 800, 80),
(17, 'Tiki Soda Uva Botella', 2, 5.00, 500, 750, 80),
(18, 'Tiki Soda Piña Botella', 2, 5.00, 500, 600, 60),
(19, 'Grapette Uva Glass', 2, 6.00, 350, 500, 50),
(20, 'Coca-Cola Sabor Original Lata', 2, 7.50, 355, 1200, 150),
(21, 'Coca-Cola Sabor Original 1.5L', 2, 13.00, 1500, 800, 100),
(22, 'Coca-Cola Sabor Original 2.5L', 2, 18.00, 2500, 600, 80),
(23, 'Coca-Cola Sin Azúcar Lata', 2, 7.50, 355, 400, 40),
(24, 'Sprite Lata', 2, 7.00, 355, 500, 50),
(25, 'Fanta Naranja 600ml', 2, 6.50, 600, 700, 70),
(26, 'Fresca Toronja 600ml', 2, 6.50, 600, 450, 50),
(27, 'Pepsi Cola 600ml PET', 2, 6.00, 600, 900, 90),
(28, 'Pepsi Cola 1.5L PET', 2, 11.50, 1500, 500, 50),
(29, 'Pepsi Black 355ml', 2, 6.50, 355, 300, 30),
(30, 'Mirinda Naranja 600ml', 2, 6.00, 600, 400, 40),
(31, '7Up Lemon-Lime 600ml', 2, 6.00, 600, 350, 35),
(32, 'SalvaVida Agua Pura 600ml', 3, 4.00, 600, 1500, 200),
(33, 'SalvaVida Agua Pura 1.5L', 3, 7.00, 1500, 800, 100),
(34, 'Agua Pura Salvavidas Garrafón 19L', 3, 22.00, 19000, 400, 50),
(35, 'Agua Pura Pureza Vital 600ml', 3, 3.50, 600, 1000, 100),
(36, 'Agua Pura Cielo 1L', 3, 5.00, 1000, 700, 70),
(37, 'Agua Mineral San Pellegrino 500ml', 3, 16.00, 500, 100, 15),
(38, 'Agua Mineral Perrier 330ml', 3, 18.00, 330, 80, 10),
(39, 'Agua Saborizada Salvavidas Limón', 3, 5.00, 500, 300, 30),
(40, 'Agua Saborizada Salvavidas Manzana', 3, 5.00, 500, 300, 30),
(41, 'Jugo Kerns Melocotón Tetra 330ml', 4, 6.00, 330, 800, 80),
(42, 'Jugo Kerns Manzana Tetra 330ml', 4, 6.00, 330, 750, 80),
(43, 'Jugo Kerns Pera Tetra 330ml', 4, 6.00, 330, 700, 70),
(44, 'Jugo Kerns Guayaba Tetra 330ml', 4, 6.00, 330, 600, 60),
(45, 'Nectar Natura Naranja 1L', 4, 15.00, 1000, 400, 40),
(46, 'Nectar Natura Manzana 1L', 4, 15.00, 1000, 350, 40),
(47, 'Jugo Del Valle Naranja PET 500ml', 4, 7.00, 500, 500, 50),
(48, 'Jugo Del Valle Citrus PET 500ml', 4, 7.00, 500, 450, 50),
(49, 'Jugo Petit Melocotón 200ml', 4, 3.50, 200, 900, 100),
(50, 'Jugo Petit Uva 200ml', 4, 3.50, 200, 850, 100),
(51, 'Monster Energy Original 473ml', 5, 18.00, 473, 600, 60),
(52, 'Monster Energy Ultra Zero 473ml', 5, 18.00, 473, 400, 40),
(53, 'Red Bull Energy Drink 250ml', 5, 20.00, 250, 500, 50),
(54, 'Red Bull Sugarfree 250ml', 5, 20.00, 250, 300, 30),
(55, 'Raptor Energy Drink 500ml', 5, 7.00, 500, 1200, 150),
(56, 'AMP 365 Energy Drink 355ml', 5, 8.00, 355, 800, 80),
(57, 'Volt Energy Drink 500ml', 5, 6.00, 500, 1000, 100),
(58, 'Adrenalina Rush 473ml', 5, 10.00, 473, 700, 70),
(59, 'Bomba Energy Drink 330ml', 5, 12.00, 330, 250, 25),
(60, 'Energizante Toro 500ml', 5, 5.00, 500, 900, 90),
(61, 'Gatorade Ponche de Frutas 600ml', 6, 9.00, 600, 800, 80),
(62, 'Gatorade Limón 600ml', 6, 9.00, 600, 750, 80),
(63, 'Gatorade Naranja 600ml', 6, 9.00, 600, 700, 70),
(64, 'Gatorade Blue Bolt 600ml', 6, 9.00, 600, 650, 65),
(65, 'Powerade Frutas 600ml', 6, 8.50, 600, 700, 70),
(66, 'Powerade Uva 600ml', 6, 8.50, 600, 600, 60),
(67, 'Powerade Azul Mountain Blast 600ml', 6, 8.50, 600, 650, 65),
(68, 'Electrolit Suero Oral Fresa 625ml', 6, 18.00, 625, 400, 40),
(69, 'Electrolit Suero Oral Uva 625ml', 6, 18.00, 625, 380, 40),
(70, 'Electrolit Suero Oral Coco 625ml', 6, 18.00, 625, 350, 40),
(71, 'Leche Foremost Entera 1L', 7, 12.50, 1000, 600, 60),
(72, 'Leche Foremost Descremada 1L', 7, 13.00, 1000, 400, 40),
(73, 'Leche Foremost Semidescremada 1L', 7, 12.50, 1000, 450, 45),
(74, 'Leche Sula Entera 1L', 7, 12.00, 1000, 500, 50),
(75, 'Leche Sula Deslactosada 1L', 7, 13.50, 1000, 400, 40),
(76, 'Leche Dos Pinos Entera 1L', 7, 14.00, 1000, 300, 30),
(77, 'Leche Dos Pinos Pineda Fresa 250ml', 7, 5.00, 250, 600, 60),
(78, 'Leche Dos Pinos Chocolate 250ml', 7, 5.00, 250, 650, 65),
(79, 'Yogurt Lala Batido Fresa 125g', 7, 4.50, 125, 400, 40),
(80, 'Yogurt Lala Bebible Melocotón 220ml', 7, 5.50, 220, 500, 50),
(81, 'Café Frío Barista Capuchino 300ml', 8, 12.00, 300, 200, 20),
(82, 'Café Frío Barista Moka 300ml', 8, 12.00, 300, 200, 20),
(83, 'Café Frío Barista Latte 300ml', 8, 12.00, 300, 180, 20),
(84, 'Café Incaparina Frío Vainilla 330ml', 8, 8.00, 330, 400, 40),
(85, 'Té Frío Lipton Limón 500ml', 8, 7.00, 500, 600, 60),
(86, 'Té Frío Lipton Durazno 500ml', 8, 7.00, 500, 550, 55),
(87, 'Té Frío Fuze Tea Limón 600ml', 8, 7.50, 600, 500, 50),
(88, 'Té Frío Fuze Tea Durazno 600ml', 8, 7.50, 600, 480, 50),
(89, 'Té Frío Fuze Tea Té Verde Limón 600ml', 8, 8.00, 600, 300, 30),
(90, 'Té Frío Arizona Té Verde con Miel 680ml', 8, 12.00, 680, 350, 35),
(91, 'Vino Tinto Casillero del Diablo Cabernet 750ml', 9, 85.00, 750, 120, 15),
(92, 'Vino Tinto Gato Negro Merlot 750ml', 9, 55.00, 750, 200, 20),
(93, 'Vino Blanco Casillero Sauvignon Blanc 750ml', 9, 85.00, 750, 100, 10),
(94, 'Vino Rosado Frontera Cabernet 750ml', 9, 50.00, 750, 150, 15),
(95, 'Espumante J.P. Chenet Brut 750ml', 9, 95.00, 750, 80, 10),
(96, 'Jarabe de Granadina Tropical 1L', 10, 35.00, 1000, 100, 10),
(97, 'Jarabe de Menta Tropical 1L', 10, 35.00, 1000, 80, 10),
(98, 'Concentrado de Horchata El Cocinero 1L', 10, 28.00, 1000, 300, 30),
(99, 'Concentrado de Tamarindo El Cocinero 1L', 10, 28.00, 1000, 250, 25),
(100, 'Concentrado de Jamaica El Cocinero 1L', 10, 28.00, 1000, 280, 25),
(101, 'Cerveza Modelo Especial 355ml', 1, 13.00, 355, 300, 30),
(102, 'Cerveza Coronita Extra 210ml', 1, 9.00, 210, 400, 40),
(103, 'Cerveza Heineken 330ml', 1, 15.00, 330, 250, 25),
(104, 'Cerveza Stella Artois 330ml', 1, 16.00, 330, 200, 20),
(105, 'Vodka Smirnoff Red 750ml', 1, 95.00, 750, 100, 10),
(106, 'Whisky Black & White 750ml', 1, 110.00, 750, 90, 10),
(107, 'Tequila José Cuervo Especial 750ml', 1, 160.00, 750, 70, 10),
(108, 'Grapette Uva 1.5L PET', 2, 11.00, 1500, 300, 30),
(109, 'Tiki Fresa 1.5L PET', 2, 10.00, 1500, 250, 25),
(110, 'Canada Dry Ginger Ale 355ml', 2, 7.50, 355, 200, 20),
(111, 'Club Soda Schweppes 355ml', 2, 7.00, 355, 300, 30),
(112, 'Agua Tónica Schweppes 355ml', 2, 7.50, 355, 250, 25),
(113, 'Agua Pura Evian 500ml', 3, 22.00, 500, 60, 10),
(114, 'Agua Pura Fiji 500ml', 3, 25.00, 500, 50, 10),
(115, 'Agua Saborizada Salvavidas Naranja 500ml', 3, 5.00, 500, 200, 20),
(116, 'Nectar Petit Manzana 200ml', 4, 3.50, 200, 500, 50),
(117, 'Nectar Kerns Melocotón 1L', 4, 14.00, 1000, 300, 30),
(118, 'Jugo V8 Verduras Original 340ml', 4, 10.00, 340, 150, 15),
(119, 'Monster Energy Mango Loco 473ml', 5, 18.00, 473, 300, 30),
(120, 'Monster Energy Pipeline Punch 473ml', 5, 18.00, 473, 250, 25),
(121, 'Red Bull Yellow Edition 250ml', 5, 20.00, 250, 150, 15),
(122, 'Gatorade Uva 600ml', 6, 9.00, 600, 400, 40),
(123, 'Powerade Mandarina 600ml', 6, 8.50, 600, 350, 35),
(124, 'Electrolit Suero Manzana 625ml', 6, 18.00, 625, 200, 20),
(125, 'Leche Foremost Chocolate 200ml', 7, 4.50, 200, 400, 40),
(126, 'Leche Trebolac Entera 1L', 7, 11.50, 1000, 300, 30),
(127, 'Leche Trebolac Deslactosada 1L', 7, 12.50, 1000, 250, 25),
(128, 'Yogurt Danone Fresa 120g', 7, 5.00, 120, 200, 20),
(129, 'Café Nescafé Listo Frío Original 250ml', 8, 9.00, 250, 300, 30),
(130, 'Té Frío Snapple Durazno 473ml', 8, 15.00, 473, 100, 10),
(131, 'Vino Tinto Concha y Toro Reservado 750ml', 9, 60.00, 750, 150, 15),
(132, 'Vino Blanco Santa Rita 120 Chardonnay 750ml', 9, 65.00, 750, 120, 12),
(133, 'Aguardiente Cusha Artesanal Escuintla 750ml', 1, 30.00, 750, 100, 10),
(134, 'Cerveza Cabro Reserva 350ml', 1, 13.00, 350, 200, 20),
(135, 'Cerveza Suprema 330ml', 1, 12.00, 330, 180, 18),
(136, 'Cerveza Pilsener El Salvador 330ml', 1, 10.00, 330, 150, 15),
(137, 'Ron Zacapa Centenario 23 Años 750ml', 1, 380.00, 750, 30, 5),
(138, 'Coca-Cola Sabor Light Lata 355ml', 2, 7.50, 355, 200, 20),
(139, 'Sprite Zero 600ml PET', 2, 6.50, 600, 180, 18),
(140, 'Fanta Uva 600ml PET', 2, 6.50, 600, 220, 20),
(141, 'Kola Shaler 355ml Glass', 2, 8.00, 355, 100, 10),
(142, 'Agua Pura San Martín 500ml', 3, 3.00, 500, 400, 40),
(143, 'Agua Mineral S.Pellegrino Essenza 330ml', 3, 14.00, 330, 90, 10),
(144, 'Jugo Del Valle Manzana 1.5L', 4, 16.00, 1500, 150, 15),
(145, 'Nectar Kerns Naranja 1L', 4, 14.00, 1000, 200, 20),
(146, 'Energizante SPARK 250ml', 5, 5.00, 250, 300, 30),
(147, 'Gatorade Fierce Uva 600ml', 6, 9.00, 600, 250, 25),
(148, 'Leche Alpina Entera 1L', 7, 12.00, 1000, 200, 20),
(149, 'Té Frío Natura Limón 450ml', 8, 6.50, 450, 220, 22),
(150, 'Vino Espumante Freixenet Cordon Negro 750ml', 9, 130.00, 750, 40, 5);

-- ========================================================
-- 5. CLIENTES (80 Clientes con DPI de 13 dígitos y Teléfono INT)
-- ========================================================
INSERT INTO clientes (id_cliente, nombre, apellido, dpi, direccion, telefono, correo_electronico) VALUES
(1, 'Juan', 'Pérez', '1012345670101', '10ma Calle 4-12, Zona 1, Ciudad de Guatemala', 55123401, 'juan.perez@gmail.com'),
(2, 'María', 'López', '1012345680101', 'Avenida La Reforma 8-60, Zona 9, Ciudad de Guatemala', 42123402, 'm.lopez@hotmail.com'),
(3, 'Pedro', 'Gómez', '1012345690301', 'Calle Del Arco No. 15, La Antigua Guatemala', 53123403, 'pgomez_antigua@yahoo.com'),
(4, 'Ana', 'Martínez', '1012345700901', '3ra Calle 8-90, Zona 3, Quetzaltenango', 41123404, 'anamartinez@outlook.com'),
(5, 'Luis', 'Rodríguez', '1012345710501', '5ta Avenida 12-00, Zona 1, Escuintla', 58123405, 'lrodriguez@gmail.com'),
(6, 'Carla', 'Hernández', '1012345721801', 'Barrio El Centro, Morales, Izabal', 47123406, 'carla_hdez@gmail.com'),
(7, 'José', 'García', '1012345731301', 'Calzada Kaibil Balam, Zona 5, Huehuetenango', 59123407, 'jgarcia_huehue@hotmail.com'),
(8, 'Lucía', 'Morales', '1012345741601', '6ta Calle 2-15, Zona 1, Cobán, Alta Verapaz', 45123408, 'lucia.morales@gmail.com'),
(9, 'Mario', 'Castillo', '1012345752001', 'Avenida Centroamérica, Chiquimula', 54123409, 'mario_castillo@gmail.com'),
(10, 'Sonia', 'Vásquez', '1012345760301', 'Calle Principal, San Lucas Sacatepéquez', 40123410, 'svasquez@yahoo.com'),
(11, 'Roberto', 'Álvarez', '1012345770101', 'Avenida Hincapié 15-30, Zona 13, Guatemala', 56123411, 'roberto.alvarez@gmail.com'),
(12, 'Claudia', 'Mendoza', '1012345780101', 'Boulevard San Cristóbal, Zona 8 de Mixco', 43123412, 'cmendoza@outlook.com'),
(13, 'Fernando', 'Ruiz', '1012345790101', 'Calle Las Flores, Amatitlán', 52123413, 'fruiz_amatitlan@gmail.com'),
(14, 'Patricia', 'Solares', '1012345800101', '12 Calle 5-43, Zona 10, Ciudad de Guatemala', 48123414, 'patricia.solares@gmail.com'),
(15, 'Gustavo', 'Aguilar', '1012345811901', 'Barrio La Estación, Zacapa', 51123415, 'gaguilar_zacapa@hotmail.com'),
(16, 'Olga', 'Rios', '1012345821101', '4ta Av 7-11, Zona 2, Retalhuleu', 49123416, 'olga.rios@gmail.com'),
(17, 'Ricardo', 'Cifuentes', '1012345831201', '7ma Calle 1-20, Zona 1, San Marcos', 57123417, 'rcifuentes@gmail.com'),
(18, 'Marta', 'Estrada', '1012345840701', 'Calle Principal, Panajachel, Sololá', 44123418, 'marta_pana@yahoo.com'),
(19, 'Jorge', 'Maldonado', '1012345850101', 'Avenida Bolivar 22-10, Zona 1, Guatemala', 50123419, 'jmaldonado@gmail.com'),
(20, 'Silvia', 'Fuentes', '1012345860301', 'Calle Real 4-50, Jocotenango, Sacatepéquez', 46123420, 'sfuentes@outlook.com'),
(21, 'Hugo', 'Mejía', '1012345870101', 'Boulevard Los Próceres, Zona 10, Guatemala', 55123421, 'hmejia@gmail.com'),
(22, 'Lorena', 'Roldán', '1012345880401', '1ra Avenida 3-14, Zona 4, Chimaltenango', 42123422, 'lorena.roldan@gmail.com'),
(23, 'Gabriel', 'Pineda', '1012345891801', 'Barrio El Porvenir, Puerto Barrios', 53123423, 'gpineda_pb@hotmail.com'),
(24, 'Vilma', 'Guzmán', '1012345901001', 'Calle 15 de Septiembre, Mazatenango', 41123424, 'vguzman@gmail.com'),
(25, 'Edgar', 'Salazar', '1012345912201', '8va Calle 10-02, Zona 1, Jutiapa', 58123425, 'esalazar@yahoo.com'),
(26, 'Rosa', 'Barrios', '1012345920101', 'Avenida Simeón Cañas, Zona 2, Guatemala', 47123426, 'rbarrios@gmail.com'),
(27, 'Manuel', 'Cordero', '1012345931701', 'Calle al Embarcadero, Flores, Petén', 59123427, 'mcordero_peten@gmail.com'),
(28, 'Ingrid', 'Lemus', '1012345942101', '3ra Calle 6-40, Zona 1, Jalapa', 45123428, 'ingrid.lemus@outlook.com'),
(29, 'Oscar', 'Orellana', '1012345950501', 'Barrio El Tamarindo, Santa Lucía Cotz.', 54123429, 'oorellana@gmail.com'),
(30, 'Astrid', 'Samayoa', '1012345960101', 'Calzada Roosevelt 30-11, Zona 7, Guatemala', 40123430, 'astrid_samayoa@hotmail.com'),
(31, 'Ramiro', 'Cabrera', '1012345970401', 'Calle de la Alameda, Chimaltenango', 56123431, 'rcabrera@gmail.com'),
(32, 'Mayra', 'Ochaeta', '1012345981701', 'Calle Principal, Poptún, Petén', 43123432, 'mayrao@gmail.com'),
(33, 'Hector', 'Giron', '1012345990401', '5ta Calle 9-12, Zona 1, Tecpán', 52123433, 'hgiron@yahoo.com'),
(34, 'Debora', 'Aroche', '1012346000101', 'Calle Vieja, Villa Nueva', 48123434, 'daroche@gmail.com'),
(35, 'Christian', 'Monroy', '1012346010101', 'Boulevard el Naranjo, Zona 4 de Mixco', 51123435, 'cmonroy@outlook.com'),
(36, 'Lilian', 'Tobar', '1012346021501', 'Barrio Las Flores, Salamá, Baja Verapaz', 49123436, 'lilian.tobar@gmail.com'),
(37, 'Javier', 'Solares', '1012346030101', 'Avenida Elena 14-22, Zona 3, Guatemala', 57123437, 'jsolares@gmail.com'),
(38, 'Karen', 'Dávila', '1012346041201', 'Calle del Polideportivo, Malacatán', 44123438, 'karen_davila@hotmail.com'),
(39, 'Rolando', 'Chacón', '1012346050901', '1ra Calle 4-00, Zona 2, Coatepeque', 50123439, 'rchacon@gmail.com'),
(40, 'Andrea', 'Palacios', '1012346060101', 'Vía 4, 3-56, Zona 4, Ciudad de Guatemala', 46123440, 'apalacios@gmail.com'),
(41, 'Marcos', 'Canteo', '1012346070101', 'Calle Principal, San Juan Sacatepéquez', 55123441, 'mcanteo@yahoo.com'),
(42, 'Sandra', 'Soto', '1012346080101', 'Calzada Aguilar Batres, Zona 11', 42123442, 'ssoto@gmail.com'),
(43, 'Erick', 'Marroquín', '1012346090101', 'Boulevard Vista Hermosa, Zona 15', 53123443, 'erick_m@outlook.com'),
(44, 'Norma', 'Archila', '1012346100201', 'Calle Las Américas, Guastatoya, El Progreso', 41123444, 'narchila@gmail.com'),
(45, 'Victor', 'Escobar', '1012346111401', 'Calle del Estadio, Santa Cruz del Quiché', 58123445, 'vescobar@gmail.com'),
(46, 'Miriam', 'Paz', '1012346121101', 'Avenida Las Palmas, Retalhuleu', 47123446, 'mpaz@hotmail.com'),
(47, 'Byron', 'Orozco', '1012346131301', 'Calle Los Cuchumatanes, Huehuetenango', 59123447, 'borozco@gmail.com'),
(48, 'Karin', 'Herrera', '1012346140101', 'Diagonal 6 10-50, Zona 10, Guatemala', 45123448, 'kherrera@gmail.com'),
(49, 'Gonzalo', 'Batres', '1012346150301', 'Calle Real, Ciudad Vieja, Sacatepéquez', 54123449, 'gbatres@yahoo.com'),
(50, 'Brenda', 'Noriega', '1012346162001', 'Barrio San Sebastián, Chiquimula', 40123450, 'bnoriega@gmail.com'),
(51, 'César', 'Pineda', '1012346171201', 'Calle del Comercio, Tecún Umán', 56123451, 'cpineda@outlook.com'),
(52, 'Gladys', 'Mora', '1012346180101', 'Avenida Cementerio, Zona 3, Guatemala', 43123452, 'gmora@gmail.com'),
(53, 'Julio', 'Arriola', '1012346190601', 'Calle Principal, Barberena, Santa Rosa', 52123453, 'jarriola@gmail.com'),
(54, 'Monica', 'Valenzuela', '1012346200101', 'Boulevard Principal, San Cristóbal', 48123454, 'mvalenzuela@hotmail.com'),
(55, 'Alex', 'Sánchez', '1012346210101', 'Avenida Petapa 35-11, Zona 12, Guatemala', 51123455, 'asanchez@gmail.com'),
(56, 'Elida', 'Reyes', '1012346220701', 'Calle al Lago, San Pedro La Laguna', 49123456, 'ereyes@gmail.com'),
(57, 'Jaime', 'Rosales', '1012346230101', 'Calle Real, Chinautla', 57123457, 'jrosales@yahoo.com'),
(58, 'Teresa', 'Galindo', '1012346240701', '4ta Calle, Zona 1, Sololá', 44123458, 'tgalindo@gmail.com'),
(59, 'Walter', 'Paz', '1012346250101', 'Calzada San Juan, Zona 7, Guatemala', 50123459, 'wpaz@outlook.com'),
(60, 'Evelyn', 'Cáceres', '1012346261801', 'Barrio La Ceiba, Puerto Barrios', 46123460, 'ecaceres@gmail.com'),
(61, 'Guillermo', 'Sandoval', '1012346271901', 'Avenida Ferrocarril, Zacapa', 55123461, 'gsandoval@gmail.com'),
(62, 'Dania', 'Morataya', '1012346282001', 'Calle Central, Esquipulas', 42123462, 'dmorataya@hotmail.com'),
(63, 'Samuel', 'Godoy', '1012346290101', 'Boulevard Austriaco, Zona 16, Guatemala', 53123463, 'sgodoy@gmail.com'),
(64, 'Roxana', 'Maldonado', '1012346301601', 'Calle al Calvario, Cobán', 41123464, 'rmaldonado@gmail.com'),
(65, 'Ruben', 'Linares', '1012346310501', 'Avenida Centroamérica, Escuintla', 58123465, 'rlinares@yahoo.com'),
(66, 'Isabel', 'Guerra', '1012346320301', 'Calle Real, Antigua Guatemala', 47123466, 'iguerra@gmail.com'),
(67, 'Pablo', 'Ventura', '1012346330101', 'Barrio Moderno, Zona 2, Guatemala', 59123467, 'pventura@outlook.com'),
(68, 'Diana', 'Fajardo', '1012346341001', 'Calle del Mercado, Mazatenango', 45123468, 'dfajardo@gmail.com'),
(69, 'Edvin', 'Gómez', '1012346350901', 'Avenida La Independencia, Quetzaltenango', 54123469, 'egomez_xela@gmail.com'),
(70, 'Flor', 'de María', '1012346360101', 'Calle de las Carreras, Zona 1, Guatemala', 40123470, 'flordemaria@hotmail.com'),
(71, 'Otto', 'Perez', '1012346370501', 'Calle Principal, Palín, Escuintla', 56123471, 'ottop@gmail.com'),
(72, 'Wendy', 'Juárez', '1012346380901', 'Avenida Cantel, Quetzaltenango', 43123472, 'wjuarez@gmail.com'),
(73, 'René', 'Peralta', '1012346390201', 'Calle Principal, Morazán, El Progreso', 52123473, 'rperalta@yahoo.com'),
(74, 'Zoila', 'Cruz', '1012346400201', 'Barrio San Miguel, Guastatoya', 48123474, 'zcruz@gmail.com'),
(75, 'Alfonso', 'Orellana', '1012346410101', 'Boulevard Liberación, Zona 12, Guatemala', 51123475, 'aorellana@outlook.com'),
(76, 'Yesenia', 'Solares', '1012346422201', 'Calle al Estadio, Asunción Mita', 49123476, 'ysolares@gmail.com'),
(77, 'Edwin', 'Castañeda', '1012346430101', 'Avenida Mariscal, Zona 11, Guatemala', 57123477, 'ecastaneda@gmail.com'),
(78, 'Karla', 'Aroche', '1012346440101', 'Calle del Transmetro, Zona 1, Guatemala', 44123478, 'karoche@hotmail.com'),
(79, 'Mynor', 'Pineda', '1012346450701', 'Calle Real, San Lucas Tolimán', 50123479, 'mpineda@gmail.com'),
(80, 'Nancy', 'Velasquez', '1012346461701', 'Barrio El Centro, Sayaxché, Petén', 46123480, 'nvelasquez@gmail.com');

-- ========================================================
-- 6. PEDIDOS & DETALLES DE PEDIDOS
-- Se simulan 300 transacciones con IVA guatemalteco (12%)
-- ========================================================
INSERT INTO pedidos (id_pedido, fecha_pedido, id_cliente, id_sede, total_sin_iva, total_con_iva) VALUES
(1, '2026-01-05 08:30:00', 1, 1, 98.00, 109.76),
(2, '2026-01-05 09:15:00', 4, 2, 250.00, 280.00),
(3, '2026-01-05 10:40:00', 5, 3, 456.00, 510.72),
(4, '2026-01-06 11:20:00', 8, 4, 175.00, 196.00),
(5, '2026-01-06 14:00:00', 15, 5, 314.00, 351.68),
(6, '2026-01-07 15:10:00', 7, 6, 79.00, 88.48),
(7, '2026-01-07 16:30:00', 6, 7, 525.00, 588.00),
(8, '2026-01-08 09:00:00', 22, 8, 208.00, 232.96),
(9, '2026-01-08 10:15:00', 16, 9, 144.00, 161.28),
(10, '2026-01-09 11:45:00', 27, 10, 590.00, 660.80);

INSERT INTO detalle_pedidos (id_pedido, id_producto, cantidad, subtotal) VALUES
-- Pedido 1
(1, 1, 5, 52.50),
(1, 20, 5, 37.50),
(1, 32, 2, 8.00),
-- Pedido 2
(2, 2, 20, 180.00),
(2, 16, 14, 70.00),
-- Pedido 3
(3, 8, 3, 420.00),
(3, 38, 2, 36.00),
-- Pedido 4
(4, 41, 10, 60.00),
(4, 61, 10, 90.00),
(4, 71, 2, 25.00),
-- Pedido 5
(5, 13, 5, 210.00),
(5, 51, 5, 90.00),
(5, 55, 2, 14.00),
-- Pedido 6
(6, 21, 5, 65.00),
(6, 35, 4, 14.00),
-- Pedido 7
(7, 37, 20, 320.00),
(7, 91, 2, 170.00),
(7, 96, 1, 35.00),
-- Pedido 8
(8, 79, 20, 90.00),
(8, 80, 20, 110.00),
(8, 32, 2, 8.00),
-- Pedido 9
(9, 68, 5, 90.00),
(9, 69, 3, 54.00),
-- Pedido 10
(10, 117, 1, 14.00),
(10, 1, 20, 210.00),
(10, 137, 1, 366.00);

-- ========================================================
-- PEDIDOS ADICIONALES (IDs 11 al 100)
-- ========================================================
INSERT INTO pedidos (id_pedido, fecha_pedido, id_cliente, id_sede, total_sin_iva, total_con_iva) VALUES
(11, '2026-01-09 13:20:00', 3, 1, 150.00, 168.00),
(12, '2026-01-10 08:45:00', 12, 2, 85.00, 95.20),
(13, '2026-01-10 10:10:00', 19, 3, 310.00, 347.20),
(14, '2026-01-11 11:30:00', 2, 4, 420.00, 470.40),
(15, '2026-01-11 14:15:00', 14, 5, 95.00, 106.40),
(16, '2026-01-12 09:00:00', 25, 6, 230.00, 257.60),
(17, '2026-01-12 12:40:00', 30, 7, 510.00, 571.20),
(18, '2026-01-13 15:50:00', 11, 8, 180.00, 201.60),
(19, '2026-01-13 16:25:00', 9, 9, 640.00, 716.80),
(20, '2026-01-14 10:05:00', 21, 10, 125.00, 140.00),
(21, '2026-01-14 11:50:00', 17, 1, 380.00, 425.60),
(22, '2026-01-15 08:30:00', 28, 2, 215.00, 240.80),
(23, '2026-01-15 13:10:00', 5, 3, 90.00, 100.80),
(24, '2026-01-16 09:40:00', 13, 4, 490.00, 548.80),
(25, '2026-01-16 15:00:00', 20, 5, 160.00, 179.20),
(26, '2026-01-17 10:20:00', 1, 6, 275.00, 308.00),
(27, '2026-01-17 12:00:00', 18, 7, 340.00, 380.80),
(28, '2026-01-18 11:15:00', 24, 8, 110.00, 123.20),
(29, '2026-01-18 14:30:00', 7, 9, 580.00, 649.60),
(30, '2026-01-19 09:10:00', 29, 10, 205.00, 229.60),
(31, '2026-01-19 16:00:00', 10, 1, 415.00, 464.80),
(32, '2026-01-20 08:50:00', 23, 2, 130.00, 145.60),
(33, '2026-01-20 10:45:00', 6, 3, 310.00, 347.20),
(34, '2026-01-21 11:20:00', 15, 4, 75.00, 84.00),
(35, '2026-01-21 13:55:00', 4, 5, 520.00, 582.40),
(36, '2026-01-22 09:30:00', 22, 6, 195.00, 218.40),
(37, '2026-01-22 14:10:00', 16, 7, 280.00, 313.60),
(38, '2026-01-23 10:00:00', 8, 8, 360.00, 403.20),
(39, '2026-01-23 15:40:00', 27, 9, 140.00, 156.80),
(40, '2026-01-24 11:05:00', 12, 10, 450.00, 504.00),
(41, '2026-01-24 12:30:00', 26, 1, 98.00, 109.76),
(42, '2026-01-25 09:15:00', 3, 2, 610.00, 683.20),
(43, '2026-01-25 13:20:00', 19, 3, 170.00, 190.40),
(44, '2026-01-26 10:40:00', 2, 4, 230.00, 257.60),
(45, '2026-01-26 14:50:00', 11, 5, 390.00, 436.80),
(46, '2026-01-27 08:25:00', 25, 6, 115.00, 128.80),
(47, '2026-01-27 11:10:00', 14, 7, 480.00, 537.60),
(48, '2026-01-28 12:00:00', 30, 8, 220.00, 246.40),
(49, '2026-01-28 15:30:00', 9, 9, 310.00, 347.20),
(50, '2026-01-29 09:05:00', 21, 10, 165.00, 184.80),
(51, '2026-01-29 13:40:00', 17, 1, 540.00, 604.80),
(52, '2026-01-30 10:15:00', 28, 2, 88.00, 98.56),
(53, '2026-01-30 14:00:00', 5, 3, 290.00, 324.80),
(54, '2026-01-31 08:45:00', 13, 4, 430.00, 481.60),
(55, '2026-01-31 11:50:00', 20, 5, 120.00, 134.40),
(56, '2026-02-01 09:10:00', 1, 6, 350.00, 392.00),
(57, '2026-02-01 12:25:00', 18, 7, 210.00, 235.20),
(58, '2026-02-02 10:00:00', 24, 8, 175.00, 196.00),
(59, '2026-02-02 14:15:00', 7, 9, 620.00, 694.40),
(60, '2026-02-03 11:30:00', 29, 10, 95.00, 106.40),
(61, '2026-02-03 15:05:00', 10, 1, 260.00, 291.20),
(62, '2026-02-04 08:35:00', 23, 2, 410.00, 459.20),
(63, '2026-02-04 10:50:00', 6, 3, 135.00, 151.20),
(64, '2026-02-05 12:10:00', 15, 4, 300.00, 336.00),
(65, '2026-02-05 16:00:00', 4, 5, 185.00, 207.20),
(66, '2026-02-06 09:20:00', 22, 6, 510.00, 571.20),
(67, '2026-02-06 13:45:00', 16, 7, 72.00, 80.64),
(68, '2026-02-07 10:30:00', 8, 8, 240.00, 268.80),
(69, '2026-02-07 14:20:00', 27, 9, 380.00, 425.60),
(70, '2026-02-08 11:00:00', 12, 10, 155.00, 173.60),
(71, '2026-02-08 15:15:00', 26, 1, 460.00, 515.20),
(72, '2026-02-09 08:50:00', 3, 2, 290.00, 324.80),
(73, '2026-02-09 12:05:00', 19, 3, 110.00, 123.20),
(74, '2026-02-10 09:40:00', 2, 4, 330.00, 369.60),
(75, '2026-02-10 14:10:00', 11, 5, 225.00, 252.00),
(76, '2026-02-11 10:15:00', 25, 6, 140.00, 156.80),
(77, '2026-02-11 13:30:00', 14, 7, 570.00, 638.40),
(78, '2026-02-12 11:45:00', 30, 8, 190.00, 212.80),
(79, '2026-02-12 15:00:00', 9, 9, 280.00, 313.60),
(80, '2026-02-13 09:00:00', 21, 10, 400.00, 448.00),
(81, '2026-02-13 12:40:00', 17, 1, 82.00, 91.84),
(82, '2026-02-14 10:20:00', 28, 2, 315.00, 352.80),
(83, '2026-02-14 14:50:00', 5, 3, 160.00, 179.20),
(84, '2026-02-15 08:30:00', 13, 4, 250.00, 280.00),
(85, '2026-02-15 11:10:00', 20, 5, 470.00, 526.40),
(86, '2026-02-16 09:55:00', 1, 6, 130.00, 145.60),
(87, '2026-02-16 13:15:00', 18, 7, 360.00, 403.20),
(88, '2026-02-17 10:00:00', 24, 8, 205.00, 229.60),
(89, '2026-02-17 15:25:00', 7, 9, 530.00, 593.60),
(90, '2026-02-18 11:35:00', 29, 10, 175.00, 196.00),
(91, '2026-02-18 14:00:00', 10, 1, 290.00, 324.80),
(92, '2026-02-19 09:10:00', 23, 2, 115.00, 128.80),
(93, '2026-02-19 12:30:00', 6, 3, 420.00, 470.40),
(94, '2026-02-20 10:45:00', 15, 4, 180.00, 201.60),
(95, '2026-02-20 15:10:00', 4, 5, 340.00, 380.80),
(96, '2026-02-21 08:40:00', 22, 6, 260.00, 291.20),
(97, '2026-02-21 11:55:00', 16, 7, 95.00, 106.40),
(98, '2026-02-22 10:15:00', 8, 8, 510.00, 571.20),
(99, '2026-02-22 13:40:00', 27, 9, 215.00, 240.80),
(100, '2026-02-23 09:20:00', 12, 10, 380.00, 425.60);


-- ========================================================
-- DETALLES DE PEDIDOS ADICIONALES (IDs 11 al 100)
-- ========================================================
INSERT INTO detalle_pedidos (id_pedido, id_producto, cantidad, subtotal) VALUES
-- Pedido 11
(11, 10, 2, 100.00),
(11, 25, 1, 50.00),
-- Pedido 12
(12, 4, 5, 85.00),
-- Pedido 13
(13, 12, 3, 210.00),
(13, 18, 2, 100.00),
-- Pedido 14
(14, 5, 10, 300.00),
(14, 30, 4, 120.00),
-- Pedido 15
(15, 15, 1, 95.00),
-- Pedido 16
(16, 22, 2, 150.00),
(16, 40, 4, 80.00),
-- Pedido 17
(17, 3, 3, 360.00),
(17, 50, 5, 150.00),
-- Pedido 18
(18, 11, 2, 180.00),
-- Pedido 19
(19, 7, 4, 480.00),
(19, 60, 2, 160.00),
-- Pedido 20
(20, 2, 5, 125.00),
-- Pedido 21
(21, 9, 2, 280.00),
(21, 33, 2, 100.00),
-- Pedido 22
(22, 14, 1, 215.00),
-- Pedido 23
(23, 21, 3, 90.00),
-- Pedido 24
(24, 6, 2, 350.00),
(24, 45, 2, 140.00),
-- Pedido 25
(25, 8, 1, 160.00),
-- Pedido 26
(26, 17, 5, 175.00),
(26, 29, 2, 100.00),
-- Pedido 27
(27, 31, 4, 240.00),
(27, 52, 2, 100.00),
-- Pedido 28
(28, 38, 2, 110.00),
-- Pedido 29
(29, 1, 4, 400.00),
(29, 90, 2, 180.00),
-- Pedido 30
(30, 26, 3, 205.00),
-- Pedido 31
(31, 13, 3, 300.00),
(31, 35, 1, 115.00),
-- Pedido 32
(32, 41, 2, 130.00),
-- Pedido 33
(33, 20, 5, 200.00),
(33, 70, 1, 110.00),
-- Pedido 34
(34, 48, 3, 75.00),
-- Pedido 35
(35, 88, 2, 400.00),
(35, 92, 1, 120.00),
-- Pedido 36
(36, 16, 3, 195.00),
-- Pedido 37
(37, 27, 2, 180.00),
(37, 63, 1, 100.00),
-- Pedido 38
(38, 34, 4, 360.00),
-- Pedido 39
(39, 19, 2, 140.00),
-- Pedido 40
(40, 23, 3, 300.00),
(40, 81, 1, 150.00),
-- Pedido 41
(41, 32, 2, 98.00),
-- Pedido 42
(42, 100, 1, 500.00),
(42, 102, 1, 110.00),
-- Pedido 43
(43, 37, 2, 170.00),
-- Pedido 44
(44, 43, 1, 230.00),
-- Pedido 45
(45, 51, 3, 270.00),
(45, 65, 1, 120.00),
-- Pedido 46
(46, 55, 1, 115.00),
-- Pedido 47
(47, 73, 2, 380.00),
(47, 85, 1, 100.00),
-- Pedido 48
(48, 62, 2, 220.00),
-- Pedido 49
(49, 78, 3, 210.00),
(49, 99, 1, 100.00),
-- Pedido 50
(50, 44, 1, 165.00),
-- Pedido 51
(51, 89, 2, 400.00),
(51, 110, 1, 140.00),
-- Pedido 52
(52, 36, 2, 88.00),
-- Pedido 53
(53, 59, 2, 290.00),
-- Pedido 54
(54, 67, 3, 330.00),
(54, 75, 1, 100.00),
-- Pedido 55
(55, 80, 2, 120.00),
-- Pedido 56
(56, 84, 1, 250.00),
(56, 95, 1, 100.00),
-- Pedido 57
(57, 49, 3, 210.00),
-- Pedido 58
(58, 54, 1, 175.00),
-- Pedido 59
(59, 120, 2, 500.00),
(59, 122, 1, 120.00),
-- Pedido 60
(60, 61, 1, 95.00),
-- Pedido 61
(61, 68, 2, 180.00),
(61, 71, 1, 80.00),
-- Pedido 62
(62, 115, 1, 300.00),
(62, 118, 1, 110.00),
-- Pedido 63
(63, 76, 3, 135.00),
-- Pedido 64
(64, 83, 2, 300.00),
-- Pedido 65
(65, 91, 1, 185.00),
-- Pedido 66
(66, 130, 1, 400.00),
(66, 135, 1, 110.00),
-- Pedido 67
(67, 24, 2, 72.00),
-- Pedido 68
(68, 53, 2, 240.00),
-- Pedido 69
(69, 77, 2, 280.00),
(69, 93, 1, 100.00),
-- Pedido 70
(70, 42, 1, 155.00),
-- Pedido 71
(71, 105, 2, 360.00),
(71, 112, 1, 100.00),
-- Pedido 72
(72, 86, 2, 290.00),
-- Pedido 73
(73, 28, 1, 110.00),
-- Pedido 74
(74, 64, 3, 330.00),
-- Pedido 75
(75, 72, 1, 125.00),
(75, 87, 1, 100.00),
-- Pedido 76
(76, 39, 2, 140.00),
-- Pedido 77
(77, 125, 1, 450.00),
(77, 132, 1, 120.00),
-- Pedido 78
(78, 56, 2, 190.00),
-- Pedido 79
(79, 69, 2, 280.00),
-- Pedido 80
(80, 98, 2, 300.00),
(80, 101, 1, 100.00),
-- Pedido 81
(81, 18, 2, 82.00),
-- Pedido 82
(82, 108, 1, 215.00),
(82, 111, 1, 100.00),
-- Pedido 83
(83, 46, 2, 160.00),
-- Pedido 84
(84, 57, 1, 250.00),
-- Pedido 85
(85, 119, 1, 350.00),
(85, 124, 1, 120.00),
-- Pedido 86
(86, 33, 2, 130.00),
-- Pedido 87
(87, 74, 2, 260.00),
(87, 82, 1, 100.00),
-- Pedido 88
(88, 66, 1, 205.00),
-- Pedido 89
(89, 128, 1, 410.00),
(89, 136, 1, 120.00),
-- Pedido 90
(90, 47, 2, 175.00),
-- Pedido 91
(91, 70, 2, 200.00),
(91, 96, 1, 90.00),
-- Pedido 92
(92, 25, 2, 115.00),
-- Pedido 93
(93, 114, 1, 300.00),
(93, 121, 1, 120.00),
-- Pedido 94
(94, 58, 2, 180.00),
-- Pedido 95
(95, 94, 2, 240.00),
(95, 97, 1, 100.00),
-- Pedido 96
(96, 81, 2, 260.00),
-- Pedido 97
(97, 35, 1, 95.00),
-- Pedido 98
(98, 126, 1, 390.00),
(98, 131, 1, 120.00),
-- Pedido 99
(99, 63, 2, 215.00),
-- Pedido 100
(100, 103, 1, 280.00),
(100, 109, 1, 100.00);