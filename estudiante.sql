-- ALTER TABLE notas DROP FOREIGN KEY notas_ibfk_1;
DROP TABLE estudiantes;
-- 1. SE CREA LA ENTIDAD DE LA INFORMACION DE LOS ESTUDIANTES
CREATE TABLE estudiantes (
    id_estudiante INT PRIMARY KEY,
    nombres VARCHAR(45) NOT NULL,
    apellidos VARCHAR(45) NOT NULL,
    numero BIGINT,
    email VARCHAR(150),
    fecha_nacimiento DATE,
    genero VARCHAR(15),
    materia VARCHAR(20),
    
    nota DECIMAL(5,2)
);

-- 2. SE CREA LA ENTIDAD DE LA INFORMACION DE LAS MATERIAS
CREATE TABLE materias (
    id_materia INT PRIMARY KEY,
    nombre_materia VARCHAR(20),
    profesor VARCHAR(45)
);

-- 3. SE CREA LA ENTIDAD DE LA INFORMACION DE LAS NOTAS
CREATE TABLE notas (
    id_nota INT PRIMARY KEY,
    id_estudiante INT,
    id_materia INT,
    nota DECIMAL(5,2),
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante) ON DELETE CASCADE,
    FOREIGN KEY (id_materia) REFERENCES materias(id_materia) ON DELETE CASCADE
);

INSERT INTO estudiantes(id_estudiante, nombres, apellidos, numero, email, fecha_nacimiento, genero)
            VALUES(1, "Camila", "Sepulveda", 3136020554, "sepulveda.giraldo.camila@gmail.com", "2002-11-02", "F");

INSERT INTO materias(id_materia, nombre_materia, profesor)
            VALUES(1, "desarrollo", "robin");

INSERT INTO notas(id_nota, id_estudiante, id_materia, nota)
            VALUES(1, 1, 1, 3.5);

SELECT * FROM estudiantes;
SELECT * FROM materias;
SELECT * FROM notas;