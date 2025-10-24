CREATE SCHEMA academics 

CREATE TABLE academics.studentss(
    id int IDENTITY (1,1) PRIMARY KEY
    , firstname NVARCHAR(100) NOT NULL
    , lastname NVARCHAR(100) NOT NULL
    , idperson NVARCHAR(100) NOT NULL UNIQUE
    , email NVARCHAR(100) NOT NULL UNIQUE
)
SELECT * from academics.studentss


---jemplo de insercion exitosa
INSERT into academics.studentss (
    firstname
    , lastname
    ,idperson
    ,email
) VALUES (
    ' Jasmin'
    , 'Zelaya'
    , '0801'
    , 'jaszzz@gmil.com'

)


INSERT into academics.studentss (
    firstname
    , lastname
    ,idperson
    ,email
    ,age
) VALUES (
    ' Gabriela'
    , 'Garcia'
    , '0815'
    , 'gaby@gmil.com'
    , 18

)
---modificar la estructura de la tabla agregando una nueva columna
ALTER TABLE academics.studentss ADD age int null


SELECT * from academics.studentss

---ejemplo de actualizacion exitosa 
UPDATE academics.studentss
SET firstname = 'Patri', lastname = 'Blandin' , email = 'patri@gamil.com', idperson = '0800'
WHERE id = 2

---ejemplo para actualizar todos los registros
UPDATE academics.studentss
SET age  = 20

---actualizar el 'age' es 20,  donde el lastname es = zelaya
UPDATE academics.studentss 
set age = 30 
WHERE lastname ='Zelaya'

---ejemplo para eliminar un registro con id = 3
DELETE FROM academics.studentss
where id =3

---seleccionar a todas los estudiantes menores de 20 años

SELECT
id 
, lastname
, email
, age
FROM academics.studentss
WHERE age < 21
