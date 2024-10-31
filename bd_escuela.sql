CREATE DATABASE bd_escuela;

-- Crear la tabla Escuela
CREATE TABLE escuela (
id_escuela INT NOT NULL AUTO_INCREMENT,
logo_escuela VARCHAR(50),
nombre VARCHAR(100) NOT NULL,
direccion VARCHAR(255),
telefono VARCHAR(20),
fec_ani DATE,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_escuela)    
)ENGINE=INNODB;

INSERT INTO escuela (logo_escuela, nombre, direccion, telefono, fec_ani, fec_insercion, fec_modificacion, usuario, estado) VALUES 
('logo1.jpg', 'U.E. Gral.Jose manuel Belgrano', 'Av. Belgrano 1460', '46637264', '2024-03-17',now(),now(),1,'A');


-- Crear la tabla Estudiante
CREATE TABLE estudiantes (
id_estudiante INT NOT NULL AUTO_INCREMENT,
id_escuela INT NOT NULL,
nombres VARCHAR(50),
ap VARCHAR(50),
am VARCHAR(50) NOT NULL,
fec_nac DATE NOT NULL,
ci VARCHAR(25) NOT NULL,
genero CHAR(1) NOT NULL,
direccion VARCHAR(255) NOT NULL,
tel_cel VARCHAR(20) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_estudiante),
FOREIGN KEY (id_escuela) REFERENCES escuela(id_escuela)
)ENGINE=INNODB;

INSERT INTO estudiantes (id_escuela, nombres, ap, am, fec_nac, ci, genero, direccion, tel_cel, fec_insercion, fec_modificacion, usuario, estado) VALUES
(1, 'Juan', 'González', 'López', '2010-05-20', '1234567', 'M', 'Ciro Trigo 123', '71234567',now(),now(),1,'A'),
(1, 'María', 'Martínez', 'García', '2009-08-15', '2345678', 'F', 'Maria Claret 456', '72345678',now(),now(),1,'A'),
(1, 'Pedro', 'Sánchez', 'Pérez', '2010-11-10', '3456789', 'M', 'Pje. Ponce de Leon 789', '73456789',now(),now(),1,'A'),
(1, 'Ana', 'López', 'Hernández', '2010-03-25', '4567890', 'F', 'Federico Avila 63', '71567890',now(),now(),1,'A'),
(1, 'Carlos', 'Gómez', 'Díaz', '2008-09-05', '5678901', 'M', 'Eulógio Ruíz 345', '68678901',now(),now(),1,'A'),
(1, 'Laura', 'Rodríguez', 'Ruiz', '2009-06-30', '6789012', 'F', 'Av. La Paz 492', '70789012',now(),now(),1,'A'),
(1, 'Javier', 'Pérez', 'Sánchez', '2010-02-12', '7890123', 'M', 'Padilla 246', '65890123',now(),now(),1,'A'),
(1, 'Paula', 'Hernández', 'Martínez', '2009-10-18', '8901234', 'F', 'Junín 369', '75901234',now(),now(),1,'A'),
(1, 'Mario', 'Díaz', 'Gómez', '2008-07-22', '9012345', 'M', 'Ejercito 753', '77012345',now(),now(),1,'A'),
(1, 'Luisa', 'Ruiz', 'Rodríguez', '2008-04-07', '0123456', 'F', 'Ingavi 159', '69123456',now(),now(),1,'A');

-- Crear la tabla Profesor
CREATE TABLE profesores (
id_profesor INT NOT NULL AUTO_INCREMENT,
id_escuela INT NOT NULL,
nombres VARCHAR(50) NOT NULL,
ap VARCHAR(50),
am VARCHAR(50) NOT NULL,
ci VARCHAR(25) NOT NULL,
direccion VARCHAR(255),
telef_cel VARCHAR(20),
especialidad VARCHAR(50),
corre_ele VARCHAR(50),
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_profesor),
FOREIGN KEY (id_escuela) REFERENCES escuela(id_escuela)
)ENGINE=INNODB;

INSERT INTO profesores (id_escuela, nombres, ap, am, ci, direccion, telef_cel, especialidad, corre_ele, fec_insercion, fec_modificacion, usuario, estado) VALUES
(1, 'Carlos', 'González', 'López', '1234567', 'O.Connor 123', '72234567', 'Matemáticas', 'carlos@gmail.com',now(),now(),1,'A'),
(1, 'Ana', 'Martínez', 'García', '2345678', 'Av. Potosí 456', '72345678', 'Biologia', 'ana@gmail.com',now(),now(),1,'A'),
(1, 'Pedro', 'Sánchez', 'Pérez', '3456789', 'Santa Cruz 789', '72456789', 'Ciencias Sociales', 'pedro@gmail.com',now(),now(),1,'A'),
(1, 'María', 'López', 'Hernández', '4567890', 'Domingo Paz 321', '71567890', 'Lengua Castellana', 'maria@gmail.com',now(),now(),1,'A'),
(1, 'Javier', 'Gómez', 'Díaz', '5678901', 'Bolivar 567', '71678901', 'Física', 'javier@gmail.com',now(),now(),1,'A'),
(1, 'Laura', 'Rodríguez', 'Ruiz', '6789012', 'Suipacha 859', '76789012', 'Artes Plásticas y Visuales', 'laura@gmail.com',now(),now(),1,'A'),
(1, 'Paula', 'Pérez', 'Sánchez', '7890123', 'Colón 246', '76890123', 'Educación Física y Deportes', 'paula@gmail.com',now(),now(),1,'A'),
(1, 'Mario', 'Hernández', 'Martínez', '8901234', 'Daniel Campos 369', '75901234', 'Química', 'mario@gmail.com',now(),now(),1,'A'),
(1, 'Luisa', 'Díaz', 'Gómez', '9012345', 'Chorolque 753', '73012345', 'Educación Musical', 'luisa@gmail.com',now(),now(),1,'A'),
(1, 'Pedro', 'Ruiz', 'Rodríguez', '8123456', 'Cochabamba 947', '73123456', 'Lengua extranjera', 'pedro@gmail.com',now(),now(),1,'A');

-- Crear la tabla Cursos
CREATE TABLE cursos (
id_curso INT NOT NULL AUTO_INCREMENT,
id_escuela INT NOT NULL,
nom_cur VARCHAR(100),
nivel VARCHAR(50), 
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_curso),
FOREIGN KEY (id_escuela) REFERENCES escuela(id_escuela)
)ENGINE=INNODB;

INSERT INTO cursos (id_escuela, nom_cur, nivel, fec_insercion, fec_modificacion, usuario, estado) VALUES
(1, 'Primero A', 'Secundaria',now(),now(),1,'A'),
(1, 'Primero B', 'Secundaria',now(),now(),1,'A'),
(1, 'Segundo A', 'Secundaria',now(),now(),1,'A'),
(1, 'Segundo B', 'Secundaria',now(),now(),1,'A'),
(1, 'Tercero A', 'Secundaria',now(),now(),1,'A'),
(1, 'Tercero B', 'Secundaria',now(),now(),1,'A'),
(1, 'Cuarto A', 'Secundaria',now(),now(),1,'A'),
(1, 'Cuarto B', 'Secundaria',now(),now(),1,'A'),
(1, 'Quinto A', 'Secundaria',now(),now(),1,'A'),
(1, 'Quinto B', 'Secundaria',now(),now(),1,'A');
-- Crear la tabla Clases
CREATE TABLE clases (
id_clase INT NOT NULL AUTO_INCREMENT,
id_profesor INT NOT NULL,
id_curso INT NOT NULL,
nombre VARCHAR(20),
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_clase),    
FOREIGN KEY (id_profesor) REFERENCES profesores(id_profesor),
FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
)ENGINE=INNODB;

INSERT INTO clases (id_profesor, id_curso, nombre, fec_insercion, fec_modificacion, usuario, estado) VALUES
(1, 1, 'Matemáticas',now(),now(),1,'A'),
(2, 2, 'Biologia',now(),now(),1,'A'),
(3, 3, 'Ciencias Sociales',now(),now(),1,'A'),
(4, 4, 'Lengua Castellana',now(),now(),1,'A'),
(5, 5, 'Física',now(),now(),1,'A'),
(6, 6, 'Artes Plásticas y Visuales',now(),now(),1,'A'),
(7, 7, 'Educación Física y Deportes',now(),now(),1,'A'),
(8, 8, 'Química',now(),now(),1,'A'),
(9, 9, 'Educación Musical',now(),now(),1,'A'),
(10, 10, 'Lengua extranjera',now(),now(),1,'A');
-- Crear la tabla Aulas
CREATE TABLE aulas (
id_aula INT NOT NULL AUTO_INCREMENT,
id_escuela INT NOT NULL,
id_clase INT NOT NULL,
capacidad INT NOT NULL,
ubicacion VARCHAR(50),
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_aula),
FOREIGN KEY (id_escuela) REFERENCES escuela(id_escuela),
FOREIGN KEY (id_clase) REFERENCES clases(id_clase)
)ENGINE=INNODB;

