--CREACIÓN DE BASE DATOS
CREATE DATABASE IF NOT EXISTS belleza;
SET NAMES utf8mb4;
USE belleza;

--ELIMINACIÓN DE TABLAS
DROP TABLE IF EXISTS DetalleCitas;
DROP TABLE IF EXISTS Citas;
DROP TABLE IF EXISTS Servicios;
DROP TABLE IF EXISTS Clientes;
DROP TABLE IF EXISTS Empleados;

--CREACIÓN DE TABLAS
CREATE TABLE IF NOT EXISTS Empleados( 
    Id_Empleado INT AUTO_INCREMENT NOT NULL,
    Nombre VARCHAR(100) NOT NULL,
    CorreoElectronico VARCHAR(255) NOT NULL,
    Telefono VARCHAR(9) NOT NULL,
    Especialidad VARCHAR(100) NOT NULL,
    PRIMARY KEY (Id_Empleado),
    UNIQUE KEY telefono_UNIQUE (Telefono),
    UNIQUE KEY correo_UNIQUE (CorreoElectronico)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE IF NOT EXISTS Clientes( 
    Id_Cliente INT AUTO_INCREMENT NOT NULL,
    Nombre VARCHAR(100) NOT NULL,
    CorreoElectronico VARCHAR(255) NOT NULL,
    Telefono VARCHAR(9) NOT NULL,
    FechaNacimiento DATE DEFAULT NULL,
    Contraseña VARCHAR(255) NOT NULL,
    PRIMARY KEY (Id_Cliente),
    UNIQUE KEY telefono_UNIQUE (Telefono),
    UNIQUE KEY correo_UNIQUE (CorreoElectronico)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE IF NOT EXISTS Servicios( 
    Id_Servicio INT AUTO_INCREMENT NOT NULL,
    Nombre VARCHAR(100) NOT NULL,
    Precio DECIMAL(10, 2) NOT NULL,
    Duracion INT NOT NULL, 
    PRIMARY KEY (Id_Servicio)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE IF NOT EXISTS Citas( 
    Id_Cita INT AUTO_INCREMENT NOT NULL,
    Dia DATE NOT NULL,
    Hora TIME NOT NULL,
    Precio DECIMAL(10, 2) NOT NULL,
    Duracion INT NOT NULL,
    Id_Cliente INT NOT NULL,
    Id_Empleado INT NOT NULL,
    PRIMARY KEY (Id_Cita),
    FOREIGN KEY (Id_Cliente) REFERENCES Clientes(Id_Cliente) ON DELETE CASCADE,
    FOREIGN KEY (Id_Empleado) REFERENCES Empleados(Id_Empleado) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE IF NOT EXISTS DetalleCitas( 
    Id_Detalle INT AUTO_INCREMENT NOT NULL,
    Id_Cita INT NOT NULL,
    Id_Servicio INT NOT NULL,
    PRIMARY KEY (Id_Detalle),
    FOREIGN KEY (Id_Cita) REFERENCES Citas(Id_Cita) ON DELETE CASCADE,
    FOREIGN KEY (Id_Servicio) REFERENCES Servicios(Id_Servicio) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--INSERTS

INSERT INTO Servicios (Nombre, Precio, Duracion) VALUES 
('Corte de Caballero', 12.00, 30),
('Corte de Dama', 15.00, 40),
('Lavar y Peinar', 12.00, 20),
('Tinte de Cabello', 25.00, 60),
('Manicura', 10.00, 30),
('Pedicura', 15.00, 40),
('Depilación Facial', 8.00, 20),
('Masaje Relajante', 30.00, 60),
('Tratamiento Facial', 35.00, 50),
('Extensiones de Pestañas', 50.00, 90),
('Peinado para Eventos', 20.00, 45),
('Alisado Permanente', 60.00, 120),
('Retoque de Raíz', 18.00, 50),
('Corte Infantil', 8.00, 20),
('Baño de Color', 22.00, 40),
('Mascarilla Capilar', 10.00, 30),
('Depilación de Cejas', 5.00, 15),
('Depilación Corporal Completa', 40.00, 90),
('Maquillaje para Eventos', 35.00, 60),
('Peeling Facial', 40.00, 60),
('Tratamiento Capilar Reparador', 45.00, 75),
('Mechas Californianas', 50.00, 90),
('Uñas Acrílicas', 25.00, 70),
('Uñas Gelificadas', 20.00, 60),
('Tinte de Cejas y Pestañas', 15.00, 30),
('Peeling Corporal', 50.00, 90),
('Lifting de Pestañas', 40.00, 60),
('Botox Capilar', 55.00, 90),
('Ondulado Permanente', 50.00, 90),
('Manicura Francesa', 12.00, 40),
('Corte con Lavado y Secado', 20.00, 50),
('Terapia Capilar Anticaída', 35.00, 60),
('Tinte Fantasía', 45.00, 90),
('Balayage', 70.00, 120),
('Corrección de Color', 80.00, 150),
('Secado con Plancha', 15.00, 40),
('Peinado de Trenzas', 25.00, 50),
('Masaje Descontracturante', 40.00, 70),
('Masaje Linfático', 50.00, 80),
('Depilación de Piernas Enteras', 25.00, 45),
('Depilación de Brazos', 15.00, 30),
('Depilación Axilar', 10.00, 20),
('Manicura con Decoración', 18.00, 45),
('Pedicura Spa', 20.00, 50),
('Exfoliación Corporal', 45.00, 75),
('Masaje con Piedras Calientes', 60.00, 90),
('Reflejos', 55.00, 80),
('Tratamiento Hidratante para Cabello', 30.00, 50),
('Extensiones de Cabello', 100.00, 180),
('Uñas Esculpidas', 35.00, 90),
('Reparación de Uñas', 5.00, 15),
('Masaje de Cuello y Espalda', 25.00, 40),
('Tratamiento para Cabello Rizado', 40.00, 60),
('Peinado Infantil con Trenzas', 15.00, 30),
('Diseño de Cejas con Hilo', 12.00, 20),
('Laminado de Cejas', 25.00, 40),
('Tratamiento Anti-Frizz', 50.00, 75),
('Planchado de Cejas', 15.00, 30),
('Tratamiento Reductor Corporal', 75.00, 120),
('Masaje Anticelulítico', 60.00, 90),
('Lifting Facial sin Cirugía', 120.00, 180),
('Extensiones de Uñas con Gel', 30.00, 70),
('Pedicura con Hidratación', 18.00, 45),
('Tinte con Baño de Brillo', 35.00, 60),
('Lavado Profundo del Cabello', 20.00, 30),
('Blanqueamiento de Piel', 100.00, 90),
('Tratamiento Reafirmante Facial', 65.00, 75),
('Mechas Babylights', 80.00, 120),
('Tratamiento Antiedad', 90.00, 120),
('Retoque de Uñas Acrílicas', 15.00, 40),
('Peinado para Niñas con Accesorios', 12.00, 30),
('Masaje Aromaterapéutico', 45.00, 70),
('Alisado con Keratina', 85.00, 120),
('Desenredado de Cabello Largo', 25.00, 45),
('Retoque de Mechas', 50.00, 70),
('Peinado Vintage', 30.00, 50),
('Tratamiento de Reconstrucción Capilar', 75.00, 100),
('Tratamiento Detox para Cuero Cabelludo', 45.00, 60),
('Hidratación Profunda con Vapor', 35.00, 50),
('Extensiones de Trenzas Africanas', 120.00, 180),
('Diseño de Uñas Personalizadas', 40.00, 90),
('Tatuaje Temporal en Henna', 20.00, 30),
('Masaje con Ventosas', 70.00, 90),
('Depilación Integral', 60.00, 120),
('Tratamiento de Oro para la Piel', 150.00, 120),
('Tratamiento Revitalizante para Manos', 25.00, 40),
('Baño de Parafina en Pies', 20.00, 30);
