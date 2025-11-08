--DDL Scripts

-- Cars
create table cars (
	ID_CARS INT primary key,
	BRAND VARCHAR(20) not null,
	MODEL VARCHAR(50) not null,
	type VARCHAR(15) not null,
	TRANSMISSION VARCHAR(15) not null,
	year INT not null,
	ODOMETER_KM DECIMAL(20) not null,
	COLOURS VARCHAR(20) not NULL
)

-- Users
CREATE TABLE users (
    id_users INT PRIMARY KEY NOT NULL,
    name VARCHAR(200) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL,
	address VARCHAR(200) NOT NULL,
    region VARCHAR(200) NOT NULL,
    joined_date DATE NOT NULL,
	latitude float8 NOT NULL,
	longitude float8 NOT NULL
);

--Ads_Detail
CREATE TABLE ads_detail(
	id_ads_detail INT PRIMARY KEY,
	description VARCHAR(200) NOT NULL,
	address VARCHAR(200) NOT NULL,
	region VARCHAR(200) NOT NULL,
	latitude float8 NOT NULL,
	longitude float8 NOT NULL
);

--Offers 
CREATE TABLE offers (
    id_offers INT PRIMARY KEY,
    id_users INT NOT NULL,
    offer_price DECIMAL(20) NOT NULL,
   	offer_status VARCHAR(40) NOT NULL,
	offer_date DATE NOT NULL
);

--Ads
CREATE TABLE ads (
    id_ads INT PRIMARY KEY NOT NULL,
	id_ads_detail INT NOT NULL,
    id_cars INT NOT NULL,
	id_users INT NOT NULL,
	title VARCHAR(200) NOT NULL,
    is_bid BOOLEAN NOT NULL,
	id_offers INT,
    price DECIMAL(20) NOT NULL,
    created_at DATE NOT NULL
);