INSERT INTO aulas (id_escuela, id_clase, capacidad, ubicacion, fec_insercion, fec_modificacion, usuario, estado) VALUES
(1, 1, 30, 'Segunda planta',now(),now(),1,'A'),
(1, 2, 25, 'Segunda planta',now(),now(),1,'A'),
(1, 3, 20, 'Segunda planta',now(),now(),1,'A'),
(1, 4, 35, 'Segunda planta',now(),now(),1,'A'),
(1, 5, 30, 'Tercera planta',now(),now(),1,'A'),
(1, 6, 25, 'Tercera planta',now(),now(),1,'A'),
(1, 7, 20, 'Tercera planta',now(),now(),1,'A'),
(1, 8, 35, 'Tercera planta',now(),now(),1,'A'),
(1, 9, 30, 'Tercera planta',now(),now(),1,'A'),
(1, 10, 25, 'Tercera planta',now(),now(),1,'A');
-- Crear la tabla Calificaciones
CREATE TABLE calificaciones (
    id_calificacion INT NOT NULL AUTO_INCREMENT,
    id_estudiante INT NOT NULL,
    id_curso INT NOT NULL,
    id_clase INT NOT NULL,
    calificacion FLOAT NOT NULL,
    fec_cal DATE NOT NULL,
    fec_insercion TIMESTAMP NOT NULL,
    fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    usuario INT NOT NULL,
    estado CHAR(1) NOT NULL,
    PRIMARY KEY(id_calificacion),
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante),
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso),
    FOREIGN KEY (id_clase) REFERENCES clases(id_clase)
)ENGINE=INNODB;

INSERT INTO calificaciones (id_estudiante, id_curso, id_clase, calificacion, fec_cal, fec_insercion, fec_modificacion, usuario, estado) VALUES
(1, 5, 1, 85.5, '2024-04-25',now(),now(),1,'A'),
(1, 5, 2, 90.0, '2024-04-26',now(),now(),1,'A'),
(1, 5, 3, 75.8, '2024-04-27',now(),now(),1,'A'),
(1, 5, 4, 88.2, '2024-04-28',now(),now(),1,'A'),
(1, 5, 5, 92.7, '2024-04-29',now(),now(),1,'A'),
(1, 5, 6, 80.1, '2024-04-30',now(),now(),1,'A'),
(1, 5, 7, 87.4, '2024-05-01',now(),now(),1,'A'),
(1, 5, 8, 95.6, '2024-05-02',now(),now(),1,'A'),
(1, 5, 9, 84.3, '2024-05-03',now(),now(),1,'A'),
(1, 5, 10, 91.0, '2024-05-04',now(),now(),1,'A'),

(2, 5, 1, 100, '2024-04-25',now(),now(),1,'A'),
(2, 5, 2, 92.0, '2024-04-26',now(),now(),1,'A'),
(2, 5, 3, 72.8, '2024-04-27',now(),now(),1,'A'),
(2, 5, 4, 86.2, '2024-04-28',now(),now(),1,'A'),
(2, 5, 5, 94.7, '2024-04-29',now(),now(),1,'A'),
(2, 5, 6, 87.1, '2024-04-30',now(),now(),1,'A'),
(2, 5, 7, 65.4, '2024-05-01',now(),now(),1,'A'),
(2, 5, 8, 99.6, '2024-05-02',now(),now(),1,'A'),
(2, 5, 9, 86.3, '2024-05-03',now(),now(),1,'A'),
(2, 5, 10, 56.0, '2024-05-04',now(),now(),1,'A'),

(3, 5, 1, 89.2, '2024-04-25',now(),now(),1,'A'),
(3, 5, 2, 78.0, '2024-04-26',now(),now(),1,'A'),
(3, 5, 3, 78.8, '2024-04-27',now(),now(),1,'A'),
(3, 5, 4, 90.2, '2024-04-28',now(),now(),1,'A'),
(3, 5, 5, 94.7, '2024-04-29',now(),now(),1,'A'),
(3, 5, 6, 86.1, '2024-04-30',now(),now(),1,'A'),
(3, 5, 7, 89.3, '2024-05-01',now(),now(),1,'A'),
(3, 5, 8, 95.8, '2024-05-02',now(),now(),1,'A'),
(3, 5, 9, 86.2, '2024-05-03',now(),now(),1,'A'),
(3, 5, 10, 99.0, '2024-05-04',now(),now(),1,'A'),

(4, 5, 1, 89, '2024-04-25',now(),now(),1,'A'),
(4, 5, 2, 96, '2024-04-26',now(),now(),1,'A'),
(4, 5, 3, 60, '2024-04-27',now(),now(),1,'A'),
(4, 5, 4, 65, '2024-04-28',now(),now(),1,'A'),
(4, 5, 5, 68, '2024-04-29',now(),now(),1,'A'),
(4, 5, 6, 72, '2024-04-30',now(),now(),1,'A'),
(4, 5, 7, 89, '2024-05-01',now(),now(),1,'A'),
(4, 5, 8, 87, '2024-05-02',now(),now(),1,'A'),
(4, 5, 9, 68, '2024-05-03',now(),now(),1,'A'),
(4, 5, 10, 59, '2024-05-04',now(),now(),1,'A'),

(5, 5, 1, 58, '2024-04-25',now(),now(),1,'A'),
(5, 5, 2, 68, '2024-04-26',now(),now(),1,'A'),
(5, 5, 3, 75, '2024-04-27',now(),now(),1,'A'),
(5, 5, 4, 86, '2024-04-28',now(),now(),1,'A'),
(5, 5, 5, 91, '2024-04-29',now(),now(),1,'A'),
(5, 5, 6, 85, '2024-04-30',now(),now(),1,'A'),
(5, 5, 7, 76, '2024-05-01',now(),now(),1,'A'),
(5, 5, 8, 96, '2024-05-02',now(),now(),1,'A'),
(5, 5, 9, 82, '2024-05-03',now(),now(),1,'A'),
(5, 5, 10, 76, '2024-05-04',now(),now(),1,'A'),

(6, 5, 1, 68, '2024-04-25',now(),now(),1,'A'),
(6, 5, 2, 90, '2024-04-26',now(),now(),1,'A'),
(6, 5, 3, 75, '2024-04-27',now(),now(),1,'A'),
(6, 5, 4, 67, '2024-04-28',now(),now(),1,'A'),
(6, 5, 5, 93, '2024-04-29',now(),now(),1,'A'),
(6, 5, 6, 83, '2024-04-30',now(),now(),1,'A'),
(6, 5, 7, 86, '2024-05-01',now(),now(),1,'A'),
(6, 5, 8, 98, '2024-05-02',now(),now(),1,'A'),
(6, 5, 9, 82, '2024-05-03',now(),now(),1,'A'),
(6, 5, 10, 93, '2024-05-04',now(),now(),1,'A'),

(7, 5, 1, 87, '2024-04-25',now(),now(),1,'A'),
(7, 5, 2, 96, '2024-04-26',now(),now(),1,'A'),
(7, 5, 3, 78, '2024-04-27',now(),now(),1,'A'),
(7, 5, 4, 89, '2024-04-28',now(),now(),1,'A'),
(7, 5, 5, 94, '2024-04-29',now(),now(),1,'A'),
(7, 5, 6, 53, '2024-04-30',now(),now(),1,'A'),
(7, 5, 7, 68, '2024-05-01',now(),now(),1,'A'),
(7, 5, 8, 78, '2024-05-02',now(),now(),1,'A'),
(7, 5, 9, 72, '2024-05-03',now(),now(),1,'A'),
(7, 5, 10, 86, '2024-05-04',now(),now(),1,'A'),

(8, 5, 1, 86, '2024-04-25',now(),now(),1,'A'),
(8, 5, 2, 78, '2024-04-26',now(),now(),1,'A'),
(8, 5, 3, 80, '2024-04-27',now(),now(),1,'A'),
(8, 5, 4, 67, '2024-04-28',now(),now(),1,'A'),
(8, 5, 5, 83, '2024-04-29',now(),now(),1,'A'),
(8, 5, 6, 59, '2024-04-30',now(),now(),1,'A'),
(8, 5, 7, 88, '2024-05-01',now(),now(),1,'A'),
(8, 5, 8, 63, '2024-05-02',now(),now(),1,'A'),
(8, 5, 9, 87, '2024-05-03',now(),now(),1,'A'),
(8, 5, 10, 96, '2024-05-04',now(),now(),1,'A'),

(9, 5, 1, 80, '2024-04-25',now(),now(),1,'A'),
(9, 5, 2, 83, '2024-04-26',now(),now(),1,'A'),
(9, 5, 3, 81, '2024-04-27',now(),now(),1,'A'),
(9, 5, 4, 88, '2024-04-28',now(),now(),1,'A'),
(9, 5, 5, 92, '2024-04-29',now(),now(),1,'A'),
(9, 5, 6, 56, '2024-04-30',now(),now(),1,'A'),
(9, 5, 7, 89, '2024-05-01',now(),now(),1,'A'),
(9, 5, 8, 58, '2024-05-02',now(),now(),1,'A'),
(9, 5, 9, 65, '2024-05-03',now(),now(),1,'A'),
(9, 5, 10, 87, '2024-05-04',now(),now(),1,'A'),

