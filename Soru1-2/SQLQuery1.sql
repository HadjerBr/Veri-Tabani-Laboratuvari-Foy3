CREATE DATABASE company
ON PRIMARY (
    NAME = company_data,
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\.mdf',
    SIZE = 8MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 10%
)
LOG ON (
    NAME = company_log,
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\companylog.ldf',
    SIZE = 8MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 10%
);
