-- Create the database (if not created by the Dockerfile's ENV)
CREATE DATABASE IF NOT EXISTS role_engine_db;

-- Use the new database
USE role_engine_db;

-- Create tables
CREATE TABLE IF NOT EXISTS usuarios (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  correo VARCHAR(100) NOT NULL UNIQUE,
  contrasena_hash VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS partidas (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  master_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (id_master) REFERENCES usuario(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS personajes (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  nivel INT DEFAULT 1,
  raza VARCHAR(50),
  clase VARCHAR(50),
  partida_id INT,
  usuario_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (partida_id) REFERENCES partidas(id) ON DELETE CASCADE,
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS atributos (
  id INT NOT NULL AUTO_INCREMENT,
  personaje_id INT,
  fuerza INT DEFAULT 5,
  destreza INT DEFAULT 5,
  agilidad INT DEFAULT 5,
  constitucion INT DEFAULT 5,
  inteligencia INT DEFAULT 5,
  percepcion INT DEFAULT 5,
  voluntad INT DEFAULT 5,
  poder INT DEFAULT 5,
  PRIMARY KEY (id),
  FOREIGN KEY (personaje_id) REFERENCES personajes(id) ON DELETE CASCADE
);
