CREATE TABLE users (
	id serial PRIMARY KEY,
	name VARCHAR(100),
	email text UNIQUE NOT NULL,
	phone VARCHAR(100) NOT NULL,
	joined TIMESTAMP NOT NULL
);
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
VALUES('quần kaki công sở màu sữa ',480, 'themes/images/products/quần kaki công sở màu sữa.jpg','màu sữa',2,'No Brand');
INSERT INTO products(name, price, img, description, category, supplier)
VALUES('quần kaki dài nam co dãn',350, 'themes/images/products/quần kaki dài nam co dãn.jpg','màu xám',2,'MAY');
INSERT INTO products(name, price, img, description, category, supplier)
VALUES('quần kaki dài trung niên',380, 'themes/images/products/quần kaki dài trung niên.jpg','màu xám',2,'KOREA');
INSERT INTO products(name, price, img, description, category, supplier)
VALUES('áo giữ nhiệt nam chất thun',300, 'themes/images/products/áo giữ nhiệt nam chất thun.jpg','màu đen',1,'vua thời trang');
INSERT INTO products(name, price, img, description, category, supplier)
VALUES('áo hoodie không mũ Hàn Quốc',325, 'themes/images/products/áo hoodi không mũ hàn quốc.jpg','màu nâu',1,'No Brand');
INSERT INTO products(name, price, img, description, category, supplier)
VALUES('áo hoodie nam AlanWaker',475, 'themes/images/products/áo hoodie nam AlanWaker.jpg','màu đen',1,'No Brand');
INSERT INTO products(name, price, img, description, category, supplier)
VALUES('áo hoodie nam hình pikachu',220, 'themes/images/products/áo hoodie nam hình pikachu.jpg','màu đen vàng',1,'BÒ SỮA');
INSERT INTO products(name, price, img, description, category, supplier)
VALUES('áo khoác dù nam cao cấp',450, 'themes/images/products/áo khoác dù nam cao cấp.jpg','nhiều màu, ghi chú chọn màu khi đặt hàng',1,'MAY');
INSERT INTO products(name, price, img, description, category, supplier)
VALUES('áo khoác dù thời trang nam cao cấp',320, 'themes/images/products/áo khoác dù thời trang nam cao cấp.jpg','màu đen',1,'MC');
INSERT INTO products(name, price, img, description, category, supplier)
VALUES('áo khoác jean nam trơn màu đen',400, 'themes/images/products/áo khoác jean nam trơn màu đen.jpg','màu đen',1,'MAY');
INSERT INTO products(name, price, img, description, category, supplier)
VALUES('áo len cổ lọ nam màu xám cao cấp',200, 'themes/images/products/áo len cổ lọ nam màu xám cao cấp.jpg','màu xám ',1,'MAY');




CREATE TABLE carousels (
	id serial PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	img VARCHAR(100) NOT NULL
);
ALTER TABLE "carousels" OWNER TO postgres;


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

ALTER TABLE "cartsessions" OWNER TO postgres;

CREATE TABLE sessions (
	id serial PRIMARY KEY,
	sessionId VARCHAR(100)
);

ALTER TABLE "sessions" OWNER TO postgres;



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
ALTER TABLE "orders" OWNER TO postgres;


CREATE TABLE admin (
	id serial PRIMARY KEY,
	hash varchar(100) NOT NULL,
	email text UNIQUE NOT NULL
);
ALTER TABLE "admin" OWNER TO postgres;

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

ALTER TABLE "orderdetail" OWNER TO postgres;
