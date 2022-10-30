create SCHEMA proyecto_final;
-- DROP DATABASE proyecto_final;--
USE proyecto_final;

CREATE TABLE Clientes (
	CLIENTE_ID INT auto_increment NOT NULL PRIMARY KEY,
	NOMBRE VARCHAR(100) NOT NULL,
	APELLIDO VARCHAR(100) NOT NULL,
	TELEFONO VARCHAR(100) NOT NULL,
    GENERO VARCHAR(100) NOT NULL,
	DIRECCION VARCHAR(200) NOT NULL,
    CIUDAD VARCHAR(100) NOT NULL,
    PAIS VARCHAR(100) NOT NULL,
	EMAIL VARCHAR(100) NOT NULL,
	INDEX idx_apellido(APELLIDO),
    INDEX idx_cliente(CLIENTE_ID)
);

CREATE TABLE Motos (
	ID_MOTO INT auto_increment NOT NULL PRIMARY KEY,
    MARCA VARCHAR(30) NOT NULL,
    MODELO VARCHAR(30) NOT NULL,
	CILINDRADA NUMERIC(4,0) NOT NULL,
	PRECIO NUMERIC (4,0) NOT NULL, 
    INDEX idx_cilindrada(CILINDRADA)
);

CREATE TABLE Cascos (
	ID_CASCO INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	MODELO VARCHAR(30) NOT NULL,
	TALLE VARCHAR(30) NOT NULL
);

CREATE TABLE Ciudades (
	ID_CIUDAD INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	CIUDAD VARCHAR(30) NOT NULL,
    PAIS VARCHAR(30) NOT NULL,
	INDEX idx_ciudad(CIUDAD)
);

CREATE TABLE Alquileres (
	ID_ALQUILER INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    CLIENTE_ID INT NOT NULL,
    ID_MOTO INT NOT NULL,
    ID_CIUDAD INT NOT NULL,
    ID_CASCO INT NOT NULL,
    PRECIO NUMERIC(8,0) NOT NULL,
    SEMANAS INT NOT NULL,
    TOTAL INT NOT NULL,
    FOREIGN KEY(CLIENTE_ID) REFERENCES Clientes(CLIENTE_ID),
    FOREIGN KEY(ID_MOTO) REFERENCES Motos(ID_MOTO) on delete cascade,
    FOREIGN KEY(ID_CIUDAD) REFERENCES Ciudades(ID_CIUDAD),
    FOREIGN KEY(ID_CASCO) REFERENCES Cascos(ID_CASCO),
	INDEX idx_alquiler(ID_ALQUILER)
);

INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`) VALUES (1,'Yamaha','xMax',300,175);
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`) VALUES (2,'Honda','PCX',125,140);
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`) VALUES (3,'Aprilia','Motard',150,155);
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`) VALUES (4,'Kawasaki','Ninja',650,400);
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`) VALUES (5,'Vespa','Primavera',125,125);
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`) VALUES (6,'Yamaha','MT-125',125,200);
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`) VALUES (7,'Honda','CB300',300,285);
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`) VALUES (8,'Husqvarna','Svartpilen',125,200);
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`) VALUES (9,'Yamaha','MT-07',700,800);
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`) VALUES (10,'Yamaha','MT-09',900,1000);
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`) VALUES (11,'Honda','CB125',125,200);
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`) VALUES (12,'Husqvarna','Svartpilen',400,285);
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`) VALUES (13,'MV Augusta','Lusso',800,900);
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`) VALUES (14,'Triumph','Tiger',1200,1500);
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`) VALUES (15,'KTM','Duke',125,200);
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`) VALUES (16,'Suzuki','V-Strom',1050,1150);
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`) VALUES (17,'Yamaha','R6',600,750);
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`) VALUES (18,'BMW','R1250R',125,1400);
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`) VALUES (19,'BMW','RnineT Scrambler',900,1100);
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`) VALUES (20,'DUCATI','Monster',800,960);
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`) VALUES (21,'Suzuki','Katana',1000,1100);

INSERT INTO `ciudades` (`ID_CIUDAD`,`CIUDAD`,`PAIS`) VALUES (1,'Buenos Aires','Argentina');
INSERT INTO `ciudades` (`ID_CIUDAD`,`CIUDAD`,`PAIS`) VALUES (2,'Cordoba','Argentina');
INSERT INTO `ciudades` (`ID_CIUDAD`,`CIUDAD`,`PAIS`) VALUES (3,'Palma de Mallorca','Espana');
INSERT INTO `ciudades` (`ID_CIUDAD`,`CIUDAD`,`PAIS`) VALUES (4,'Madrid','Espana');
INSERT INTO `ciudades` (`ID_CIUDAD`,`CIUDAD`,`PAIS`) VALUES (5,'Roma','Italia');
INSERT INTO `ciudades` (`ID_CIUDAD`,`CIUDAD`,`PAIS`) VALUES (6,'Milan','Italia');
INSERT INTO `ciudades` (`ID_CIUDAD`,`CIUDAD`,`PAIS`) VALUES (7,'Mendoza','Argentina');
INSERT INTO `ciudades` (`ID_CIUDAD`,`CIUDAD`,`PAIS`) VALUES (8,'San Pablo','Brasil');
INSERT INTO `ciudades` (`ID_CIUDAD`,`CIUDAD`,`PAIS`) VALUES (9,'Rio de Janeiro','Brasil');
INSERT INTO `ciudades` (`ID_CIUDAD`,`CIUDAD`,`PAIS`) VALUES (10,'Mar del Plata','Argentina');
INSERT INTO `ciudades` (`ID_CIUDAD`,`CIUDAD`,`PAIS`) VALUES (11,'Barcelona','Espana');
INSERT INTO `ciudades` (`ID_CIUDAD`,`CIUDAD`,`PAIS`) VALUES (12,'Londres','Reino Unido');
INSERT INTO `ciudades` (`ID_CIUDAD`,`CIUDAD`,`PAIS`) VALUES (13,'Lisboa','Portugal');
INSERT INTO `ciudades` (`ID_CIUDAD`,`CIUDAD`,`PAIS`) VALUES (14,'Montevideo','Uruguay');
INSERT INTO `ciudades` (`ID_CIUDAD`,`CIUDAD`,`PAIS`) VALUES (15,'Bogota','Colombia');

INSERT INTO `cascos` (`ID_CASCO`,`MODELO`,`TALLE`) VALUES (1,'Revatible','m');
INSERT INTO `cascos` (`ID_CASCO`,`MODELO`,`TALLE`) VALUES (2,'Cross','m');
INSERT INTO `cascos` (`ID_CASCO`,`MODELO`,`TALLE`) VALUES (3,'Old School','m');
INSERT INTO `cascos` (`ID_CASCO`,`MODELO`,`TALLE`) VALUES (4,'Clasico','m');
INSERT INTO `cascos` (`ID_CASCO`,`MODELO`,`TALLE`) VALUES (5,'Revatible','l');
INSERT INTO `cascos` (`ID_CASCO`,`MODELO`,`TALLE`) VALUES (6,'Cross','l');
INSERT INTO `cascos` (`ID_CASCO`,`MODELO`,`TALLE`) VALUES (7,'Old School','l');
INSERT INTO `cascos` (`ID_CASCO`,`MODELO`,`TALLE`) VALUES (8,'Clasico','l');
INSERT INTO `cascos` (`ID_CASCO`,`MODELO`,`TALLE`) VALUES (9,'Revatible','s');
INSERT INTO `cascos` (`ID_CASCO`,`MODELO`,`TALLE`) VALUES (10,'Cross','s');
INSERT INTO `cascos` (`ID_CASCO`,`MODELO`,`TALLE`) VALUES (11,'Old School','s');
INSERT INTO `cascos` (`ID_CASCO`,`MODELO`,`TALLE`) VALUES (12,'Clasico','s');

INSERT INTO `clientes` (`CLIENTE_ID`,`NOMBRE`,`APELLIDO`,`TELEFONO`, `GENERO`,`DIRECCION`,`CIUDAD`,`PAIS`,`EMAIL`) VALUES (1,'Julio','Rodriguez','11111111','M','Avenida Siempreviva 123','Springfield','Estados Unidos','jrodriguez@gmail.com');
INSERT INTO `clientes` (`CLIENTE_ID`,`NOMBRE`,`APELLIDO`,`TELEFONO`, `GENERO`,`DIRECCION`,`CIUDAD`,`PAIS`,`EMAIL`) VALUES (2,'Gabriela','Sanchez','22222222','F','Avenida del Libertador 3456','Martinez','Argentina','gsanchez@gmail.com');
INSERT INTO `clientes` (`CLIENTE_ID`,`NOMBRE`,`APELLIDO`,`TELEFONO`, `GENERO`,`DIRECCION`,`CIUDAD`,`PAIS`,`EMAIL`) VALUES (3,'Marco','Palermo','33333333','M','Boulevard Ballester 5998','Villa Ballester','Argentina','mpalermo@gmail.com');
INSERT INTO `clientes` (`CLIENTE_ID`,`NOMBRE`,`APELLIDO`,`TELEFONO`, `GENERO`,`DIRECCION`,`CIUDAD`,`PAIS`,`EMAIL`) VALUES (4,'Mara','Traverso','44444444','F','Boulevard Artigas 127','Punta del Este','Uruguay','mtraverso@gmail.com');
INSERT INTO `clientes` (`CLIENTE_ID`,`NOMBRE`,`APELLIDO`,`TELEFONO`, `GENERO`,`DIRECCION`,`CIUDAD`,`PAIS`,`EMAIL`) VALUES (5,'Azul','Cascone','55555555','F','Alvear 466','Villa Ballester','Argentina','acascone@gmail.com');
INSERT INTO `clientes` (`CLIENTE_ID`,`NOMBRE`,`APELLIDO`,`TELEFONO`, `GENERO`,`DIRECCION`,`CIUDAD`,`PAIS`,`EMAIL`) VALUES (6,'Felipe','Martinez','66666666','M','Las Ramblas 11','Palma de Mallorca','Espana','fmartinez@gmail.com');
INSERT INTO `clientes` (`CLIENTE_ID`,`NOMBRE`,`APELLIDO`,`TELEFONO`, `GENERO`,`DIRECCION`,`CIUDAD`,`PAIS`,`EMAIL`) VALUES (7,'Ciro','Cuatrocchi','77777777','M','San Lorenzo 8','Palma de Mallorca','Espana','ccuatrocchi@gmail.com');
INSERT INTO `clientes` (`CLIENTE_ID`,`NOMBRE`,`APELLIDO`,`TELEFONO`, `GENERO`,`DIRECCION`,`CIUDAD`,`PAIS`,`EMAIL`) VALUES (8,'Jorge','Clavijo','88888888','M','Jose Pedro Varela 18','Maldonado','Uruguay','jclavijo@gmail.com');
INSERT INTO `clientes` (`CLIENTE_ID`,`NOMBRE`,`APELLIDO`,`TELEFONO`, `GENERO`,`DIRECCION`,`CIUDAD`,`PAIS`,`EMAIL`) VALUES (9,'Ramiro','Fernandez','99999999','M','Pereyra Rozas 78','Trenque Lauquen','Argentina','rfernandez@gmail.com');
INSERT INTO `clientes` (`CLIENTE_ID`,`NOMBRE`,`APELLIDO`,`TELEFONO`, `GENERO`,`DIRECCION`,`CIUDAD`,`PAIS`,`EMAIL`) VALUES (10,'Juan Roman','Riquelme','00000010','M','Brandsen 805','La Boca','Argentina','elultimo10@gmail.com');
INSERT INTO `clientes` (`CLIENTE_ID`,`NOMBRE`,`APELLIDO`,`TELEFONO`, `GENERO`,`DIRECCION`,`CIUDAD`,`PAIS`,`EMAIL`) VALUES (11,'Gonzalo','Rodriguez','12121212','M','Jose Hernandez 147','Vicente Lopez','Argentina','grodriguez@gmail.com');
INSERT INTO `clientes` (`CLIENTE_ID`,`NOMBRE`,`APELLIDO`,`TELEFONO`, `GENERO`,`DIRECCION`,`CIUDAD`,`PAIS`,`EMAIL`) VALUES (12,'Facundo','Campazzo','13131313','M','Kingston Boulevard 1234','Dallas','Estados Unidos','fcampazzo@gmail.com');
INSERT INTO `clientes` (`CLIENTE_ID`,`NOMBRE`,`APELLIDO`,`TELEFONO`, `GENERO`,`DIRECCION`,`CIUDAD`,`PAIS`,`EMAIL`) VALUES (13,'Diego','De la Vega','14141414','M','Texana Road 123','California','Estados Unidos','elzorro@gmail.com');
INSERT INTO `clientes` (`CLIENTE_ID`,`NOMBRE`,`APELLIDO`,`TELEFONO`, `GENERO`,`DIRECCION`,`CIUDAD`,`PAIS`,`EMAIL`) VALUES (14,'Peter','Parker','15151515', 'M' ,'Fifth Avenue 12452','New York','Estados Unidos','spiderman@gmail.com');
INSERT INTO `clientes` (`CLIENTE_ID`,`NOMBRE`,`APELLIDO`,`TELEFONO`, `GENERO`,`DIRECCION`,`CIUDAD`,`PAIS`,`EMAIL`) VALUES (15,'Lucia','Moretti','16161616','F','Profesor Aguer 1298','Villa Ballester','Argentina','lmoretti@gmail.com');

INSERT INTO `alquileres` (`ID_ALQUILER`,`CLIENTE_ID`,`ID_MOTO`,`ID_CIUDAD`,`ID_CASCO`,`PRECIO`,`SEMANAS`,`TOTAL`) VALUES (1,3,1,10,1,175,3,525);
INSERT INTO `alquileres` (`ID_ALQUILER`,`CLIENTE_ID`,`ID_MOTO`,`ID_CIUDAD`,`ID_CASCO`,`PRECIO`,`SEMANAS`,`TOTAL`) VALUES (2,5,3,4,5,155,2,310);
INSERT INTO `alquileres` (`ID_ALQUILER`,`CLIENTE_ID`,`ID_MOTO`,`ID_CIUDAD`,`ID_CASCO`,`PRECIO`,`SEMANAS`,`TOTAL`) VALUES (3,7,4,5,5,400,4,1600);
INSERT INTO `alquileres` (`ID_ALQUILER`,`CLIENTE_ID`,`ID_MOTO`,`ID_CIUDAD`,`ID_CASCO`,`PRECIO`,`SEMANAS`,`TOTAL`) VALUES (4,2,5,10,7,125,4,500);
INSERT INTO `alquileres` (`ID_ALQUILER`,`CLIENTE_ID`,`ID_MOTO`,`ID_CIUDAD`,`ID_CASCO`,`PRECIO`,`SEMANAS`,`TOTAL`) VALUES (5,1,2,3,11,140,6,840);
INSERT INTO `alquileres` (`ID_ALQUILER`,`CLIENTE_ID`,`ID_MOTO`,`ID_CIUDAD`,`ID_CASCO`,`PRECIO`,`SEMANAS`,`TOTAL`) VALUES (6,8,2,3,12,140,7,980);
INSERT INTO `alquileres` (`ID_ALQUILER`,`CLIENTE_ID`,`ID_MOTO`,`ID_CIUDAD`,`ID_CASCO`,`PRECIO`,`SEMANAS`,`TOTAL`) VALUES (7,9,3,3,1,155,3,465);
INSERT INTO `alquileres` (`ID_ALQUILER`,`CLIENTE_ID`,`ID_MOTO`,`ID_CIUDAD`,`ID_CASCO`,`PRECIO`,`SEMANAS`,`TOTAL`) VALUES (8,1,1,2,6,175,1,175);
INSERT INTO `alquileres` (`ID_ALQUILER`,`CLIENTE_ID`,`ID_MOTO`,`ID_CIUDAD`,`ID_CASCO`,`PRECIO`,`SEMANAS`,`TOTAL`) VALUES (9,4,5,7,2,125,8,1000);
INSERT INTO `alquileres` (`ID_ALQUILER`,`CLIENTE_ID`,`ID_MOTO`,`ID_CIUDAD`,`ID_CASCO`,`PRECIO`,`SEMANAS`,`TOTAL`) VALUES (10,6,4,8,4,400,5,2000);
INSERT INTO `alquileres` (`ID_ALQUILER`,`CLIENTE_ID`,`ID_MOTO`,`ID_CIUDAD`,`ID_CASCO`,`PRECIO`,`SEMANAS`,`TOTAL`) VALUES (11,11,19,1,10,1100,3,3300);
INSERT INTO `alquileres` (`ID_ALQUILER`,`CLIENTE_ID`,`ID_MOTO`,`ID_CIUDAD`,`ID_CASCO`,`PRECIO`,`SEMANAS`,`TOTAL`) VALUES (12,12,18,2,7,1400,9,12600);
INSERT INTO `alquileres` (`ID_ALQUILER`,`CLIENTE_ID`,`ID_MOTO`,`ID_CIUDAD`,`ID_CASCO`,`PRECIO`,`SEMANAS`,`TOTAL`) VALUES (13,15,16,8,4,1150,2,2300);


										/*	   ----	  VISTAS  	----	*/


/* creamos una vista de alquileres segun ciudades */
create or replace view vista_ciudad as 
select alquileres.id_alquiler, clientes.nombre, clientes.apellido, alquileres.id_ciudad
from alquileres inner join clientes on alquileres.CLIENTE_ID = clientes.CLIENTE_ID order by id_ciudad;
select * from vista_ciudad;

/* creamos una lista de motos de alta cilindrada (+650cc) */
CREATE OR REPLACE VIEW vista_alta_cilindrada 
as select ID_MOTO, MARCA, MODELO, CILINDRADA 
FROM motos
where cilindrada >= '650'
ORDER BY ID_MOTO ASC;
select * from vista_alta_cilindrada;

/* creamos una vista con una tabla integral de alquileres superiores a $500 uniendo tres tablas*/
CREATE OR REPLACE VIEW vista_top_rent as
select ALQUILERES.ID_ALQUILER, CLIENTES.NOMBRE, CLIENTES.APELLIDO, MOTOS.ID_MOTO, MOTOS.MARCA, MOTOS.MODELO, MOTOS.PRECIO
FROM alquileres, clientes, motos
where ALQUILERES.ID_MOTO = MOTOS.ID_MOTO and ALQUILERES.CLIENTE_ID = CLIENTES.CLIENTE_ID and alquileres.precio > '500';
select * from vista_top_rent;


/* creamos una vista con la informacion de que vehiculo alquilan mujeres y hombres */
CREATE OR REPLACE VIEW vista_gender as
select ALQUILERES.ID_ALQUILER, CLIENTES.NOMBRE, CLIENTES.APELLIDO, CLIENTES.GENERO,MOTOS.MARCA, MOTOS.MODELO, ALQUILERES.PRECIO
from alquileres, clientes, motos
where ALQUILERES.ID_MOTO = MOTOS.ID_MOTO AND CLIENTES.CLIENTE_ID = ALQUILERES.CLIENTE_ID ORDER BY GENERO;
select * from vista_gender;

/* creacion de una vista que cuente los alquileres realizados de motos Yamaha */ 
create or replace view vista_contable as
select count(*) from motos, alquileres 
where motos.id_moto=alquileres.id_moto and motos.marca='Yamaha';
select * from vista_contable;



										/*	----	FUNCIONES	----		*/



/* CREAMOS UNA FUNCION QUE EXTRAIGA LA ID DE ALQUILER Y LA ID DE MOTO DE CADA UNO 
DE LOS ALQUILERES PARA LUEGO SUMARLE LA MARCA DE LAS MOTOS EXTRAYENDO ESA INFO DESDE OTRA TABLA */

/*select * from motos;
drop function modelo_motos;*/
DELIMITER //
CREATE FUNCTION modelo_motos(id int) returns varchar (24)
DETERMINISTIC
begin
	declare brand varchar(24);
    set brand = (select marca from proyecto_final.motos where id_moto = id);
	return brand;
end
//

select modelo_motos(3);
select id_alquiler, id_moto, modelo_motos(id_moto) from alquileres;

/* 
CREACION DE UNA FUNCION QUE REALICE LA SUMA DE LA FACTURACION DE TODOS LOS ALQUILERES DE LA TABLA
*/
DROP FUNCTION FACTURACION;
DELIMITER //
CREATE FUNCTION facturacion(id int) returns varchar (24)
DETERMINISTIC
begin
	declare total_fact varchar(24);
    set total_fact = (SELECT SUM(total) from alquileres where id = ID_MOTO);
	return total_fact ;
end
//

select facturacion(5);
select marca, modelo, facturacion(id_moto) from motos



											/*	----	STORED PROCEDURES	----		*/
                                            
                                            

/* REALIZAMOS UN SP PARA CAPTURAR EL PAIS DE ORIGEN DE CADA UNO DE LOS CLIENTES
Y AGRUPARLOS POR NACIONALIDAD */

drop procedure nacionalidad     
DELIMITER //
CREATE PROCEDURE nacionalidad()
begin
	select substring_index(PAIS, ' ', 2) Pais, count(*) Cantidad from clientes
	group by substring_index(PAIS, ' ', 2);
END
//
call nacionalidad();



/* MEDIANTE SU ID Y APLICANDO ON CASCADE EN LA FK,
 ELIMINAMOS LOS REGISTROS DE LA TABLA MOTOS 
CUYA CILINDRADA SEA MENOR O IGUAL A 150cc */ 

/*   DROP PROCEDURE out_small_bikes   */

DELIMITER //
CREATE PROCEDURE out_small_bikes (IN id NUMERIC(8,0))
BEGIN 
	IF (SELECT cilindrada FROM motos WHERE id_moto = id)<= 150 THEN
	DELETE FROM motos  WHERE ID_MOTO = ID;
	END IF;
END
//
SELECT * FROM MOTOS;
CALL out_small_bikes(5)



-- REALIZAMOS UN SP PARA ORDENAR CUALQUIERA DE LAS TABLAS QUE SE ENCUENTREN EN EL SCHEMA 
-- UTILIZANDO 3 PARAMETROS. - CAMPO, - TIPO DE ORDEN, - TABLA. 

DELIMITER //
CREATE PROCEDURE sp_ordenar_tablas( IN COL_CAMPO VARCHAR(255) , IN TIPO_ORDEN ENUM('ASC' ,'DESC',''), IN tabla VARCHAR(200) )
BEGIN

    IF COL_CAMPO != '' THEN
		SET @ordenar = CONCAT(' ORDER BY ' , COL_CAMPO);
	ELSE
		SET @ordenar = '';
	END IF;

    IF TIPO_ORDEN != '' THEN
		SET @tipo_OR = CONCAT(' ' , TIPO_ORDEN); 
	ELSE
		SET @tipo_OR = '';
	END IF;
    
    SET @clau_ORD = CONCAT('SELECT * FROM ', tabla ,@ordenar,@tipo_OR);

    PREPARE runSQL FROM @clau_ORD;
    EXECUTE runSQL;
    DEALLOCATE PREPARE runSQL;

END //
DELIMITER ;

CALL sp_ordenar_tablas('ID_casco' ,'DESC', 'ALQUILERES');





												/* TRIGGERS 


CREAMOS LA TABLA BITACORA QUE VA A ALOJAR LA INFORMACION RELACIONADA CON LOS INGRESOS 
Y ACTUALIZACIONES DE REGISTROS DE TIPO AFTER DE LA TABLA ALQUILERES

   drop table bitacora  
   truncate table bitacora  

*/
CREATE TABLE bitacora(
	id INT NOT NULL auto_increment,
	fecha datetime not null,
	hora varchar(45) not null default 0,
	usuario_id VARCHAR(45), 
	tipo_op VARCHAR(45) NOT NULL,
	PRIMARY KEY (id));

/*.      drop trigger insert_log_after;    */
CREATE TRIGGER insert_log_after
AFTER INSERT ON alquileres
FOR EACH ROW
INSERT INTO bitacora (fecha, hora, usuario_id, tipo_op)
VALUES 
(curdate(), curtime(), session_user(), 'se inserta data');

/*.     drop trigger update_log_after;    */
create trigger update_log_after
after update on alquileres
for each row
INSERT INTO bitacora (fecha, hora, usuario_id, tipo_op)
VALUES 
(curdate(), curtime(), session_user(), 'se actualiza data');


/*  CREAMOS LA TABLA bitacora_before QUE VA A ALOJAR LA INFORMACION DE ACTUALIZACIONES E INGRESOS
DE REGISTROS EN LA TABA ALQUILERES DE TIPO BEFORE*/

/*.       drop table bitacora_before;      */
CREATE TABLE bitacora_before(
	id INT NOT NULL auto_increment,
	fecha datetime not null,
	hora varchar(45) not null default 0,
	usuario_id VARCHAR(45), 
	new_bike varchar(45),
	new_client varchar(45),
	tipo_op VARCHAR(45) NOT NULL,
	PRIMARY KEY (id));

drop trigger insert_log_before;
CREATE TRIGGER insert_log_before
BEFORE INSERT ON alquileres
FOR EACH ROW
INSERT INTO bitacora_before (fecha, hora, usuario_id, tipo_op)
VALUES 
(curdate(), curtime(), session_user(), 'se inserta data');

drop trigger update_log_before;
create trigger update_log_before
BEFORE update on alquileres
for each row
INSERT INTO bitacora_before (fecha, hora, usuario_id,  tipo_op)
VALUES 
(curdate(), curtime(), session_user(), 'se actualiza data');


--         TRUNCATE TABLE ALQUILERES;      PARA CONTINUAR CON TRIGGERS.    --


INSERT INTO `alquileres` (`ID_ALQUILER`,`CLIENTE_ID`,`ID_MOTO`,`ID_CIUDAD`,`ID_CASCO`,`PRECIO`,`SEMANAS`,`TOTAL`) VALUES (1,3,1,10,1,175,3,525);
INSERT INTO `alquileres` (`ID_ALQUILER`,`CLIENTE_ID`,`ID_MOTO`,`ID_CIUDAD`,`ID_CASCO`,`PRECIO`,`SEMANAS`,`TOTAL`) VALUES (2,5,3,4,5,155,2,310);
INSERT INTO `alquileres` (`ID_ALQUILER`,`CLIENTE_ID`,`ID_MOTO`,`ID_CIUDAD`,`ID_CASCO`,`PRECIO`,`SEMANAS`,`TOTAL`) VALUES (3,7,4,5,5,400,4,1600);
INSERT INTO `alquileres` (`ID_ALQUILER`,`CLIENTE_ID`,`ID_MOTO`,`ID_CIUDAD`,`ID_CASCO`,`PRECIO`,`SEMANAS`,`TOTAL`) VALUES (4,2,5,10,7,125,4,500);
INSERT INTO `alquileres` (`ID_ALQUILER`,`CLIENTE_ID`,`ID_MOTO`,`ID_CIUDAD`,`ID_CASCO`,`PRECIO`,`SEMANAS`,`TOTAL`) VALUES (5,1,2,3,11,140,6,840);
INSERT INTO `alquileres` (`ID_ALQUILER`,`CLIENTE_ID`,`ID_MOTO`,`ID_CIUDAD`,`ID_CASCO`,`PRECIO`,`SEMANAS`,`TOTAL`) VALUES (6,8,2,3,12,140,7,980);
INSERT INTO `alquileres` (`ID_ALQUILER`,`CLIENTE_ID`,`ID_MOTO`,`ID_CIUDAD`,`ID_CASCO`,`PRECIO`,`SEMANAS`,`TOTAL`) VALUES (7,9,3,3,1,155,3,465);
INSERT INTO `alquileres` (`ID_ALQUILER`,`CLIENTE_ID`,`ID_MOTO`,`ID_CIUDAD`,`ID_CASCO`,`PRECIO`,`SEMANAS`,`TOTAL`) VALUES (8,1,1,2,6,175,1,175);
INSERT INTO `alquileres` (`ID_ALQUILER`,`CLIENTE_ID`,`ID_MOTO`,`ID_CIUDAD`,`ID_CASCO`,`PRECIO`,`SEMANAS`,`TOTAL`) VALUES (9,4,5,7,2,125,8,1000);
INSERT INTO `alquileres` (`ID_ALQUILER`,`CLIENTE_ID`,`ID_MOTO`,`ID_CIUDAD`,`ID_CASCO`,`PRECIO`,`SEMANAS`,`TOTAL`) VALUES (10,6,4,8,4,400,5,2000);
INSERT INTO `alquileres` (`ID_ALQUILER`,`CLIENTE_ID`,`ID_MOTO`,`ID_CIUDAD`,`ID_CASCO`,`PRECIO`,`SEMANAS`,`TOTAL`) VALUES (11,11,19,1,10,1100,3,3300);
INSERT INTO `alquileres` (`ID_ALQUILER`,`CLIENTE_ID`,`ID_MOTO`,`ID_CIUDAD`,`ID_CASCO`,`PRECIO`,`SEMANAS`,`TOTAL`) VALUES (12,12,18,2,7,1400,9,12600);
INSERT INTO `alquileres` (`ID_ALQUILER`,`CLIENTE_ID`,`ID_MOTO`,`ID_CIUDAD`,`ID_CASCO`,`PRECIO`,`SEMANAS`,`TOTAL`) VALUES (13,15,16,8,4,1150,2,2300);

/*
truncate table alquileres;
select * from alquileres;
select * from bitacora;
truncate table bitacora;
select * from bitacora_before;
truncate table bitacora_before;
*/

/* 	  CREACION DE LAS TABLAS bitacora_motos y bitacora_before_motos QUE ALMACENARAN LA INFORMACION
		RELATIVA A ELIMINACIONES Y ACTUALIZACIONES DE REGISTROS EN LA TABLA MOTOS	*/

/*.       drop table bitacora_motos;      */

CREATE TABLE bitacora_motos(
id INT NOT NULL auto_increment,
fecha datetime not null,
hora varchar(45) not null default 0,
usuario_id VARCHAR(45), 
tipo_op VARCHAR(45) NOT NULL,
PRIMARY KEY (id));

/* DROP TRIGGER update_motos; */
create trigger update_motos
AFTER delete on motos
for each row
INSERT INTO bitacora_motos (fecha, hora, usuario_id, tipo_op)
VALUES 
(curdate(), curtime(), session_user(), 'se elimino un registro');

/*		drop trigger insert_motos;		*/
CREATE TRIGGER insert_motos
AFTER INSERT ON motos
FOR EACH ROW
INSERT INTO bitacora_motos (fecha, hora, usuario_id, tipo_op)
VALUES 
(curdate(), curtime(), session_user(), 'se inserto un nuevo registro');

/*.       drop table bitacora_before_motos;      */
CREATE TABLE bitacora_before_motos(
id INT NOT NULL auto_increment,
fecha datetime not null,
hora varchar(45) not null default 0,
usuario_id VARCHAR(45), 
tipo_op VARCHAR(45) NOT NULL,
PRIMARY KEY (id));

/*		drop trigger update_log_before;  	*/

create trigger update_before_motos
BEFORE delete on motos
for each row
INSERT INTO bitacora_before_motos (fecha, hora, usuario_id, tipo_op)
VALUES 
(curdate(), curtime(), session_user(), 'se elimino un registro');

/*		drop trigger insert_before_motos;		*/
CREATE TRIGGER insert_before_motos
BEFORE INSERT ON motos
FOR EACH ROW
INSERT INTO bitacora_before_motos (fecha, hora, usuario_id, tipo_op)
VALUES 
(curdate(), curtime(), session_user(), 'se inserto un nuevo registro');

INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`,`OBSERVACIONES`) VALUES (1,'Yamaha','xMax',300,175,'');
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`,`OBSERVACIONES`) VALUES (2,'Honda','PCX',125,140,'');
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`,`OBSERVACIONES`) VALUES (3,'Aprilia','Motard',150,155,'');
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`,`OBSERVACIONES`) VALUES (4,'Kawasaki','Ninja',650,400,'');
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`,`OBSERVACIONES`) VALUES (5,'Vespa','Primavera',125,125,'');
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`,`OBSERVACIONES`) VALUES (6,'Yamaha','MT-125',125,200,'');
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`,`OBSERVACIONES`) VALUES (7,'Honda','CB300',300,285,'');
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`,`OBSERVACIONES`) VALUES (8,'Husqvarna','Svartpilen',125,200,'');
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`,`OBSERVACIONES`) VALUES (9,'Yamaha','MT-07',700,800,'');
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`,`OBSERVACIONES`) VALUES (10,'Yamaha','MT-09',900,1000,'');
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`,`OBSERVACIONES`) VALUES (11,'Honda','CB125',125,200,'');
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`,`OBSERVACIONES`) VALUES (12,'Husqvarna','Svartpilen',400,285,'');
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`,`OBSERVACIONES`) VALUES (13,'MV Augusta','Lusso',800,900,'');
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`,`OBSERVACIONES`) VALUES (14,'Triumph','Tiger',1200,1500,'');
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`,`OBSERVACIONES`) VALUES (15,'KTM','Duke',125,200,'');
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`,`OBSERVACIONES`) VALUES (16,'Suzuki','V-Strom',1050,1150,'');
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`,`OBSERVACIONES`) VALUES (17,'Yamaha','R6',600,750,'');
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`,`OBSERVACIONES`) VALUES (18,'BMW','R1250R',125,1400,'');
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`,`OBSERVACIONES`) VALUES (19,'BMW','RnineT Scrambler',900,1100,'');
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`,`OBSERVACIONES`) VALUES (20,'DUCATI','Monster',800,960,'');
INSERT INTO `motos` (`ID_MOTO`,`MARCA`,`MODELO`,`CILINDRADA`,`PRECIO`,`OBSERVACIONES`) VALUES (21,'Suzuki','Katana',1000,1100,'');
DELETE FROM `motos` WHERE ID_MOTO=1;
DELETE FROM `motos` WHERE ID_MOTO=2;
DELETE FROM `motos` WHERE ID_MOTO=3;
DELETE FROM `motos` WHERE ID_MOTO=4;
DELETE FROM `motos` WHERE ID_MOTO=5;
DELETE FROM `motos` WHERE ID_MOTO=6;

/*
select * from motos;
truncate table motos;
select * from bitacora_before_motos;
truncate table bitacora_before_motos;
select * from bitacora_motos;
truncate table bitacora_motos;*/