(10, 5, 1, 72, '2024-04-25',now(),now(),1,'A'),
(10, 5, 2, 75, '2024-04-26',now(),now(),1,'A'),
(10, 5, 3, 76, '2024-04-27',now(),now(),1,'A'),
(10, 5, 4, 83, '2024-04-28',now(),now(),1,'A'),
(10, 5, 5, 92, '2024-04-29',now(),now(),1,'A'),
(10, 5, 6, 83, '2024-04-30',now(),now(),1,'A'),
(10, 5, 7, 81, '2024-05-01',now(),now(),1,'A'),
(10, 5, 8, 92, '2024-05-02',now(),now(),1,'A'),
(10, 5, 9, 86, '2024-05-03',now(),now(),1,'A'),
(10, 5, 10, 91, '2024-05-04',now(),now(),1,'A');
-- Crear la tabla Horarios
CREATE TABLE horarios (
    id_horario INT NOT NULL AUTO_INCREMENT,
    id_clase INT NOT NULL,
    dia_semana VARCHAR(20),
    hora_ini TIME NOT NULL,
    hora_fin TIME NOT NULL,
    fec_insercion TIMESTAMP NOT NULL,
    fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    usuario INT NOT NULL,
    estado CHAR(1) NOT NULL,
    PRIMARY KEY(id_horario),
    FOREIGN KEY (id_clase) REFERENCES clases(id_clase)
)ENGINE=INNODB;

INSERT INTO horarios (id_clase, dia_semana, hora_ini, hora_fin, fec_insercion, fec_modificacion, usuario, estado) VALUES
(1, 'Lunes', '07:30:00', '08:50:00',now(),now(),1,'A'),
(9, 'Lunes', '08:50:00', '09:30:00',now(),now(),1,'A'),
(9, 'Lunes', '9:50:00', '10:30:00',now(),now(),1,'A'),
(2, 'Lunes', '10:30:00', '12:30:00',now(),now(),1,'A'),

(6, 'Martes', '07:30:00', '08:50:00',now(),now(),1,'A'),
(4, 'Martes', '08:50:00', '09:30:00',now(),now(),1,'A'),
(4, 'Martes', '9:50:00', '10:30:00',now(),now(),1,'A'),
(7, 'Martes', '10:30:00', '12:30:00',now(),now(),1,'A'),

(1, 'Miercoles', '07:30:00', '08:50:00',now(),now(),1,'A'),
(3, 'Miercoles', '08:50:00', '09:30:00',now(),now(),1,'A'),
(3, 'Miercoles', '9:50:00', '10:30:00',now(),now(),1,'A'),
(8, 'Miercoles', '10:30:00', '12:30:00',now(),now(),1,'A'),

(5, 'Jueves', '07:30:00', '08:50:00',now(),now(),1,'A'),
(2, 'Jueves', '08:50:00', '09:30:00',now(),now(),1,'A'),
(2, 'Jueves', '9:50:00', '10:30:00',now(),now(),1,'A'),
(1, 'Jueves', '10:30:00', '12:30:00',now(),now(),1,'A'),

(4, 'Viernes', '07:30:00', '08:50:00',now(),now(),1,'A'),
(10, 'Viernes', '08:50:00', '09:30:00',now(),now(),1,'A'),
(10, 'Viernes', '9:50:00', '10:30:00',now(),now(),1,'A'),
(3, 'Viernes', '10:30:00', '12:30:00',now(),now(),1,'A');

-- Crear la tabla Actividades extracurriculares
CREATE TABLE actividades_extracurriculares (
    id_actividad_extracurricular INT NOT NULL AUTO_INCREMENT,
    id_escuela INT NOT NULL,
    nombre VARCHAR(100),
    descripcion TEXT,
    fec_insercion TIMESTAMP NOT NULL,
    fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    usuario INT NOT NULL,
    estado CHAR(1) NOT NULL,
    PRIMARY KEY(id_actividad_extracurricular),    
    FOREIGN KEY (id_escuela) REFERENCES escuela(id_escuela)
)ENGINE=INNODB;
INSERT INTO actividades_extracurriculares (id_escuela, nombre, descripcion, fec_insercion, fec_modificacion, usuario, estado) VALUES
(1, 'Club de Debate', 'Actividad enfocada en el desarrollo de habilidades de debate y argumentación.',now(),now(),1,'A'),
(1, 'Taller de Robótica', 'Taller donde los estudiantes aprenden conceptos básicos de robótica y construyen robots simples.',now(),now(),1,'A'),
(1, 'Grupo de Teatro', 'Grupo dedicado a la práctica y presentación de obras teatrales.',now(),now(),1,'A'),
(1, 'Club de Fotografía', 'Club para estudiantes interesados en aprender técnicas de fotografía y edición de imágenes.',now(),now(),1,'A'),
(1, 'Equipo de Fútbol', 'Equipo deportivo que representa a la escuela en competiciones de fútbol.',now(),now(),1,'A'),
(1, 'Taller de Pintura', 'Taller donde los estudiantes exploran técnicas de pintura y expresión artística.',now(),now(),1,'A'),
(1, 'Club de Ajedrez', 'Club para entusiastas del ajedrez que desean mejorar sus habilidades en el juego.',now(),now(),1,'A'),
(1, 'Grupo de Música', 'Grupo musical que practica y realiza presentaciones de diversos géneros musicales.',now(),now(),1,'A'),
(1, 'Taller de Cocina', 'Taller donde los estudiantes aprenden recetas básicas y técnicas culinarias.',now(),now(),1,'A'),
(1, 'Club de Lectura', 'Club dedicado a la lectura y discusión de diferentes obras literarias.',now(),now(),1,'A');
-- Crear la tabla Materiales educativos
CREATE TABLE materiales_educativos (
    id_material INT NOT NULL AUTO_INCREMENT,
    id_escuela INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    descripcion TEXT,
    fec_insercion TIMESTAMP NOT NULL,
    fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    usuario INT NOT NULL,
    estado CHAR(1) NOT NULL,
    PRIMARY KEY(id_material),
    FOREIGN KEY (id_escuela) REFERENCES escuela(id_escuela)
)ENGINE=INNODB;

INSERT INTO materiales_educativos (id_escuela, nombre, tipo, descripcion, fec_insercion, fec_modificacion, usuario, estado) VALUES
(1, 'Libro de Matemáticas', 'Libro', 'Libro de texto para el curso de matemáticas.',now(),now(),1,'A'),
(1, 'Kit de Laboratorio de Ciencias', 'Equipo', 'Kit completo de instrumentos y materiales para experimentos de ciencias.',now(),now(),1,'A'),
(1, 'Mapa Histórico', 'Material visual', 'Mapa ilustrativo de eventos históricos importantes.',now(),now(),1,'A'),
(1, 'Enciclopedia Virtual', 'Recurso en línea', 'Acceso a una enciclopedia en línea con información detallada sobre diversos temas.',now(),now(),1,'A'),
(1, 'Juego de Química', 'Juego educativo', 'Juego de mesa que enseña conceptos básicos de química de forma divertida.',now(),now(),1,'A'),
(1, 'Presentación de PowerPoint', 'Material multimedia', 'Presentación de diapositivas para repasar los conceptos principales del curso.',now(),now(),1,'A'),
(1, 'Pizarra Interactiva', 'Equipo', 'Pizarra digital interactiva para clases participativas.',now(),now(),1,'A'),
(1, 'Video Tutorial', 'Material multimedia', 'Tutorial en video sobre cómo resolver problemas matemáticos.',now(),now(),1,'A'),
(1, 'Guía de Estudio', 'Material impreso', 'Guía de estudio con ejercicios y respuestas para preparar exámenes.',now(),now(),1,'A'),
(1, 'Simulador de Física', 'Software', 'Software interactivo que simula experimentos físicos en el computador.',now(),now(),1,'A');
-- Crear la tabla Aniversario
CREATE TABLE aniversarios (
    id_aniversario INT NOT NULL AUTO_INCREMENT,
    id_escuela INT NOT NULL, 
    gestion VARCHAR(30),
    descripcion TEXT,
    fec_insercion TIMESTAMP NOT NULL,
    fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    usuario INT NOT NULL,
    estado CHAR(1) NOT NULL,
    PRIMARY KEY(id_aniversario),
    FOREIGN KEY (id_escuela) REFERENCES escuela(id_escuela)
)ENGINE=INNODB;
INSERT INTO aniversarios (id_escuela, gestion, descripcion, fec_insercion, fec_modificacion, usuario, estado) VALUES
(1, '2024', 'Celebración del aniversario número 25 de la escuela.',now(),now(),1,'A'),
(1, '2023', 'Conmemoración del aniversario número 24 de la fundación de la escuela.',now(),now(),1,'A'),
(1, '2022', 'Evento especial por el aniversario número 23 de la institución educativa.',now(),now(),1,'A'),
(1, '2021', 'Celebración del aniversario número 22 de la escuela con actividades culturales y deportivas.',now(),now(),1,'A'),
(1, '2020', 'Conmemoración del vigésimo primer aniversario de la fundación de la escuela.',now(),now(),1,'A'),
(1, '2019', 'Evento especial por el aniversario número 20 de la institución educativa con la participación de exalumnos.',now(),now(),1,'A'),
(1, '2018', 'Celebración del décimo noveno aniversario de la escuela con un acto cívico y actividades recreativas.',now(),now(),1,'A'),
(1, '2017', 'Conmemoración del aniversario número 18 de la fundación de la escuela con presentaciones artísticas.',now(),now(),1,'A'),
(1, '2016', 'Evento especial por el aniversario número 17 de la institución educativa con una feria de ciencias.',now(),now(),1,'A'),
(1, '2015', 'Celebración del décimo sexto aniversario de la escuela con un desfile y actos culturales.',now(),now(),1,'A');


