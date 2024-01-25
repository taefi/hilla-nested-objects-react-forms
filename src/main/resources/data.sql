-- create 10 country records:
INSERT INTO Country (id, name, code) VALUES (1, 'United States', 'USA');
INSERT INTO Country (id, name, code) VALUES (2, 'Canada', 'CAN');
INSERT INTO Country (id, name, code) VALUES (3, 'United Kingdom', 'GBR');
INSERT INTO Country (id, name, code) VALUES (4, 'Germany', 'DEU');
INSERT INTO Country (id, name, code) VALUES (5, 'France', 'FRA');
INSERT INTO Country (id, name, code) VALUES (6, 'Japan', 'JPN');
INSERT INTO Country (id, name, code) VALUES (7, 'Australia', 'AUS');
INSERT INTO Country (id, name, code) VALUES (8, 'Brazil', 'BRA');
INSERT INTO Country (id, name, code) VALUES (9, 'India', 'IND');
INSERT INTO Country (id, name, code) VALUES (10, 'South Africa', 'ZAF');
INSERT INTO Country (id, name, code) VALUES (11, 'Finland', 'FIN');

ALTER TABLE Country ALTER COLUMN id RESTART WITH (SELECT MAX(id) + 1 FROM Country);

-- create city records
-- United States Cities
INSERT INTO City (id, name, country_id) VALUES (1, 'New York', 1);
INSERT INTO City (id, name, country_id) VALUES (2, 'Los Angeles', 1);
INSERT INTO City (id, name, country_id) VALUES (3, 'Chicago', 1);
INSERT INTO City (id, name, country_id) VALUES (4, 'Houston', 1);

-- Canada Cities
INSERT INTO City (id, name, country_id) VALUES (5, 'Toronto', 2);
INSERT INTO City (id, name, country_id) VALUES (6, 'Vancouver', 2);
INSERT INTO City (id, name, country_id) VALUES (7, 'Montreal', 2);
INSERT INTO City (id, name, country_id) VALUES (8, 'Calgary', 2);

-- United Kingdom Cities
INSERT INTO City (id, name, country_id) VALUES (9, 'London', 3);
INSERT INTO City (id, name, country_id) VALUES (10, 'Manchester', 3);
INSERT INTO City (id, name, country_id) VALUES (11, 'Birmingham', 3);

-- Germany Cities
INSERT INTO City (id, name, country_id) VALUES (12, 'Berlin', 4);
INSERT INTO City (id, name, country_id) VALUES (13, 'Munich', 4);
INSERT INTO City (id, name, country_id) VALUES (14, 'Hamburg', 4);

-- France Cities
INSERT INTO City (id, name, country_id) VALUES (15, 'Paris', 5);
INSERT INTO City (id, name, country_id) VALUES (16, 'Marseille', 5);

-- Japan Cities
INSERT INTO City (id, name, country_id) VALUES (17, 'Tokyo', 6);
INSERT INTO City (id, name, country_id) VALUES (18, 'Osaka', 6);

-- Australia Cities
INSERT INTO City (id, name, country_id) VALUES (19, 'Sydney', 7);
INSERT INTO City (id, name, country_id) VALUES (20, 'Melbourne', 7);

-- Brazil Cities
INSERT INTO City (id, name, country_id) VALUES (21, 'Sao Paulo', 8);
INSERT INTO City (id, name, country_id) VALUES (22, 'Rio de Janeiro', 8);
INSERT INTO City (id, name, country_id) VALUES (23, 'Brasilia', 8);

-- India Cities
INSERT INTO City (id, name, country_id) VALUES (24, 'Mumbai', 9);
INSERT INTO City (id, name, country_id) VALUES (25, 'Delhi', 9);
INSERT INTO City (id, name, country_id) VALUES (26, 'Bangalore', 9);

