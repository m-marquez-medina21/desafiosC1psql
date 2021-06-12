
DROP DATABASE post;

CREATE DATABASE post; 
\c post 
 CREATE TABLE post(
id SERIAL,
nombre_de_usuario VARCHAR(25),
fecha_de_creacion DATE,
contenido VARCHAR(255),
descripcion VARCHAR(255),
PRIMARY KEY (id));
 
INSERT INTO post (nombre_de_usuario,fecha_de_creacion,contenido,descripcion) VALUES ('Pamela','2021-06-08','programadora', 'le gusta programar en RoR');
INSERT INTO post (nombre_de_usuario,fecha_de_creacion,contenido,descripcion) VALUES ('Pamela','2021-06-08','lectora', 'le gusta leer Harrypotter');
INSERT INTO post (nombre_de_usuario,fecha_de_creacion,contenido,descripcion) VALUES ('Carlos','2021-06-08','deportista','le gusta jugar a la pelota');

ALTER TABLE post ADD titulo VARCHAR(25);

UPDATE post SET titulo='titulo1' WHERE id=1;
UPDATE post SET titulo='titulo2' WHERE id=2;
UPDATE post SET titulo='titulo3' WHERE id=3;

INSERT INTO post (nombre_de_usuario,fecha_de_creacion,contenido,descripcion, titulo) 
VALUES ('Pedro','2021-06-08','deportista','le gusta jugar con un balón','titulo4');
INSERT INTO post (nombre_de_usuario,fecha_de_creacion,contenido,descripcion, titulo) VALUES ('Pedro','2021-06-08','tomador','le gusta tomar chela','titulo5');

DELETE FROM post WHERE nombre_de_usuario = 'Carlos';

INSERT INTO post (nombre_de_usuario,fecha_de_creacion,contenido,descripcion,titulo) VALUES ('Carlos2','2021-06-08','deportista2','le gusta jugar a la pelota2','titulo6');

--punto 2

CREATE TABLE comentarios(
    id SERIAL,
    post_id INT,
    fecha DATE,
    hora TIME,
    contenido VARCHAR,
    PRIMARY KEY(id),
    FOREIGN KEY (post_id) REFERENCES post(id)
);

INSERT INTO comentarios(post_id, fecha, hora, contenido)
VALUE(1, current_data, currente_item, 'comentario 1');

INSERT INTO comentarios(post_id, fecha, hora, contenido) 
VALUE(2, current_data, currente_item, 'comentario 2');

INSERT INTO comentarios(post_id, fecha, hora, contenido) 
VALUE(6, current_data, currente_item, 'comentario 6');

INSERT INTO post (nombre_de_usuario,fecha_de_creacion,contenido,descripcion,titulo) VALUES ('Margarita',current_data,'deportista2','le gusta jugar a la pelota2','titulo6');

INSERT INTO comentarios(post_id, fecha, hora, contenido) VALUE(7, current_data, currente_item, 'comentario 7');