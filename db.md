### Crear base de datos

CREATE SCHEMA `biblioteca24255` DEFAULT CHARACTER SET utf8 ;

### Crear tablas  (ejecutar script completo en workbench)

USE biblioteca24255;

CREATE TABLE autores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255),
    nacionalidad VARCHAR(50),
    fecha_nacimiento DATETIME,
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
    fecha_publicacion DATETIME,
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