-- South Africa Cities
INSERT INTO City (id, name, country_id) VALUES (27, 'Johannesburg', 10);
INSERT INTO City (id, name, country_id) VALUES (28, 'Cape Town', 10);
INSERT INTO City (id, name, country_id) VALUES (29, 'Durban', 10);
INSERT INTO City (id, name, country_id) VALUES (30, 'Pretoria', 10);

INSERT INTO City (id, name, country_id) VALUES (31, 'Turku', 11);
INSERT INTO City (id, name, country_id) VALUES (32, 'Helsinki', 11);

ALTER TABLE City ALTER COLUMN id RESTART WITH (SELECT MAX(id) + 1 FROM City);

-- United States Cities
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (1, '123 Main St', '10001', 1);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (2, '456 Oak Ave', '10002', 1);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (3, '789 Maple Blvd', '10003', 1);

INSERT INTO Address (id, street1, zip_code, city_id) VALUES (4, '111 Pine Ln', '90001', 2);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (5, '222 Cedar St', '90002', 2);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (6, '333 Elm Ave', '90003', 2);

INSERT INTO Address (id, street1, zip_code, city_id) VALUES (7, '444 Oak St', '60601', 3);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (8, '555 Pine Ave', '60602', 3);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (9, '666 Maple Blvd', '60603', 3);

-- Canada Cities
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (10, '777 Fir Ln', 'M5A 1A1', 5);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (11, '888 Birch St', 'M5A 1A2', 5);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (12, '999 Cedar Ave', 'M5A 1A3', 5);

INSERT INTO Address (id, street1, zip_code, city_id) VALUES (13, '101 Elm Blvd', 'V6B 2E1', 6);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (14, '202 Oak St', 'V6B 2E2', 6);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (15, '303 Pine Ave', 'V6B 2E3', 6);

INSERT INTO Address (id, street1, zip_code, city_id) VALUES (16, '404 Fir Ln', 'H2X 1Y9', 7);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (17, '505 Cedar St', 'H2X 1Y8', 7);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (18, '606 Elm Ave', 'H2X 1Y7', 7);

INSERT INTO Address (id, street1, zip_code, city_id) VALUES (19, '707 Oak St', 'T2P 4T1', 8);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (20, '808 Pine Ave', 'T2P 4T2', 8);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (21, '909 Maple Blvd', 'T2P 4T3', 8);

-- United Kingdom Cities
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (22, '123 Fir Ln', 'SW1A 1AA', 9);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (23, '456 Oak St', 'SW1A 1AB', 9);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (24, '789 Maple Ave', 'SW1A 1AC', 9);

INSERT INTO Address (id, street1, zip_code, city_id) VALUES (25, '101 Cedar Blvd', 'M1 1AA', 10);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (26, '202 Elm St', 'M1 1AB', 10);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (27, '303 Pine Ave', 'M1 1AC', 10);

INSERT INTO Address (id, street1, zip_code, city_id) VALUES (28, '404 Oak St', 'B1 1AA', 11);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (29, '505 Fir Ln', 'B1 1AB', 11);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (30, '606 Maple Blvd', 'B1 1AC', 11);

-- Germany Cities
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (31, '111 Maple Blvd', '10115', 12);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (32, '222 Pine Ave', '10116', 12);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (33, '333 Cedar St', '10117', 12);

INSERT INTO Address (id, street1, zip_code, city_id) VALUES (34, '444 Fir Ln', '80331', 13);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (35, '555 Oak St', '80332', 13);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (36, '666 Elm Blvd', '80333', 13);

INSERT INTO Address (id, street1, zip_code, city_id) VALUES (37, '777 Cedar Ave', '20095', 14);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (38, '888 Fir Ln', '20096', 14);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (39, '999 Birch St', '20097', 14);

-- France Cities
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (40, '123 Pine Ln', '75001', 15);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (41, '456 Cedar Ave', '75002', 15);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (42, '789 Elm St', '75003', 15);