/*Utilizando el sistema web que están desarrollando y la siguiente base de datos realizar:
*Crear un grupo en su menu con el nombre TERCER BIMESTRE-BDII
*Crear una opción dentro del grupo creado que se llame Rpt TARIFA URBANO POR ZONAS, 
en la primera pantalla del select que se visualice  Seleccione Zona y se muestre en el select
zona; en base a eso que visualice las tarifas urbanas(zona; lugar, 1_persona, 2_personas)
Nota.- Enviar lo solicitado (Sistema web y base de datos) en una carpeta comprimida con el nombre EV_CONTI_08-08_TAPIA.rar
*/

CREATE TABLE zonas(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  zona VARCHAR(20) NOT NULL
)ENGINE=INNODB;

CREATE TABLE tarif_urbano(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  zona_id INT NOT NULL,
  lugar VARCHAR(50) NOT NULL,
  1_persona FLOAT NOT NULL,
  2_personas FLOAT NOT NULL,
  3_personas FLOAT NOT NULL,
  FOREIGN KEY(zona_id) REFERENCES zonas(id)
)ENGINE=INNODB;

INSERT INTO zonas VALUES(1, 'B. AVAROA');
INSERT INTO zonas VALUES(2, 'CONTROL VIEJO');
INSERT INTO zonas VALUES(3, 'SAN MARTIN');
INSERT INTO zonas VALUES(4, 'SAN LUIS');
INSERT INTO zonas VALUES(5, 'AEROPUERTO');
INSERT INTO zonas VALUES(6, 'JUAN XXIII');
INSERT INTO zonas VALUES(7, 'PALMARCITO');
INSERT INTO zonas VALUES(8, 'VILLA BUSCH');

INSERT INTO tarif_urbano VALUES(1, 1, "BARRIO FLORIDA", 5, 4, 4);
INSERT INTO tarif_urbano VALUES(2, 2, "BARRIO LOURDES", 6, 4, 4);
INSERT INTO tarif_urbano VALUES(3, 3, "BARRIO LOURDES (ESCUELA Y CIABOL)", 6, 4, 4);
INSERT INTO tarif_urbano VALUES(4, 4, "BARRIO LOURDES (HASTA EL PROYECTO)", 7, 4, 4);
INSERT INTO tarif_urbano VALUES(5, 5, "BARRIO LOURDES (HASTA EL TANQUE)", 8, 4, 4);
INSERT INTO tarif_urbano VALUES(6, 6, "BARRIO LITORAL", 8, 4, 4);
INSERT INTO tarif_urbano VALUES(7, 7, "COLON (FINAL HASTA EL PUENTE)", 10, 5, 4);
INSERT INTO tarif_urbano VALUES(8, 8, "ALIMENTOS BALANCEADOS", 5, 4, 4);
INSERT INTO tarif_urbano VALUES(9, 8, "INST. TEC. TARIJA", 6, 4, 4);
INSERT INTO tarif_urbano VALUES(10, 8, "MONTE SUD (PARADA D)", 15, 15, 5);

/*Utilizando el sistema web responsivo que están desarrollando y la siguiente base de datos:
  1.- Crear el grupo TERCER BIMESTRE-DWII 
  2.- Dentro del grupo crear una opción que se llame PLAN DE PAGOS
  3.- Visualizar el listado de PRESTAMOS CON PLAN DE PAGOS (listado simple)
  4.- Insertar PLAN DE PAGOS utilizando un buscador para la herencia
Nota.- Enviar lo solicitado (Sistema web y base de datos) en una carpeta comprimida con el nombre Ev_28-08_CAMACHO_DW2.rar
*/

CREATE TABLE prestamos(
pk INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
interes FLOAT NOT NULL,
monto FLOAT NOT NULL,
cliente VARCHAR(30) NOT NULL
)ENGINE=INNODB;

CREATE TABLE plan_de_pagos(
pk INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
prestamo_pk INT NOT NULL,
interes FLOAT NOT NULL,
capital FLOAT NOT NULL,
fech_limite DATE NOT NULL,
fech_pago DATE NOT NULL,
FOREIGN KEY (prestamo_pk) REFERENCES prestamos(pk)
)ENGINE=INNODB;



INSERT INTO prestamos VALUES(1, 10, 2000, 'ANDREA LOPES');
INSERT INTO prestamos VALUES(2, 10, 5000, 'MANUEL FLORES');
INSERT INTO prestamos VALUES(3, 10, 8000, 'SANDRA CALABI');
INSERT INTO prestamos VALUES(4, 10, 9000, 'FACUNDO ARENAS');
INSERT INTO prestamos VALUES(5, 10, 2000, 'FABIOLA OCAMPO');
INSERT INTO prestamos VALUES(6, 10, 3500, 'GABRIELA ANDRADRE');
INSERT INTO prestamos VALUES(7, 10, 1000, 'NICOLAS SUAREZ');
INSERT INTO prestamos VALUES(8, 10, 2000, 'DAMIAN URIARTE');
INSERT INTO prestamos VALUES(9, 10, 2000, 'ANTONELLA RIOS');
INSERT INTO prestamos VALUES(10, 10, 1200, 'AMIRA LAZCANO');

INSERT INTO plan_de_pagos VALUES(1,1, 10, 2000,'2022-12-05', '2025-10-10');
INSERT INTO plan_de_pagos VALUES(2, 2, 10, 5000, '2022-01-04', '2024-01-04');
INSERT INTO plan_de_pagos VALUES(3, 3, 10, 8000, '2022-05-04', '2023-11-04');
INSERT INTO plan_de_pagos VALUES(4, 4, 10, 9000, '2022-10-05', '2022-12-10');
INSERT INTO plan_de_pagos VALUES(5, 5, 10, 2000, '2022-11-05', '2026-01-10');
INSERT INTO plan_de_pagos VALUES(6, 6, 10, 3500, '2022-03-08', '2022-10-10');
INSERT INTO plan_de_pagos VALUES(7, 7, 10, 1000, '2022-12-08', '2026-01-10');
INSERT INTO plan_de_pagos VALUES(8, 8, 10, 2000, '2022-05-09', '2024-01-10');
INSERT INTO plan_de_pagos VALUES(9, 9, 10, 2000, '2022-11-07', '2023-09-10');
INSERT INTO plan_de_pagos VALUES(10, 1, 10, 1000, '2022-10-05', '2022-10-10');


/*Utilizando el sistema web responsivo que están desarrollando y la siguiente base de datos:
  1.- Crear el grupo  
  2.- Dentro del grupo TERCER BIMESTRE-DWII crear una opción que se llame PIEZAS FABRICADAS 
  3.- Visualizar el listado de TRABAJADORES CON PIEZAS FABRICADAS (BUSCADOR CON SELECT PARA LA HERENCIA E INPUTS
   PARA LA TABLA PIEZAS FABRICADAS)
  4.- Insertar PIEZAS FABRICADAS utilizando un buscador para la herencia

Nota.- Enviar lo solicitado (Sistema web y base de datos) en una carpeta comprimida con el nombre Ev_TERCERBI_CAMACHO_DW2.rar
*/

CREATE TABLE trabajadores(
    id_trabajador INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    ap VARCHAR(30),
    am VARCHAR(30),
    ci VARCHAR(20) NOT NULL,
    _fec_insercion TIMESTAMP NOT NULL,
    _fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    _usuario INT NOT NULL,
    _estado CHAR(1) NOT NULL,
PRIMARY KEY(id_trabajador)
)ENGINE=INNODB;


CREATE TABLE piezas_fabricadas(
    id_pieza_fabricada INT NOT NULL AUTO_INCREMENT,
    id_trabajador INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    precio VARCHAR(50) NOT NULL,
    tipo_material VARCHAR(30) NOT NULL,
    tiempo VARCHAR(30) NOT NULL,
    _fec_insercion TIMESTAMP NOT NULL,
    _fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    _usuario INT NOT NULL,
    _estado CHAR(1) NOT NULL,
PRIMARY KEY(id_pieza_fabricada),
FOREIGN KEY(id_trabajador) REFERENCES trabajadores(id_trabajador)
)ENGINE=INNODB;

INSERT INTO trabajadores VALUES(1,'CRISTHIAN','MARQUEZ','AVENDAÑO','7216785',now(),now(),1,'A');
INSERT INTO trabajadores VALUES(2,'DANY','MARQUEZ','FLORES','9481656',now(),now(),1,'A');
INSERT INTO trabajadores VALUES(3,'EYBERT','AZAMA','MARQUEZ','6441684',now(),now(),1,'A');
INSERT INTO trabajadores VALUES(4,'BENIGNO','VALDEZ','ARCE','1656486',now(),now(),1,'A');
INSERT INTO trabajadores VALUES(5,'MARCO','MARQUEZ','ANTEZANA','6456464',now(),now(),1,'A');

