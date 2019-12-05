﻿CREATE TABLE users (
	id serial PRIMARY KEY,
	name VARCHAR(100),
	email text UNIQUE NOT NULL,
	phone VARCHAR(100) NOT NULL,
	joined TIMESTAMP NOT NULL
);
drop table users;
ALTER TABLE "users" OWNER TO myuser;
ALTER TABLE "users" OWNER TO postgres;

CREATE TABLE login (
	id serial PRIMARY KEY,
	hash varchar(100) NOT NULL,
	email text UNIQUE NOT NULL
);

CREATE TABLE products (
	id serial PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	price int,
	img VARCHAR(100) NOT NULL,
	description VARCHAR(1000),
	category int,
	supplier VARCHAR(100),
	check(price >=0)	
);
--bang khac khong tao rang buoc
CREATE TABLE products (
	id serial PRIMARY KEY,
	name VARCHAR(100),
	price int,
	img VARCHAR(100),
	description VARCHAR(1000)
);

ALTER TABLE "products" OWNER TO myuser;

INSERT INTO products(name, price, img, description, category, supplier)
VALUES('digital camera',300, 'themes/images/products/1.jpg','day chi la mo ta demo thoi',1,'USA')

INSERT INTO products(name, price, img, description, category, supplier)
VALUES('Red digital camera',300, 'themes/images/products/2.jpg','day chi la mo ta demo thoi',1,'SONY')

INSERT INTO products(name, price, img, description, category, supplier)
VALUES('Big digital camera',350, 'themes/images/products/4.jpg','hahahahahahaha',2,'Made in VietNam')

INSERT INTO products(name, price, img, description, category, supplier)
VALUES('SD card',150, 'themes/images/products/6.jpg','helehehehehe',2,'VDN')

INSERT INTO products(name, price, img, description, category, supplier)
VALUES('USB',220, 'themes/images/products/7.jpg','ppppppppppp',1,'China')

INSERT INTO products(name, price, img, description, category, supplier)
VALUES('boot',170, 'themes/images/products/b1.jpg','lalalalalalal',2,'Adidas')

INSERT INTO products(name, price, img, description, category, supplier)
VALUES('panasonic camera',750, 'themes/images/products/13.jpg','Made in Japan || Design by Panasonic',1,'Panasonic')

INSERT INTO products(name, price, img, description, category, supplier)
VALUES('Ipad',840, 'themes/images/products/kindle.png','vnvnvnvnvnvnnvvn',2,'Kindle')

DROP TABLE products 

--UPDATE products
--SET "img" = 'themes/images/products/kindle.png'
--WHERE "name"='Ipad'
--UPDATE products
--SET "img" = 'themes/images/products/13.jpg'
--WHERE "name"='panasonic camera'

CREATE TABLE carousels (
	id serial PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	img VARCHAR(100) NOT NULL
);
drop table carousels;
ALTER TABLE "carousels" OWNER TO myuser;

INSERT INTO carousels(name,img)
VALUES('anh 1','themes/images/carousel/1.png')

INSERT INTO carousels(name, img)
VALUES('carousels thu 2','themes/images/carousel/2.png')

INSERT INTO carousels(name, img)
VALUES('Cai 3','themes/images/carousel/3.png')

INSERT INTO carousels(name, img)
VALUES('Anh thu 4','themes/images/carousel/4.png')

INSERT INTO carousels(name, img)
VALUES('Cai thu 6','themes/images/carousel/5.png')

INSERT INTO carousels(name, img)
VALUES('Cai Anh thu 7 kakkaak','themes/images/carousel/6.png')

INSERT INTO carousels(name, img)
VALUES('Anh 3','assets/img/slider/3.jpg')

CREATE TABLE cartsessions (
	id serial PRIMARY KEY,
	sessionId VARCHAR(100),
	productId int,
	name VARCHAR(100),
	price int,
	img VARCHAR(100),
	description VARCHAR(1000),
	quantity int
);

ALTER TABLE "cartsessions" OWNER TO myuser;

CREATE TABLE sessions (
	id serial PRIMARY KEY,
	sessionId VARCHAR(100)
);

ALTER TABLE "sessions" OWNER TO myuser;

DROP TABLE sessions;

DELETE from cartsessions
where description LIKE '%i%'

CREATE TABLE orders (
	id serial PRIMARY KEY,
	name VARCHAR(30),
	phone VARCHAR(20),
	email VARCHAR(30),
	address VARCHAR(100),
	city INT,
	addinfor VARCHAR(100),
	dateOrder timestamp,
	totalprice INT,
	status INT DEFAULT 0
);
ALTER TABLE "orders" OWNER TO myuser;
drop table orders;

DELETE from orders
where email LIKE '%m%'
DELETE from orders
where totalprice = 3210

CREATE TABLE admin (
	id serial PRIMARY KEY,
	hash varchar(100) NOT NULL,
	email text UNIQUE NOT NULL
);
ALTER TABLE "admin" OWNER TO myuser;
INSERT INTO admin(hash, email)
VALUES('"$2a$10$awhsUxT3SU.b7wBLT5DKQuh3o2LMti/g/rLNFeG2vC1nomsOxjXpW"','nguyenvd@gmail.com')

CREATE TABLE orderdetail (
	id serial PRIMARY KEY,
	orderId int,
	productId int,
	name VARCHAR(100),
	price int,
	img VARCHAR(100),
	description VARCHAR(1000),
	quantity int
);

ALTER TABLE "orderdetail" OWNER TO myuser;
drop table orderdetail;