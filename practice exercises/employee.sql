CREATE DATABASE production;
GO

USE production;
GO 

CREATE SCHEMA employee;
go 

CREATE TABLE production.employee
(
    EMP_ID      INT PRIMARY KEY,
    EMP_NAME    VARCHAR(50) NOT NULL,
    DEPT_NAME   VARCHAR(50) NOT NULL,
    SALARY      INT
);