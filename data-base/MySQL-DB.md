### Crear base de datos

CREATE SCHEMA `biblioteca24255` DEFAULT CHARACTER SET utf8 ;

USE biblioteca24255;

### Crear tablas

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
    fecha_publicacion DATE,
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
    fecha_pedido DATETIME,
    cliente_id INT,
    libro_id INT,
    cantidad INT,
    createdAt DATETIME,
    updatedAt DATETIME,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id),
    FOREIGN KEY (libro_id) REFERENCES Libros(id)
);

### Carga de registros a la base de datos

INSERT INTO libros (titulo, autor_id, editorial_id, isbn, fecha_publicacion, genero, disponible)
VALUES
    ('Cien años de soledad', 1, 1, '9780307350723', '1967-05-30', 'Realismo mágico', true),
    ('1984', 2, 2, '9780451524935', '1949-06-08', 'Ciencia ficción', true),
    ('Orgullo y prejuicio', 3, 1, '9780141439518', '1813-01-28', 'Novela romántica', true),
    ('El principito', 4, 3, '9780156013925', '1943-04-06', 'Literatura infantil', true),
    ('Harry Potter y la piedra filosofal', 5, 2, '9788478884457', '1997-06-26', 'Fantasía', true),
    ('Don Quijote de la Mancha', 6, 1, '9788420487026', '1605-01-16', 'Novela', true),
    ('Matar a un ruiseñor', 7, 2, '9788490325070', '1960-07-11', 'Ficción legal', true),
    ('El señor de los anillos', 8, 3, '9788445000366', '1954-07-29', 'Fantasía épica', true),
    ('La sombra del viento', 9, 1, '9788408055307', '2001-06-01', 'Novela gótica', true),
    ('Crónica de una muerte anunciada', 1, 2, '9781400034956', '1981-01-01', 'Ficción literaria', true);
    
INSERT INTO autores (nombre, apellido, nacionalidad, fecha_nacimiento)
VALUES
    ('Gabriel', 'García Márquez', 'Colombiano', '1927-03-06'),
    ('George', 'Orwell', 'Británico', '1903-06-25'),
    ('Jane', 'Austen', 'Británica', '1775-12-16'),
    ('Antoine de', 'Saint-Exupéry', 'Francés', '1900-06-29'),
    ('J.K.', 'Rowling', 'Británica', '1965-07-31'),
    ('Miguel de', 'Cervantes', 'Español', '1547-09-29'),
    ('Harper', 'Lee', 'Estadounidense', '1926-04-28'),
    ('J.R.R.', 'Tolkien', 'Británico', '1892-01-03'),
    ('Carlos', 'Ruiz Zafón', 'Español', '1964-09-25');

INSERT INTO editoriales (nombre, direccion, telefono, email)
VALUES
    ('Editorial Sudamericana', 'Av. Rivadavia 576, Buenos Aires, Argentina', '+54 11 4348-3600', 'info@sudamericana.com.ar'),
    ('Penguin Books', '80 Strand, London, WC2R 0RL, United Kingdom', '+44 20 7139 3000', 'info@penguin.co.uk'),
    ('Ediciones SM', 'Calle Vereda de Enmedio 11, Madrid, Spain', '+34 91 422 50 50', 'atencion.cliente@ediciones-sm.com');

INSERT INTO clientes (nombre, apellido, direccion, telefono, email)
VALUES
    ('Ana', 'García', 'Calle Mayor 123, Madrid', '+34 91 234 5678', 'ana.garcia@example.com'),
    ('Juan', 'Martínez', 'Av. Libertador 456, Buenos Aires', '+54 11 5555-1234', 'juan.martinez@example.com'),
    ('María', 'López', 'Rua das Flores 789, Lisboa', '+351 21 987 6543', 'maria.lopez@example.com'),
    ('Carlos', 'Rodríguez', 'Broadway St. 789, New York', '+1 212 555 6789', 'carlos.rodriguez@example.com'),
    ('Laura', 'Sánchez', 'Gran Vía 456, Barcelona', '+34 93 333 2222', 'laura.sanchez@example.com');


INSERT INTO pedidos (fecha_pedido, cliente_id, libro_id, cantidad)
VALUES
    ('2024-07-10 10:00:00', 1, 1, 2),  -- Ana García pide 2 unidades de "Cien años de soledad"
    ('2024-07-09 15:30:00', 2, 5, 1),  -- Juan Martínez pide 1 unidad de "Harry Potter y la piedra filosofal"
    ('2024-07-08 14:45:00', 3, 7, 3);  -- María López pide 3 unidades de "Matar a un ruiseñor"
