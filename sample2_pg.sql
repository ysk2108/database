\c sample
DROP TABLE IF EXISTS item;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS ordered;
DROP TABLE IF EXISTS ordered_detail;

CREATE TABLE item
(
  code SERIAL PRIMARY KEY,
  category_code INTEGER,
  name TEXT,
  price INTEGER
);
CREATE TABLE category
(
  code SERIAL PRIMARY KEY,
  name TEXT
);
CREATE TABLE customer
(
  code SERIAL PRIMARY KEY,
  name TEXT,
  address TEXT,
  tel TEXT,
  email TEXT
);
CREATE TABLE ordered
(
  code SERIAL PRIMARY KEY,
  customer_code INTEGER,
  ordered_date DATE,
  total_price INTEGER
);
CREATE TABLE ordered_detail
(
  ordered_code INTEGER,
  item_code INTEGER,
  num INTEGER
); 

INSERT INTO category(name) VALUES('�{');
INSERT INTO category(name) VALUES('DVD');
INSERT INTO category(name) VALUES('�Q�[��');

INSERT INTO item(category_code, name, price) VALUES(1, 'Java�̊�{', 2500);
INSERT INTO item(category_code, name, price) VALUES(1, 'MLB Fun', 980);
INSERT INTO item(category_code, name, price) VALUES(1, '����BOOK!', 1200);

INSERT INTO item(category_code, name, price) VALUES(2, '�Ȃ����̃A�j���V���[�Y', 2000);
INSERT INTO item(category_code, name, price) VALUES(2, 'The Racer', 1000);
INSERT INTO item(category_code, name, price) VALUES(2, 'Space Wars 3', 1800);

INSERT INTO item(category_code, name, price) VALUES(3, '�p�Y���Q�[��', 780);
INSERT INTO item(category_code, name, price) VALUES(3, 'Invader Fighter', 3400);
INSERT INTO item(category_code, name, price) VALUES(3, 'Play the BascketBall', 2200);

ALTER TABLE item OWNER TO student;
ALTER TABLE category OWNER TO student;
ALTER TABLE customer OWNER TO student;
ALTER TABLE ordered OWNER TO student;
ALTER TABLE ordered_detail OWNER TO student;
