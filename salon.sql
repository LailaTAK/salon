camper: /project$ psql --username=freecodecamp --dbname=postgres
psql (12.17 (Ubuntu 12.17-1.pgdg22.04+1))
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
Type "help" for help.

postgres=> create database salon;
CREATE DATABASE
postgres=> \c salon;
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
You are now connected to database "salon" as user "freecodecamp".
salon=> CREATE TABLE customers (
salon(>   customer_id SERIAL PRIMARY KEY,
salon(>   phone VARCHAR(20) UNIQUE NOT NULL,
salon(>   name VARCHAR(50) NOT NULL
salon(> );
CREATE TABLE
salon=> CREATE TABLE services (
salon(>   service_id SERIAL PRIMARY KEY,
salon(>   name VARCHAR(50) NOT NULL
salon(> );
CREATE TABLE
salon=> CREATE TABLE appointments (
salon(>   appointment_id SERIAL PRIMARY KEY,
salon(>   customer_id INT NOT NULL REFERENCES customers(customer_id),
salon(>   service_id INT NOT NULL REFERENCES services(service_id),
salon(>   time VARCHAR(50) NOT NULL
salon(> );
CREATE TABLE
salon=> INSERT INTO services (name) VALUES ('cut'), ('color'), ('perm');
INSERT 0 3
