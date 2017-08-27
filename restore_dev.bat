@echo off
set database=payroll
set dropAndCreate="DROP DATABASE IF EXISTS %database%; CREATE DATABASE %database%;"

echo %dropAndCreate%
mysql -u dev -e %dropAndCreate%

echo Restoring %database%
mysql -u dev %database% < dev.backup.sql