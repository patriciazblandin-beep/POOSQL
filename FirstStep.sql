CREATE SCHEMA academics 

CREATE TABLE academics.studentss(
    id int IDENTITY (1,1) PRIMARY KEY
    , firstname NVARCHAR(100) NOT NULL
    , lastname NVARCHAR(100) NOT NULL
    , idperson NVARCHAR(100) NOT NULL UNIQUE
    , email NVARCHAR(100) NOT NULL UNIQUE
)
SELECT * from academics.studentss

INSERT into academics.studentss (
    firstname
    , lastname
    ,idperson
    ,email
) VALUES (
    ' Jasmin'
    , 'Zelaya'
    , '0800'
    , 'jaszzz@gmil.com'

)