INSERT INTO piezas_fabricadas VALUES (1,1,'SEGURO DE VENTILADOR','30 BS','TEFLON','2 HRS',now(),now(),1,'A');
INSERT INTO piezas_fabricadas VALUES (2,4,'POLEA 1','250 BS','FIERRO FUNDIDO','6 HRS',now(),now(),1,'A');
INSERT INTO piezas_fabricadas VALUES (3,5,'POLEA 2','200 BS','FIERRO FUNDIDO','5 HRS',now(),now(),1,'A');
INSERT INTO piezas_fabricadas VALUES (4,1,'POLEA 3','300 BS','FIERRO FUNDIDO','6 HRS',now(),now(),1,'A');
INSERT INTO piezas_fabricadas VALUES (5,1,'CUBETAS DE MUÑON','10 BS','TEFLON','0,5 HRS',now(),now(),1,'A');
INSERT INTO piezas_fabricadas VALUES (6,4,'TAPA DE TREN','40 BS','FIERRO','2 HRS',now(),now(),1,'A');
INSERT INTO piezas_fabricadas VALUES (7,4,'EJE DE BOMBA DE AGUA','80 BS','FIERRO','3 HRS',now(),now(),1,'A');
INSERT INTO piezas_fabricadas VALUES (8,5,'BOLA DE MUÑON','60 BS','FIERRO','2 HRS',now(),now(),1,'A');
INSERT INTO piezas_fabricadas VALUES (9,4,'SEGURO DE CHATA DE VOLVO','150 BS','TEFLON','3 HRS',now(),now(),1,'A');
INSERT INTO piezas_fabricadas VALUES (10,4,'EJE DE ALTERNADOR','250 BS','FIERRO','5 HRS',now(),now(),1,'A');

CREATE TABLE rubros(
    id_rubro INT NOT NULL AUTO_INCREMENT,
    rubro VARCHAR(30)NOT NULL,
    vida_util INT NOT NULL,
    porcen_depreciacion FLOAT NOT NULL,
    depreciacion VARCHAR(10)NOT NULL,
    fec_insercion TIMESTAMP NOT NULL,
    fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    usuario INT NOT NULL,
    estado CHAR(1) NOT NULL,
    PRIMARY KEY(id_rubro)
)ENGINE=INNODB;

INSERT INTO rubros VALUES (1, 'Terrenos', 10, 10.00, 'NO', NOW(), NOW(), 1, 'A');
INSERT INTO rubros VALUES (2, 'Edificaciones', 40, 2.5, 'SI', NOW(), NOW(), 1, 'A');
INSERT INTO rubros VALUES (3, 'Muebles y Enseres de oficina', 10, 10.00, 'SI',  NOW(), NOW(), 1, 'A');
INSERT INTO rubros VALUES (4, 'Equipos de Computacion', 4, 25.00, 'SI',  NOW(), NOW(), 1, 'A');
INSERT INTO rubros VALUES (5, 'Vehiculo Automotores', 5, 20.00, 'SI',  NOW(), NOW(), 1, 'A');
INSERT INTO rubros VALUES (6, 'Herramientas en Generales', 4, 25.00, 'SI', NOW(), NOW(), 1, 'A');

CREATE TABLE categorias(
    id_categoria INT NOT NULL AUTO_INCREMENT,
    id_rubro INT NOT NULL,
    categoria_rubro VARCHAR(30)NOT NULL,
    fec_insercion TIMESTAMP NOT NULL,
    fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    usuario INT NOT NULL,
    estado CHAR(1) NOT NULL,
    PRIMARY KEY(id_categoria),
    FOREIGN KEY(id_rubro)REFERENCES rubros(id_rubro)
)ENGINE=INNODB;

INSERT INTO categorias VALUES (1, 1,'Terreno', NOW(), NOW(), 1, 'A');
INSERT INTO categorias VALUES (2, 2,'Edificacion',  NOW(), NOW(), 1, 'A');
INSERT INTO categorias VALUES (3, 2,'Vivienda',  NOW(), NOW(), 1, 'A');
INSERT INTO categorias VALUES (4, 3,'Pupitre', NOW(), NOW(), 1, 'A');
INSERT INTO categorias VALUES (5, 3,'Silla', NOW(), NOW(), 1, 'A');
INSERT INTO categorias VALUES (6, 3,'Mesa de Escritorio', NOW(), NOW(), 1, 'A');
INSERT INTO categorias VALUES (7, 3,'Casillero Metalico', NOW(), NOW(), 1, 'A');
INSERT INTO categorias VALUES (8, 3,'Casillero Madera', NOW(), NOW(), 1, 'A');
INSERT INTO categorias VALUES (9, 3,'Ventilador', NOW(), NOW(), 1, 'A');
INSERT INTO categorias VALUES (11, 4,'Computadora', NOW(), NOW(), 1, 'A');
INSERT INTO categorias VALUES (12, 4,'Impresora', NOW(), NOW(), 1, 'A');
INSERT INTO categorias VALUES (13, 4,'Proyector', NOW(), NOW(), 1, 'A');
INSERT INTO categorias VALUES (14, 5,'Vehiculo', NOW(), NOW(), 1, 'A');
INSERT INTO categorias VALUES (15, 6,'Taladro', NOW(), NOW(), 1, 'A');

CREATE TABLE activos_fijos(
    id_activo_fijo INT NOT NULL AUTO_INCREMENT,
    id_categoria INT NOT NULL,
    descripcion VARCHAR(100) NOT NULL,
    fecha_adquisicion DATE NOT NULL, 
    fecha_activacion DATE, 
    fotografia VARCHAR(30),
    nro_documento VARCHAR(50),
    valor FLOAT,
    valor_residual FLOAT,
    responsable VARCHAR(50),
    depreciacion VARCHAR(50), /*del id_categoria 4 al 15*/
    marca_del_activo VARCHAR(25),  /*del id_categoria 9 al 15*/
    nro_serie_placa VARCHAR(20),  /*solo id_categoria 14*/
    fec_insercion TIMESTAMP NOT NULL,
    fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    usuario INT NOT NULL,
    estado CHAR(1) NOT NULL,
    PRIMARY KEY(id_activo_fijo),
    FOREIGN KEY(id_categoria) REFERENCES categorias(id_categoria)
)ENGINE=INNODB;


CREATE TABLE personas(  
id_persona INT NOT NULL AUTO_INCREMENT,
id_escuela INT NOT NULL,
ci VARCHAR(25) NOT NULL,
nombres VARCHAR(25) NOT NULL,
ap VARCHAR(35),
am VARCHAR(35) NOT NULL,
telefono VARCHAR(25) NOT NULL, 
direccion VARCHAR(50) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_persona),
FOREIGN KEY (id_escuela) REFERENCES escuela(id_escuela)
)ENGINE=INNODB;

INSERT INTO personas VALUES(1,1,'7159789', 'WILFREDO', 'TAPIA','BEJARANO','75785167','B.JESUS DE NAZARETH',now(),now(),1,'A');
INSERT INTO personas VALUES(2, 1, '7165890', 'MARIA', 'PEREZ', 'GONZALEZ', '75896234', 'C.SANTA ROSA', NOW(), NOW(), 1, 'A');
INSERT INTO personas VALUES(3, 1, '7167891', 'JUAN', 'GARCIA', 'RODRIGUEZ', '75907345', 'C.LAS FLORES', NOW(), NOW(), 1, 'A');
INSERT INTO personas VALUES(4, 1, '7178902', 'LUIS', 'MARTINEZ', 'LOPEZ', '75918456', 'B.SAN JUAN', NOW(), NOW(), 1, 'A');
INSERT INTO personas VALUES(5, 1, '7189013', 'ANA', 'HERNANDEZ', 'DIAZ', '75929567', 'C.SAN PEDRO', NOW(), NOW(), 1, 'A');
INSERT INTO personas VALUES(6, 1, '7190124', 'PEDRO', 'FERNANDEZ', 'RAMIREZ', '75930678', 'B.SAN PABLO', NOW(), NOW(), 1, 'A');
INSERT INTO personas VALUES(7, 1, '7201235', 'LUISA', 'GOMEZ', 'SANCHEZ', '75941789', 'C.SANTA MARIA', NOW(), NOW(), 1, 'A');
INSERT INTO personas VALUES(8, 1, '7212346', 'JORGE', 'RODRIGUEZ', 'CASTILLO', '75952890', 'B.VIRGEN DE GUADALUPE', NOW(), NOW(), 1, 'A');
INSERT INTO personas VALUES(9, 1, '7223457', 'CARLA', 'MORALES', 'VARGAS', '75963901', 'C.SAN MIGUEL', NOW(), NOW(), 1, 'A');
INSERT INTO personas VALUES(10, 1, '7234568', 'ANDRES', 'SUAREZ', 'TORRES', '75975012', 'B.SAN RAFAEL', NOW(), NOW(), 1, 'A');
INSERT INTO personas VALUES(11, 1, '7245679', 'ALICIA', 'RAMOS', 'MENDEZ', '75986123', 'C.SAN ANTONIO', NOW(), NOW(), 1, 'A');
INSERT INTO personas VALUES(12, 1, '7256780', 'MIGUEL', 'FLORES', 'CRUZ', '75997234', 'B.SANTA CECILIA', NOW(), NOW(), 1, 'A');

CREATE TABLE usuarios(
id_usuario INT NOT NULL AUTO_INCREMENT, 
id_persona INT NOT NULL,
usuario1 VARCHAR(100) NOT NULL,
clave VARCHAR(100) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_usuario),
FOREIGN KEY (id_persona) REFERENCES personas(id_persona)
)ENGINE=INNODB;