INSERT INTO Address (id, street1, zip_code, city_id) VALUES (43, '101 Oak St', '13008', 16);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (44, '202 Fir Ln', '13009', 16);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (45, '303 Maple Blvd', '13010', 16);

-- Japan Cities
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (46, '404 Cedar St', '100-0005', 17);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (47, '505 Fir Ln', '100-0006', 17);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (48, '606 Elm Ave', '100-0007', 17);

INSERT INTO Address (id, street1, zip_code, city_id) VALUES (49, '707 Maple Blvd', '540-0002', 18);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (50, '808 Pine Ln', '540-0003', 18);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (51, '909 Oak St', '540-0004', 18);

-- Australia Cities
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (52, '111 Fir Ln', '2000', 19);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (53, '222 Maple Ave', '2001', 19);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (54, '333 Oak St', '2002', 19);

INSERT INTO Address (id, street1, zip_code, city_id) VALUES (55, '444 Pine Ln', '3000', 20);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (56, '555 Cedar Ave', '3001', 20);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (57, '666 Fir Ln', '3002', 20);

-- Brazil Cities
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (58, '777 Elm Blvd', '01310-100', 21);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (59, '888 Oak St', '01310-101', 21);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (60, '999 Fir Ln', '01310-102', 21);

INSERT INTO Address (id, street1, zip_code, city_id) VALUES (61, '101 Pine Ave', '22040-020', 22);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (62, '202 Cedar St', '22040-021', 22);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (63, '303 Elm Ln', '22040-022', 22);

INSERT INTO Address (id, street1, zip_code, city_id) VALUES (64, '404 Fir Ave', '70070-015', 23);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (65, '505 Oak St', '70070-016', 23);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (66, '606 Pine Blvd', '70070-017', 23);

-- India Cities
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (67, '707 Cedar St', '400001', 24);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (68, '808 Fir Ln', '400002', 24);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (69, '909 Oak Ave', '400003', 24);

INSERT INTO Address (id, street1, zip_code, city_id) VALUES (70, '111 Maple Blvd', '110001', 25);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (71, '222 Pine St', '110002', 25);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (72, '333 Cedar Ave', '110003', 25);

INSERT INTO Address (id, street1, zip_code, city_id) VALUES (73, '444 Elm St', '560001', 26);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (74, '555 Fir Ave', '560002', 26);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (75, '666 Maple Ln', '560003', 26);

-- South Africa Cities
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (76, '777 Pine Ave', '2000', 27);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (77, '888 Cedar Blvd', '2001', 27);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (78, '999 Elm St', '2002', 27);

INSERT INTO Address (id, street1, zip_code, city_id) VALUES (79, '101 Fir Ln', '8001', 28);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (80, '202 Maple Ave', '8002', 28);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (81, '505 Fir Ave', '8001', 28);

INSERT INTO Address (id, street1, zip_code, city_id) VALUES (82, '404 Oak St', '2000', 29);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (83, '606 Maple Blvd', '4001', 29);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (84, '707 Cedar Ln', '0001', 29);

INSERT INTO Address (id, street1, zip_code, city_id) VALUES (85, '808 Pine Ave', '0001', 30);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (86, '909 Fir Blvd', '0001', 30);
INSERT INTO Address (id, street1, zip_code, city_id) VALUES (87, '111 Maple St', '0001', 30);

ALTER TABLE Address ALTER COLUMN id RESTART WITH (SELECT MAX(id) + 1 FROM Address);

INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (1, 'john.doe@gmail.com', '+1-555-123-4567', 1);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (2, 'jane.smith@yahoo.com', '+1-555-987-6543', 2);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (3, 'bob.jones@hotmail.com', '+1-555-234-5678', 3);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (4, 'alice.white@gmail.com', '+1-555-876-5432', 4);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (5, 'sam.miller@yahoo.com', '+1-555-345-6789', 5);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (6, 'emma.jackson@hotmail.com', '+1-555-432-1098', 6);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (7, 'michael.brown@gmail.com', '+1-555-987-6543', 7);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (8, 'olivia.davis@yahoo.com', '+1-555-123-4567', 8);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (9, 'william.martin@hotmail.com', '+1-555-234-5678', 9);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (10, 'ava.wilson@gmail.com', '+1-555-876-5432', 10);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (11, 'noah.hall@yahoo.com', '+1-555-345-6789', 11);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (12, 'olivia.morris@hotmail.com', '+1-555-432-1098', 12);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (13, 'liam.ward@gmail.com', '+1-555-987-6543', 13);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (14, 'emma.stewart@yahoo.com', '+1-555-123-4567', 14);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (15, 'mason.evans@hotmail.com', '+1-555-234-5678', 15);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (16, 'ava.turner@gmail.com', '+1-555-876-5432', 16);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (17, 'isabella.wood@yahoo.com', '+1-555-345-6789', 17);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (18, 'logan.harrison@hotmail.com', '+1-555-432-1098', 18);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (19, 'amelia.graham@gmail.com', '+1-555-987-6543', 19);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (20, 'oliver.sullivan@yahoo.com', '+1-555-123-4567', 20);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (21, 'sophia.kennedy@hotmail.com', '+1-555-234-5678', 21);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (22, 'lucas.bishop@gmail.com', '+1-555-876-5432', 22);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (23, 'mia.berry@yahoo.com', '+1-555-345-6789', 23);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (24, 'henry.greene@hotmail.com', '+1-555-432-1098', 24);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (25, 'ella.warren@gmail.com', '+1-555-987-6543', 25);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (26, 'jaxon.fox@yahoo.com', '+1-555-123-4567', 26);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (27, 'amelia.pearson@hotmail.com', '+1-555-234-5678', 27);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (28, 'levi.bryant@gmail.com', '+1-555-876-5432', 28);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (29, 'sofia.cole@yahoo.com', '+1-555-345-6789', 29);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (30, 'wyatt.fisher@hotmail.com', '+1-555-432-1098', 30);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (31, 'grayson.porter@gmail.com', '+1-555-987-6543', 31);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (32, 'paisley.russell@yahoo.com', '+1-555-123-4567', 32);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (33, 'jax.carpenter@hotmail.com', '+1-555-234-5678', 33);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (34, 'aubrey.dixon@gmail.com', '+1-555-876-5432', 34);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (35, 'hunter.clark@yahoo.com', '+1-555-345-6789', 35);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (36, 'zoey.king@hotmail.com', '+1-555-432-1098', 36);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (37, 'braxton.wright@gmail.com', '+1-555-987-6543', 37);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (38, 'scarlett.nelson@yahoo.com', '+1-555-123-4567', 38);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (39, 'lincoln.hill@hotmail.com', '+1-555-234-5678', 39);
INSERT INTO Contact_Info (id, email, phone, main_address_id) VALUES (40, 'kennedy.wells@gmail.com', '+1-555-876-5432', 40);

ALTER TABLE Contact_Info ALTER COLUMN id RESTART WITH (SELECT MAX(id) + 1 FROM Contact_Info);

INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (1, 'John', 'Doe', 'MALE', '1990-05-15', '2020-03-01', 1, true);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (2, 'Jane', 'Smith', 'FEMALE', '1988-08-22', '2019-06-15', 2, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (3, 'Bob', 'Jones', 'MALE', '1992-02-10', '2021-01-05', 3, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (4, 'Alice', 'White', 'FEMALE', '1985-11-30', '2018-09-20', 4, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (5, 'Sam', 'Miller', 'MALE', '1993-07-18', '2022-02-12', 5, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (6, 'Emma', 'Jackson', 'FEMALE', '1987-04-25', '2017-11-08', 6, true);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (7, 'Michael', 'Brown', 'MALE', '1991-09-03', '2019-02-28', 7, true);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (8, 'Olivia', 'Davis', 'FEMALE', '1989-12-12', '2020-06-10', 8, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (9, 'William', 'Martin', 'MALE', '1994-04-08', '2021-04-15', 9, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (10, 'Ava', 'Wilson', 'FEMALE', '1986-01-20', '2018-01-18', 10, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (11, 'Noah', 'Hall', 'MALE', '1995-06-28', '2022-05-09', 11, true);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (12, 'Olivia', 'Morris', 'FEMALE', '1984-09-14', '2017-07-22', 12, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (13, 'Liam', 'Ward', 'MALE', '1996-12-01', '2023-01-30', 13, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (14, 'Emma', 'Stewart', 'FEMALE', '1983-03-07', '2016-10-12', 14, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (15, 'Mason', 'Evans', 'MALE', '1997-08-16', '2024-04-05', 15, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (16, 'Ava', 'Turner', 'FEMALE', '1985-05-23', '2018-12-28', 16, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (17, 'Isabella', 'Wood', 'FEMALE', '1986-10-31', '2019-08-14', 17, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (18, 'Logan', 'Harrison', 'MALE', '1998-03-04', '2025-02-17', 18, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (19, 'Amelia', 'Graham', 'FEMALE', '1984-12-19', '2017-09-03', 19, true);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (20, 'Oliver', 'Sullivan', 'MALE', '1999-01-10', '2026-01-22', 20, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (21, 'Sophia', 'Kennedy', 'FEMALE', '1983-06-25', '2016-08-09', 21, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (22, 'Lucas', 'Bishop', 'MALE', '2000-04-02', '2027-03-14', 22, true);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (23, 'Mia', 'Berry', 'FEMALE', '1987-11-11', '2018-04-30', 23, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (24, 'Henry', 'Greene', 'MALE', '2001-07-08', '2028-05-19', 24, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (25, 'Ella', 'Warren', 'FEMALE', '1988-02-27', '2019-12-10', 25, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (26, 'Jaxon', 'Fox', 'MALE', '2002-10-15', '2029-08-03', 26, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (27, 'Amelia', 'Pearson', 'FEMALE', '1986-09-22', '2017-12-28', 27, true);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (28, 'Levi', 'Bryant', 'MALE', '2003-04-30', '2030-02-12', 28, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (29, 'Sofia', 'Cole', 'FEMALE', '1985-03-17', '2016-06-05', 29, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (30, 'Wyatt', 'Fisher', 'MALE', '2004-01-08', '2031-01-27', 30, true);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (31, 'Grayson', 'Porter', 'MALE', '2005-05-20', '2032-07-14', 31, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (32, 'Paisley', 'Russell', 'FEMALE', '1987-08-11', '2018-10-30', 32, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (33, 'Jax', 'Carpenter', 'MALE', '2006-12-03', '2033-03-09', 33, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (34, 'Aubrey', 'Dixon', 'FEMALE', '1984-01-18', '2017-04-02', 34, true);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (35, 'Hunter', 'Clark', 'MALE', '2007-07-28', '2034-09-16', 35, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (36, 'Zoey', 'King', 'FEMALE', '1988-04-14', '2019-12-01', 36, true);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (37, 'Braxton', 'Wright', 'MALE', '2008-11-06', '2035-06-23', 37, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (38, 'Scarlett', 'Nelson', 'FEMALE', '1983-06-01', '2016-08-18', 38, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (39, 'Lincoln', 'Hill', 'MALE', '2009-02-24', '2036-02-28', 39, false);
INSERT INTO Employee (id, first_name, last_name, gender, birth_date, employment_date, contact_info_id, is_manager) VALUES (40, 'Kennedy', 'Wells', 'FEMALE', '1989-09-13', '2020-11-15', 40, false);

ALTER TABLE Employee ALTER COLUMN id RESTART WITH (SELECT MAX(id) + 1 FROM Employee);
