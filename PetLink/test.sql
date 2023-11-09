-- H2 2.2.224;
;             
CREATE USER IF NOT EXISTS "SA" SALT 'e9bbca3338387476' HASH 'fe96d7b28704b3606e6ab5a413de2a1bff335abd71a75014526d217df791d91a' ADMIN;
CREATE TABLE USERS (
                       ID INT AUTO_INCREMENT PRIMARY KEY,
                       USERNAME VARCHAR(255),
                       PASSWORD VARCHAR(255),
                       EMAIL VARCHAR(255),
                       CPF VARCHAR(255),
                       AGE VARCHAR(255),
                       ADDRESS VARCHAR(255),
                       CEP VARCHAR(255)

);

CREATE TABLE PET (
                     ID INT AUTO_INCREMENT PRIMARY KEY,
                     NAME VARCHAR(255),
                     TYPE VARCHAR(255),
                     BREED VARCHAR(255),
                     SIZE VARCHAR(255),
                     GENDER VARCHAR(255),
                     AGE VARCHAR(255),
                     DESCRIPTION VARCHAR(255),
                     IMAGE VARCHAR(255)


);

CREATE TABLE ONG (
                     ID INT AUTO_INCREMENT PRIMARY KEY,
                     NAME VARCHAR(255),
                     CNAE VARCHAR(255),
                     EMAIL VARCHAR(255),
                     PHONE VARCHAR(255),
                     PASSWORD VARCHAR(255),
                     ADDRESS VARCHAR(255),
                     CEP VARCHAR(255)

);