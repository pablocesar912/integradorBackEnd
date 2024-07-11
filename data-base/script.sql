-- Crear base de datos

CREATE SCHEMA `biblioteca_24255` DEFAULT CHARACTER SET utf8 ;

USE biblioteca_24255;

-- Crear tablas

CREATE TABLE autores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255),
    nacionalidad VARCHAR(50),
    fecha_nacimiento DATE,
    createdAt DATETIME,
    updatedAt DATETIME
);

CREATE TABLE editoriales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    direccion VARCHAR(255),
    telefono VARCHAR(20),
    email VARCHAR(255),
    createdAt DATETIME,
    updatedAt DATETIME
);

CREATE TABLE libros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor_id INT,
    editorial_id INT,
    isbn VARCHAR(13),
    anio_publicacion INTEGER,
    genero VARCHAR(50),
    disponible BOOLEAN,
    createdAt DATETIME,
    updatedAt DATETIME,
    FOREIGN KEY (autor_id) REFERENCES Autores(id),
    FOREIGN KEY (editorial_id) REFERENCES Editoriales(id)
);

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255),
    direccion VARCHAR(255),
    telefono VARCHAR(20),
    email VARCHAR(255),
    createdAt DATETIME,
    updatedAt DATETIME
);

CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_pedido DATE,
    cliente_id INT,
    libro_id INT,
    cantidad INT,
    createdAt DATETIME,
    updatedAt DATETIME,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id),
    FOREIGN KEY (libro_id) REFERENCES Libros(id)
);

-- Cargar registros

INSERT INTO libros (titulo, autor_id, editorial_id, isbn, anio_publicacion, genero, disponible, createdAt, updatedAt)
VALUES
    ('Cien años de soledad', 1, 1, '9780307350723', 1967, 'Realismo mágico', true, NOW(), NOW()),
    ('1984', 2, 2, '9780451524935', 1949, 'Ciencia ficción', true, NOW(), NOW()),
    ('Orgullo y prejuicio', 3, 1, '9780141439518', 1813, 'Novela romántica', true, NOW(), NOW()),
    ('El principito', 4, 3, '9780156013925', 1943, 'Literatura infantil', true, NOW(), NOW()),
    ('Harry Potter y la piedra filosofal', 5, 2, '9788478884457', 1997, 'Fantasía', true, NOW(), NOW()),
    ('Don Quijote de la Mancha', 6, 1, '9788420487026', 1605, 'Novela', true, NOW(), NOW()),
    ('Matar a un ruiseñor', 7, 2, '9788490325070', 1960, 'Ficción legal', true, NOW(), NOW()),
    ('El señor de los anillos', 8, 3, '9788445000366', 1954, 'Fantasía épica', true, NOW(), NOW()),
    ('La sombra del viento', 9, 1, '9788408055307', 2001, 'Novela gótica', true, NOW(), NOW()),
    ('Crónica de una muerte anunciada', 1, 2, '9781400034956', 1981, 'Ficción literaria', true, NOW(), NOW());
    
INSERT INTO autores (nombre, apellido, nacionalidad, fecha_nacimiento, createdAt, updatedAt)
VALUES
    ('Gabriel', 'García Márquez', 'Colombiano', '1927-03-06', NOW(), NOW()),
    ('George', 'Orwell', 'Británico', '1903-06-25', NOW(), NOW()),
    ('Jane', 'Austen', 'Británica', '1775-12-16', NOW(), NOW()),
    ('Antoine de', 'Saint-Exupéry', 'Francés', '1900-06-29', NOW(), NOW()),
    ('J.K.', 'Rowling', 'Británica', '1965-07-31', NOW(), NOW()),
    ('Miguel de', 'Cervantes', 'Español', '1547-09-29', NOW(), NOW()),
    ('Harper', 'Lee', 'Estadounidense', '1926-04-28', NOW(), NOW()),
    ('J.R.R.', 'Tolkien', 'Británico', '1892-01-03', NOW(), NOW()),
    ('Carlos', 'Ruiz Zafón', 'Español', '1964-09-25', NOW(), NOW());

INSERT INTO editoriales (nombre, direccion, telefono, email, createdAt, updatedAt)
VALUES
    ('Editorial Sudamericana', 'Av. Rivadavia 576, Buenos Aires, Argentina', '+54 11 4348-3600', 'info@sudamericana.com.ar', NOW(), NOW()),
    ('Penguin Books', '80 Strand, London, WC2R 0RL, United Kingdom', '+44 20 7139 3000', 'info@penguin.co.uk', NOW(), NOW()),
    ('Ediciones SM', 'Calle Vereda de Enmedio 11, Madrid, Spain', '+34 91 422 50 50', 'atencion.cliente@ediciones-sm.com', NOW(), NOW());

INSERT INTO clientes (nombre, apellido, direccion, telefono, email, createdAt, updatedAt)
VALUES
    ('Ana', 'García', 'Calle Mayor 123, Madrid', '+34 91 234 5678', 'ana.garcia@example.com', NOW(), NOW()),
    ('Juan', 'Martínez', 'Av. Libertador 456, Buenos Aires', '+54 11 5555-1234', 'juan.martinez@example.com', NOW(), NOW()),
    ('María', 'López', 'Rua das Flores 789, Lisboa', '+351 21 987 6543', 'maria.lopez@example.com', NOW(), NOW()),
    ('Carlos', 'Rodríguez', 'Broadway St. 789, New York', '+1 212 555 6789', 'carlos.rodriguez@example.com', NOW(), NOW()),
    ('Laura', 'Sánchez', 'Gran Vía 456, Barcelona', '+34 93 333 2222', 'laura.sanchez@example.com', NOW(), NOW());


INSERT INTO pedidos (fecha_pedido, cliente_id, libro_id, cantidad, createdAt, updatedAt)
VALUES
    ('2024-07-10', 1, 1, 2, NOW(), NOW()),  -- Ana García pide 2 unidades de "Cien años de soledad"
    ('2024-07-09', 2, 5, 1, NOW(), NOW()),  -- Juan Martínez pide 1 unidad de "Harry Potter y la piedra filosofal"
    ('2024-07-08', 3, 7, 3, NOW(), NOW());  -- María López pide 3 unidades de "Matar a un ruiseñor"
  