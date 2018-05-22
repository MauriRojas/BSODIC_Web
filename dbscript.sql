CREATE DATABASE IF NOT EXISTS BSODIC;

CREATE TABLE users(
  idUser INT NOT NULL,
  pass VARCHAR(50) NOT NULL,
  name VARCHAR(100) NOT NULL,
  mail VARCHAR(100) NOT NULL,
  phone VARCHAR(14),
  balance DECIMAL(13,4),
  lastLogin DATE,
  PRIMARY KEY (idUser)
);

CREATE TABLE customer(
  idCustomer INT NOT NULL,
  idUser INT, -- It can be NULL for retro-compability reasons.
  name VARCHAR(100),
  address VARCHAR(200),
  birthday DATE,
  mail VARCHAR(100),
  phone VARCHAR(14),
  additionalInfo varchar(500),
  imageURL VARCHAR(500),
  PRIMARY KEY (idCustomer),
  FOREIGN KEY (idUser) REFERENCES users(idUser)
);

CREATE TABLE deviceType (
  idDeviceType INT NOT NULL,
  description VARCHAR(100),
  PRIMARY KEY (idDeviceType)
);

CREATE TABLE device(
  idDevice INT NOT NULL,
  idUser INT, -- It can be NULL for retro-compability reasons.
  idDeviceType INT NOT NULL,
  processor VARCHAR(100),
  mainStorage VARCHAR(100),
  description VARCHAR(500),
  displayCode VARCHAR(100),
  mainMemory VARCHAR(100),
  imageURL VARCHAR(500),
  name VARCHAR(200),
  PRIMARY KEY (idDevice),
  FOREIGN KEY (idUser) REFERENCES users(idUser),
  FOREIGN KEY (idDeviceType) REFERENCES deviceType(idDeviceType)
);

CREATE TABLE owns(
  idCustomer INT NOT NULL,
  idDevice INT NOT NULL,
  comment VARCHAR(200),
  FOREIGN KEY (idCustomer) REFERENCES customer(idCustomer),
  FOREIGN KEY (idDevice) REFERENCES device(idDevice)
);

CREATE TABLE jobType(
  idJobType INT NOT NULL,
  description VARCHAR(200),
  PRIMARY KEY (idJobType)
);

CREATE TABLE billed(
  idBilled INT NOT NULL,
  description VARCHAR(50),
  PRIMARY KEY (idBilled)
);

CREATE TABLE job(
  idJob INT NOT NULL,
  idCustomer INT NOT NULL,
  idDevice INT NOT NULL,
  idBilled INT NOT NULL,
  idJobType INT NOT NULL,
  idUser INT,
  description VARCHAR(1000),
  startDate DATE,
  finishDate DATE,
  budget DECIMAL(13,4),
  PRIMARY KEY (idJob),
  FOREIGN KEY (idCustomer) REFERENCES customer(idCustomer),
  FOREIGN KEY (idDevice) REFERENCES device(idDevice),
  FOREIGN KEY (idBilled) REFERENCES billed(idBilled),
  FOREIGN KEY (idJobType) REFERENCES jobType(idJobType),
  FOREIGN KEY (idUser) REFERENCES users(idUser)
);

INSERT INTO billed (description) VALUES ('No facturado');
INSERT into billed (description) VALUES ('Facturado');

INSERT INTO deviceType (description) VALUES ('Celular');
INSERT INTO deviceType (description) VALUES ('Notebook');
INSERT INTO deviceType (description) VALUES ('PC de escritorio');
INSERT INTO deviceType (description) VALUES ('Tablet');
INSERT INTO deviceType (description) VALUES ('All In One');

INSERT INTO jobType (description) VALUES ('Visita');
INSERT INTO jobType (description) VALUES ('Formateo');
INSERT INTO jobType (description) VALUES ('Problema puntual');
INSERT INTO jobType (description) VALUES ('Otro - varios');
INSERT INTO jobType (description) VALUES ('Cambio de touch');
INSERT INTO jobType (description) VALUES ('Cambio de display');
INSERT INTO jobType (description) VALUES ('Cambio de módulo');
INSERT INTO jobType (description) VALUES ('Venta');
INSERT INTO jobType (description) VALUES ('Mantenimiento');
