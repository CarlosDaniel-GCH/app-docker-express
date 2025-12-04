-- init.sql
-- ---------------------------------------------
-- Crear la tabla 'productos'
-- ---------------------------------------------
CREATE TABLE IF NOT EXISTS productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10, 2) NOT NULL,
    imagen VARCHAR(255)
);

-- ---------------------------------------------
-- Insertar los datos de tu tabla 'productos'
-- ---------------------------------------------
INSERT INTO productos (nombre, descripcion, precio, imagen) VALUES
('Zapatillas Negras', 'Zapatillas deportivas unisex.', 199.90, 'https://media.falabella.com/falabellaPE/20115114_1/w=1500,h=1500,fit=pad    '),
('Perfume Royal', 'Fragancia fresca y elegante.', 89.50, 'https://home.ripley.com.pe/Attachment/WOP_5/2014127960008/2014127960008_2.jpg'),
('Polo Blanco', 'Polo clásico de algodón.', 49.90, 'https://dropthelabel.pe/cdn/shop/products/square-DTL_1382.jpg?v=1711076320&width=1946'),
('Gorra Negra', 'Gorra deportiva estilo urbano.', 29.90, 'https://vitaglio.com/cdn/shop/files/Vitaglio-Gorras_005.jpg?v=1707874712&width=1946'),
('Mochila Moderna', 'Mochila de lona resistente.', 119.00, 'https://m.media-amazon.com/images/I/61cO4+GTqzL._AC_SL1483_.jpg'),
('Polo Urban Black', 'Polo de algodón negro con diseño minimalista', 49.90, 'https://cdn11.bigcommerce.com/s-ociadhblfb/images/stencil/1280x1280/products/122/931/Urban_Polo_Black_Front__63244.1749134241.jpg?c=1'),
('Zapatillas Runner X', 'Zapatillas ligeras con suela antideslizante', 189.00, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAJV9Fvooz-cB2jCklw-rkWvzHVR1h-wy6Jg&s'),
('Perfume Aqua Night', 'Fragancia fresca y duradera con notas cítricas', 79.50, 'https://media.falabella.com/falabellaPE/137152732_01/w=800,h=800,fit=pad'),
('Gorra Street Style', 'Gorra ajustable estilo urbano, disponible', 35.00, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOs2glwQK_ZVQQWUTcigX65taPBVoxCM-04Q&s'),
('Mochila Explorer', 'Mochila resistente al agua con compartimentos', 129.90, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKcN6xU7v4h78X1OnruSPaUq36ueQ9bNar8A&s'),
('Polo Blanco Clásico', 'Polo blanco con cuello redondo, tejido suave', 45.00, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY5lmk1pmAPkF1x9rfDh4TfPGjY7eyBh_epg&s'),
('Zapatillas Retro 90s', 'Estilo retro con suela gruesa, vuelve a los 90s.', 210.00, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTE-wP4AcXV0YFub270oN5M-RZWz0G-SSQpyg&s'),
('Perfume Rose Intense', 'Aroma floral intenso con base dulce', 89.90, 'https://static.sweetcare.com/img/prd/488/v-638549241625305369/al-wataniah-021478ww_01.webp'),
('Gorra Classic Fit', 'Diseño clásico con visera curva', 32.00, 'https://www.catlifestyle.pe/media/catalog/product/g/o/gorros-hombre-caterpillar-classic-logo-4090002-13765_1_jbip1eand6mzjjom.jpg?optimize=medium&bg-color=255,255,255&fit=bounds&height=550&width=550&canvas=550:550'),
('Mochila Urbana Slim', 'Diseño delgado ideal para laptop.', 119.00, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpxbBtu1rZoFa1cU4QOVvIp3U6r1Lu6PEx1w&s'),
('Polo Oversize Beige', 'Polo oversize color beige, tendencia cómoda y moderna.', 55.00, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc8z5Tv5phlEEQIsMcO0amAeLDqS7voebB5A&s');