INSERT INTO usuarios VALUES(1,1,'admin', '$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK',now(),now(),1,'A');
INSERT INTO usuarios VALUES(2,2,'director', '$2y$10$MuvuFchB7OR7NVEdJ.HUoOnIGmiKOcNjdsFmgT6jLq/5kJ4rTnlPq',now(),now(),1,'A');
INSERT INTO usuarios VALUES(3,3,'profesor', '$2y$10$/8a0LBb6WlcEbTTcsrIGH.N2F3kKgAQXjnRNFP2XWayNo3fo75ysW',now(),now(),1,'A');


CREATE TABLE roles(
id_rol INT NOT NULL AUTO_INCREMENT, 
rol VARCHAR(30) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_rol)
)ENGINE=INNODB;

INSERT INTO roles VALUES(1,'ADMINISTRADOR',now(),now(),1,'A');
INSERT INTO roles VALUES(2,'DIRECTOR',now(),now(),1,'A');
INSERT INTO roles VALUES(3,'PROFESOR',now(),now(),1,'A');

CREATE TABLE usuarios_roles(
id_usuario_rol INT NOT NULL AUTO_INCREMENT, 
id_rol INT NOT NULL,
id_usuario INT NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_usuario_rol),
FOREIGN KEY (id_rol) REFERENCES roles(id_rol),
FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
)ENGINE=INNODB;

INSERT INTO usuarios_roles VALUES(1,1,1,now(),now(),1,'A');
INSERT INTO usuarios_roles VALUES(2,2,2,now(),now(),1,'A');
INSERT INTO usuarios_roles VALUES(3,3,3,now(),now(),1,'A');

CREATE TABLE grupos(
id_grupo INT NOT NULL AUTO_INCREMENT, 
grupo VARCHAR(20) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_grupo)
)ENGINE=INNODB;

INSERT INTO grupos VALUES(1,'HERRAMIENTAS',now(),now(),1,'A');
INSERT INTO grupos VALUES(2,'PARAMETROS',now(),now(),1,'A');
INSERT INTO grupos VALUES(3,'ESCUELA',now(),now(),1,'A');
INSERT INTO grupos VALUES(4,'REPORTES',now(),now(),1,'A');
INSERT INTO grupos VALUES(5,'TERCER BIMESTRE-BDII',now(),now(),1,'A');
INSERT INTO grupos VALUES(6,'TERCER BIMESTRE-DWII',now(),now(),1,'A');
INSERT INTO grupos VALUES(7,'CUARTO BIMESTRE-DWII',now(),now(),1,'A');


CREATE TABLE opciones(
id_opcion INT NOT NULL AUTO_INCREMENT, 
id_grupo INT NOT NULL,
opcion VARCHAR(30) NOT NULL,
contenido VARCHAR(100) NOT NULL,
orden INT NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_opcion),
FOREIGN KEY (id_grupo) REFERENCES grupos(id_grupo)
)ENGINE=INNODB;

INSERT INTO opciones VALUES(1,1,'Personas','../privada/personas/personas.php',10,now(),now(),1,'A');
INSERT INTO opciones VALUES(2,1,'Usuarios','../privada/usuarios/usuarios.php',20,now(),now(),1,'A');
INSERT INTO opciones VALUES(3,1,'Grupos','../privada/grupos/grupos.php',30,now(),now(),1,'A');
INSERT INTO opciones VALUES(4,1,'Roles','../privada/roles/roles.php',40,now(),now(),1,'A');
INSERT INTO opciones VALUES(5,1,'Usuarios_Roles','../usuarios_roles/usuarios_roles.php',50,now(),now(),1,'A');
INSERT INTO opciones VALUES(6,1,'Opciones','../privada/opciones/opciones.php',60,now(),now(),1,'A');
INSERT INTO opciones VALUES(7,1,'Accesos','../accesos/accesos.php',70,now(),now(),1,'A');
INSERT INTO opciones VALUES(8,3,'Datos Escuela','../privada/datos_escuela/escuela_modificar.php',10,now(),now(),1,'A');
INSERT INTO opciones VALUES(9,3,'Estudiantes','../privada/estudiantes/estudiantes.php',20,now(),now(),1,'A');
INSERT INTO opciones VALUES(10,3,'Profesores','../privada/profesores/profesores.php',30,now(),now(),1,'A');
INSERT INTO opciones VALUES(11,3,'Cursos','../privada/cursos/cursos.php',40,now(),now(),1,'A');
INSERT INTO opciones VALUES(12,3,'Clases','../privada/clases/clases.php',50,now(),now(),1,'A');
INSERT INTO opciones VALUES(13,3,'Aulas','../privada/aulas/aulas.php',60,now(),now(),1,'A');
INSERT INTO opciones VALUES(14,3,'Calificaciones','../privada/calificaciones/calificaciones.php',70,now(),now(),1,'A');
INSERT INTO opciones VALUES(15,3,'Horarios','../privada/horarios/horarios.php',80,now(),now(),1,'A');
INSERT INTO opciones VALUES(16,3,'Actividades_Extracurriculares','../privada/actividades_extracurriculares/actividades_extracurriculares.php',90,now(),now(),1,'A');
INSERT INTO opciones VALUES(17,3,'Materiales_Educativos','../privada/materiales_educativos/materiales_educativos.php',100,now(),now(),1,'A');
INSERT INTO opciones VALUES(18,3,'Aniversarios','../privada/aniversarios/aniversarios.php',110,now(),now(),1,'A');
INSERT INTO opciones VALUES(19,4,'Rpt Personas con Usuarios','../privada/reportes/personas_usuarios.php',10,now(),now(),1,'A');
INSERT INTO opciones VALUES(20,4,'Rpt Personas por Fecha','../privada/reportes/personas_fechas.php',20,now(),now(),1,'A');
INSERT INTO opciones VALUES(21,4,'Rpt Profesores con Clases','../privada/reportes/profesores_clases.php',30,now(),now(),1,'A');
INSERT INTO opciones VALUES(22,4,'Rpt Estudiantes con Calificaciones','../privada/reportes/estudiantes_calificaciones.php',40,now(),now(),1,'A');
INSERT INTO opciones VALUES(23,4,'Rpt Personas por Genero','../privada/reportes/personas_genero.php',50,now(),now(),1,'A');
INSERT INTO opciones VALUES(24,4,'Rpt Materiales educativos por categoria','../privada/reportes/materiales_educativos_categoria.php',60,now(),now(),1,'A');
INSERT INTO opciones VALUES(25,4,'Ficha Técnica de Personas','../privada/reportes/ficha_tec_personas.php',70,now(),now(),1,'A');
INSERT INTO opciones VALUES(26,4,'Ficha Técnica de Estudiantes','../privada/reportes/ficha_tec_estudiantes.php',80,now(),now(),1,'A');
INSERT INTO opciones VALUES(27,5,'Rpt TARIFA URBANO POR ZONAS','../privada/reportes/tarif_urbano_zonas.php',10,now(),now(),1,'A');
INSERT INTO opciones VALUES(28,5,'Ficha Técnica de Tarifario Urbano','../privada/reportes/ficha_tec_tarif_urbano.php',20,now(),now(),1,'A');
INSERT INTO opciones VALUES(29,4,'Reportes Estadisticos','../privada/reportes/reportes_estadisticos.php',90,now(),now(),1,'A');
INSERT INTO opciones VALUES(30,6,'PLAN DE PAGOS','../privada/plan_de_pagos/plan_de_pagos.php',10,now(),now(),1,'A');
INSERT INTO opciones VALUES(31,6,'PIEZAS FABRICADAS','../privada/piezas_fabricadas/piezas_fabricadas.php',10,now(),now(),1,'A');
INSERT INTO opciones VALUES(32,5,'Ev.Bimestral','../privada/reportes/reportes_estadisticos_academico.php',100,now(),now(),1,'A');
INSERT INTO opciones VALUES(33,7,'Exchange Rates API','../privada/exchange_rates/exchange_rates.php',10,now(),now(),1,'A');
INSERT INTO opciones VALUES(34,7,'Formulario Dinamico','../privada/activos_fijos/insertar_activo_fijo.php',20,now(),now(),1,'A');
INSERT INTO opciones VALUES(34,7,'Formulario Dinamico','../privada/activos_fijos/formu_dinamico.php',20,now(),now(),1,'A');


CREATE TABLE accesos(
id_acceso INT NOT NULL AUTO_INCREMENT, 
id_opcion INT NOT NULL,
id_rol INT NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_acceso),
FOREIGN KEY (id_opcion) REFERENCES opciones(id_opcion),
FOREIGN KEY (id_rol) REFERENCES roles(id_rol)
)ENGINE=INNODB;

