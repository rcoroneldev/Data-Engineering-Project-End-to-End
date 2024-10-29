
-- 1.  Create database 
CREATE DATABASE hireemployee;
GO

-- 2.  Create user and passaword

ALTER LOGIN sa ENABLE;
ALTER LOGIN sa WITH PASSWORD = 'Pa$$wordapi12';

-- 3.  Create specific user for your application

CREATE LOGIN rcoronelhire WITH PASSWORD = 'Pa$$word1707%';
GO

USE hireemployee;
CREATE USER rcoronelhire FOR LOGIN rcoronelhire;
GO

EXEC sp_addrolemember 'db_owner', 'rcoronelhire';
GO