INSERT INTO accesos VALUES(1,1,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(2,2,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(3,3,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(4,4,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(5,5,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(6,6,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(7,7,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(8,8,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(9,9,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(10,10,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(11,11,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(12,12,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(13,13,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(14,14,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(15,15,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(16,16,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(17,17,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(18,18,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(19,19,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(20,20,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(21,21,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(22,22,1,now(),now(),1,'A');


INSERT INTO accesos VALUES(23,1,2,now(),now(),1,'A');
INSERT INTO accesos VALUES(24,2,2,now(),now(),1,'A');
INSERT INTO accesos VALUES(25,3,2,now(),now(),1,'A');
INSERT INTO accesos VALUES(26,10,2,now(),now(),1,'A');
INSERT INTO accesos VALUES(27,11,2,now(),now(),1,'A');
INSERT INTO accesos VALUES(28,12,2,now(),now(),1,'A');
INSERT INTO accesos VALUES(29,21,2,now(),now(),1,'A');
INSERT INTO accesos VALUES(30,22,2,now(),now(),1,'A');

INSERT INTO accesos VALUES(31,11,3,now(),now(),1,'A');
INSERT INTO accesos VALUES(32,12,3,now(),now(),1,'A');
INSERT INTO accesos VALUES(33,13,3,now(),now(),1,'A');
INSERT INTO accesos VALUES(34,14,3,now(),now(),1,'A');
INSERT INTO accesos VALUES(35,15,3,now(),now(),1,'A');
INSERT INTO accesos VALUES(36,16,3,now(),now(),1,'A');

INSERT INTO accesos VALUES(37,23,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(38,24,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(39,25,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(40,26,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(41,27,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(42,28,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(43,29,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(44,30,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(45,31,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(46,32,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(47,33,1,now(),now(),1,'A');
INSERT INTO accesos VALUES(48,34,1,now(),now(),1,'A');

-- Practica 3: Indices personas y usuarios
-- PRIMARY
CREATE TABLE _personas_indices(  
id_persona INT NOT NULL AUTO_INCREMENT,
ci VARCHAR(25) NOT NULL,
nombres VARCHAR(25) NOT NULL,
ap VARCHAR(35),
am VARCHAR(35) NOT NULL,
telefono VARCHAR(25) NOT NULL, 
genero char(1) DEFAULT NULL,
direccion VARCHAR(50) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_persona)
)ENGINE=INNODB;

-- FOREIGN:
CREATE TABLE _usuarios_indices(
id_usuario INT NOT NULL AUTO_INCREMENT, 
id_persona INT NOT NULL,
ci varchar(15) NOT NULL,
nombres varchar(30) NOT NULL,
ap varchar(20) DEFAULT NULL,
am varchar(20) DEFAULT NULL,
direccion varchar(50) DEFAULT NULL,
telefono varchar(30) DEFAULT NULL,
genero char(1) DEFAULT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_usuario),
FOREIGN KEY (id_persona) REFERENCES personas(id_persona)
)ENGINE=INNODB;

-- INDEX:
CREATE TABLE _personas_indices2(  
id_persona INT NOT NULL AUTO_INCREMENT,
ci VARCHAR(25) NOT NULL,
nombres VARCHAR(25) NOT NULL,
ap VARCHAR(35),
am VARCHAR(35) NOT NULL,
telefono VARCHAR(25) NOT NULL, 
direccion VARCHAR(50) NOT NULL,
genero char(1) DEFAULT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_persona),
INDEX i_ap(ap),
INDEX i_am(am)
)ENGINE=INNODB;

-- UNIQUE:
CREATE TABLE _personas_indices3(  
id_persona INT NOT NULL AUTO_INCREMENT,
ci VARCHAR(25) NOT NULL,
nombres VARCHAR(25) NOT NULL,
ap VARCHAR(35),
am VARCHAR(35) NOT NULL,
telefono VARCHAR(25) NOT NULL, 
direccion VARCHAR(50) NOT NULL,
genero char(1) DEFAULT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_persona),
INDEX i_ap(ap),
INDEX i_am(am),
UNIQUE i_ci(ci)
)ENGINE=INNODB;

-- Prático 4: Indices de 3 tablas
-- TABLA1:Estudiantes y Calificaciones
-- PRIMARY
CREATE TABLE _estudiantes_indices(
id_estudiante INT NOT NULL AUTO_INCREMENT,
nombres VARCHAR(50),
ap VARCHAR(50),
am VARCHAR(50) NOT NULL,
fec_nac DATE NOT NULL,
ci VARCHAR(25) NOT NULL,
genero CHAR(1) NOT NULL,
direccion VARCHAR(255) NOT NULL,
tel_cel VARCHAR(20) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_estudiante)
)ENGINE=INNODB;
-- FOREIGN:
CREATE TABLE _calificaciones_indices(
    id_calificacion INT NOT NULL AUTO_INCREMENT,
    id_estudiante INT NOT NULL,    
    calificacion FLOAT NOT NULL,
    fec_cal DATE NOT NULL,
    fec_insercion TIMESTAMP NOT NULL,
    fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    usuario INT NOT NULL,
    estado CHAR(1) NOT NULL,
    PRIMARY KEY(id_calificacion),
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante)    
)ENGINE=INNODB;
-- INDEX:
CREATE TABLE _estudiantes_indices2(
id_estudiante INT NOT NULL AUTO_INCREMENT,
nombres VARCHAR(50),
ap VARCHAR(50),
am VARCHAR(50) NOT NULL,
fec_nac DATE NOT NULL,
ci VARCHAR(25) NOT NULL,
genero CHAR(1) NOT NULL,
direccion VARCHAR(255) NOT NULL,
tel_cel VARCHAR(20) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_estudiante),
INDEX i_ap(ap),
INDEX i_am(am)
)ENGINE=INNODB;
-- UNIQUE:
CREATE TABLE _estudiantes_indices3(
id_estudiante INT NOT NULL AUTO_INCREMENT,
nombres VARCHAR(50),
ap VARCHAR(50),
am VARCHAR(50) NOT NULL,
fec_nac DATE NOT NULL,
ci VARCHAR(25) NOT NULL,
genero CHAR(1) NOT NULL,
direccion VARCHAR(255) NOT NULL,
tel_cel VARCHAR(20) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_estudiante),
INDEX i_ap(ap),
INDEX i_am(ap),
UNIQUE i_ci(ci)
)ENGINE=INNODB;

-- Tabla 2: Cursos y Calificaciones
-- PRIMARY
CREATE TABLE _cursos_indices(
id_curso INT NOT NULL AUTO_INCREMENT,
nom_cur VARCHAR(100),
nivel VARCHAR(50), 
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_curso)
)ENGINE=INNODB;
-- FOREIGN:
CREATE TABLE _calificaciones_indices_curso(
    id_calificacion INT NOT NULL AUTO_INCREMENT,    
    id_curso INT NOT NULL,    
    calificacion FLOAT NOT NULL,
    fec_cal DATE NOT NULL,
    fec_insercion TIMESTAMP NOT NULL,
    fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    usuario INT NOT NULL,
    estado CHAR(1) NOT NULL,
    PRIMARY KEY(id_calificacion),    
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)    
)ENGINE=INNODB;
-- INDEX:
CREATE TABLE _cursos_indices2(
id_curso INT NOT NULL AUTO_INCREMENT,
nom_cur VARCHAR(100),
nivel VARCHAR(50), 
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_curso),
INDEX i_nom_cur(nom_cur)
)ENGINE=INNODB;

-- Tabla 3:Profesores y clases

-- PRIMARY:
CREATE TABLE _profesores_indices(
id_profesor INT NOT NULL AUTO_INCREMENT,
nombres VARCHAR(50) NOT NULL,
ap VARCHAR(50),
am VARCHAR(50) NOT NULL,
ci VARCHAR(25) NOT NULL,
direccion VARCHAR(255),
telef_cel VARCHAR(20),
especialidad VARCHAR(50),
corre_ele VARCHAR(50),
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_profesor)
)ENGINE=INNODB;

-- FOREIGN:
CREATE TABLE _clases_indices(
id_clase INT NOT NULL AUTO_INCREMENT,
id_profesor INT NOT NULL,
nombre VARCHAR(20),
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_clase),    
FOREIGN KEY (id_profesor) REFERENCES profesores(id_profesor)
)ENGINE=INNODB;
-- INDEX:
CREATE TABLE _profesores_indices2(
id_profesor INT NOT NULL AUTO_INCREMENT,
nombres VARCHAR(50) NOT NULL,
ap VARCHAR(50),
am VARCHAR(50) NOT NULL,
ci VARCHAR(25) NOT NULL,
direccion VARCHAR(255),
telef_cel VARCHAR(20),
especialidad VARCHAR(50),
corre_ele VARCHAR(50),
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_profesor),
INDEX i_ap(ap),
INDEX i_am(am)
)ENGINE=INNODB;
-- UNIQUE:
CREATE TABLE _profesores_indices3(
id_profesor INT NOT NULL AUTO_INCREMENT,
nombres VARCHAR(50) NOT NULL,
ap VARCHAR(50),
am VARCHAR(50) NOT NULL,
ci VARCHAR(25) NOT NULL,
direccion VARCHAR(255),
telef_cel VARCHAR(20),
especialidad VARCHAR(50),
corre_ele VARCHAR(50),
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_profesor),
INDEX i_ap(ap),
INDEX i_am(am),
UNIQUE i_ci(ci)
)ENGINE=INNODB;

-- Práctico 5: Funciones
-- Ejercicio 1 
DELIMITER //

CREATE FUNCTION contar_registros()
RETURNS INT
BEGIN
    DECLARE resultado INT;

    SELECT COUNT(id_persona) INTO resultado
    FROM personas
    WHERE estado='A';

    RETURN resultado;
END //
DELIMITER ;
/*SELECT contar_registros();*/

-- Ejercicio 2: Utilizando los sistemas web que están desarrollando crear 2 funciones

-- funcion 1

DELIMITER //

CREATE FUNCTION Calificacion_Promedia()
RETURNS FLOAT
BEGIN
    DECLARE Promedio_Calificacion FLOAT;

    SELECT ROUND(AVG(cal.calificacion), 2) INTO Promedio_Calificacion
    FROM cursos c
    INNER JOIN calificaciones cal ON c.id_curso = cal.id_curso
    WHERE  c.estado = 'A' AND cal.estado = 'A' AND c.nivel='Secundaria'
    GROUP BY c.id_curso, c.nivel, c.nom_cur;

    RETURN Promedio_Calificacion;

END //

DELIMITER ;

/*SELECT Calificacion_Promedia();*/

-- Función 2
DELIMITER //

CREATE FUNCTION estudiante_mayor()
RETURNS DECIMAL(5,2)
BEGIN
    DECLARE Edad_Maxima DECIMAL(5,2);

    SELECT MAX(TIMESTAMPDIFF(YEAR, e.fec_nac, CURRENT_DATE)) INTO Edad_Maxima
    FROM estudiantes e
    LEFT JOIN calificaciones c ON e.id_estudiante = c.id_estudiante
    WHERE e.estado = 'A' 
    AND (c.calificacion > 80 OR c.calificacion IS NULL);

    RETURN Edad_Maxima;
END //
DELIMITER ;
/*SELECT estudiante_mayor();*/

-- Práctico 6: Procedimientos almacenados

-- Ejercicio 1
DELIMITER //
 CREATE PROCEDURE listado_personas_fechas(IN f_inicio DATE, IN f_fin DATE)
    BEGIN 
      SELECT *
      FROM personas
      WHERE fec_insercion BETWEEN f_inicio AND f_fin
      AND estado='A';
    END//
DELIMITER ;


/*CALL listado_personas_fechas('2024-01-01', '2024-12-29');*/

-- -- Ejercicio 2
-- información del profesor y el nombre de la clase asignada a ese profesor.

DELIMITER //

CREATE PROCEDURE ProfesorClase (
    IN p_id_profesor INT
)
BEGIN
    SELECT 
        p.nombres AS profesor_nombre,
        p.ap AS apellido_paterno,
        p.am AS apellido_materno,
        c.nombre AS clase_nombre
    FROM 
        profesores p
    INNER JOIN  
        clases c ON p.id_profesor = c.id_profesor
    WHERE 
        p.id_profesor = p_id_profesor;
END //

DELIMITER ;

/*CALL ProfesorClase(1);*/


-- Información del estudiante junto con sus calificaciones en las diferentes clases y cursos. 
-- estudiante con id_estudiante igual a 1 junto con sus calificaciones en las diferentes clases y cursos.

DELIMITER //

CREATE PROCEDURE EstudianteCalificaciones (
    IN p_id_estudiante INT
)
BEGIN
    SELECT 
        e.nombres AS estudiante_nombre,
        e.ap AS apellido_paterno,
        e.am AS apellido_materno,
        c.nombre AS clase_nombre,
        ca.calificacion,
        cu.nom_cur AS curso_nombre
    FROM 
        estudiantes e
    INNER JOIN 
        calificaciones ca ON e.id_estudiante = ca.id_estudiante
    INNER JOIN 
        clases c ON ca.id_clase = c.id_clase
    INNER JOIN 
        cursos cu ON ca.id_curso = cu.id_curso
    WHERE 
        e.id_estudiante = p_id_estudiante;
END //

DELIMITER ;

/*CALL EstudianteCalificaciones(1);*/

-- TRIGGERS
-- EJEMPLO 1 
CREATE TABLE registro_estudiantes (
    id_registro INT NOT NULL AUTO_INCREMENT,
    accion VARCHAR(20) NOT NULL,
    id_estudiante INT NOT NULL,
    fecha_registro TIMESTAMP NOT NULL,
    usuario INT NOT NULL,
    PRIMARY KEY(id_registro)
) ENGINE=INNODB;

DELIMITER //
CREATE TRIGGER despues_actualizacion_estudiante
AFTER UPDATE ON estudiantes
FOR EACH ROW
BEGIN
    IF NEW.estado = 'X' AND OLD.estado != 'X' THEN
        INSERT INTO registro_estudiantes (accion, id_estudiante, fecha_registro, usuario)
        VALUES ('ELIMINAR', NEW.id_estudiante, NOW(), NEW.usuario);
    END IF;
END;
//
DELIMITER ;

-- EJEMPLO 2
-- Crear la tabla de historial
CREATE TABLE historial_profesores (
    id_historial INT NOT NULL AUTO_INCREMENT,
    accion VARCHAR(20) NOT NULL,
    id_profesor INT NOT NULL,
    fecha TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    usuario INT NOT NULL,
    datos_anteriores JSON,
    datos_nuevos JSON,
    PRIMARY KEY(id_historial)
) ENGINE=INNODB;
-- Trigger para actualizaciones
DELIMITER //
CREATE TRIGGER despues_actualizacion_profesor
AFTER UPDATE ON profesores
FOR EACH ROW
BEGIN
    INSERT INTO historial_profesores (accion, id_profesor, fecha, usuario, datos_anteriores, datos_nuevos)
    VALUES ('ACTUALIZAR', NEW.id_profesor, NOW(), NEW.usuario, JSON_OBJECT(
        'nombres', OLD.nombres,
        'ap', OLD.ap,
        'am', OLD.am,
        'ci', OLD.ci,
        'direccion', OLD.direccion,
        'telef_cel', OLD.telef_cel,
        'especialidad', OLD.especialidad,
        'corre_ele', OLD.corre_ele,
        'estado', NEW.estado        
    ), JSON_OBJECT(        
        'nombres', NEW.nombres,
        'ap', NEW.ap,
        'am', NEW.am,
        'ci', NEW.ci,
        'direccion', NEW.direccion,
        'telef_cel', NEW.telef_cel,
        'especialidad', NEW.especialidad,
        'corre_ele', NEW.corre_ele,        
        'estado', NEW.estado
    ));
END;
//
DELIMITER ;

-- Vistas 
CREATE VIEW vista_personas AS
SELECT ci, nombres, ap, am
FROM personas
WHERE estado='A';


-- Vista personas

CREATE VIEW vista_per_usu AS
SELECT CONCAT_WS(' ',pe.nombres,pe.ap, pe.am) AS persona, usu.usuario1
FROM personas pe
INNER JOIN usuarios usu ON pe.id_persona = usu.id_persona
WHERE  pe.estado = 'A' AND usu.estado = 'A' 
ORDER BY usu.id_persona DESC;


/*SELECT* FROM vista_per_usu;*/

-- Vista escuela
CREATE VIEW  vista_escuela AS 
SELECT logo_escuela,nombre
FROM  escuela
WHERE estado = 'A';

/*SELECT * FROM   vista_escuela;*/


-- Vista profesores con clases

CREATE VIEW vista_pro_cla AS
SELECT CONCAT_WS(' ',p.nombres,p.ap,p.am) AS profesor, c.nombre      
FROM profesores p
JOIN clases c ON p.id_profesor = c.id_profesor
WHERE p.estado = 'A'
AND c.estado = 'A'
ORDER BY c.id_profesor;

/*SELECT * FROM   vista_pro_cla;*/

-- Vista estudiantes con calificaciones

CREATE VIEW vista_estu_cali AS
SELECT CONCAT_WS(' ',e.nombres,e.ap,e.am) as estudiante, c.calificacion
FROM estudiantes e
INNER JOIN calificaciones c ON c.id_estudiante=e.id_estudiante
WHERE e.estado='A'
AND c.estado = 'A'
ORDER BY c.id_estudiante;

/*SELECT * FROM   vista_estu_cali;*/

-- Vista estudiantes, cursos, clases con calificaciones
CREATE VIEW vista_estu_cur_cla_cali AS
SELECT CONCAT_WS(' ',e.nombres,e.ap,e.am) as estudiante, 
                            e.fec_nac, e.ci, e.genero, e.direccion, e.tel_cel,
                            cu.nom_cur, cl.nombre AS nombre_clase, 
                            c.calificacion, c.fec_cal           
                    FROM estudiantes e
                    INNER JOIN calificaciones c ON c.id_estudiante=e.id_estudiante
                    INNER JOIN cursos cu ON c.id_curso = cu.id_curso
                    INNER JOIN clases cl ON c.id_clase = cl.id_clase
                    WHERE e.estado='A'
                    AND cu.estado='A'
                    AND cl.estado='A'
                    AND c.estado = 'A'
                    ORDER BY c.id_estudiante;

/*SELECT * FROM vista_estu_cur_cla_cali*/

-- Vista personas por fecha de inserción
CREATE VIEW vista_per_fech AS
SELECT CONCAT_WS(' ',nombres, ap, am) AS persona, fec_insercion
FROM personas 
WHERE  estado = 'A';

/*SELECT * FROM   vista_per_fech;*/

-- viata personas por fecha de insercion 
/*CREATE VIEW vista_per_fech AS
SELECT CONCAT_WS(' ',nombres, ap, am) AS persona, fec_insercion
FROM personas
WHERE estado <> 'X';*/

/*SELECT * FROM   vista_per_fech;*/

ALTER TABLE personas ADD genero CHAR(1);

-- tabla contador_visitas en la base de datos
CREATE TABLE contador_visitas (
    id INT PRIMARY KEY,
    visitas INT
);

-- Inserta un registro inicial
INSERT INTO contador_visitas (id, visitas) VALUES (1, 0);

