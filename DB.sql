--QR DATA TABLE
CREATE TABLE QR_DATA(S_CODE VARCHAR(28) PRIMARY KEY,
DATE_OF_ISSUE DATE,
TIME_OF_ISSUE VARCHAR(9),
MH_NAME VARCHAR(30),
MH_LOCATION VARCHAR(20),
BOOKING_DATE DATE,
USER_ID VARCHAR(20) NOT NULL,
TRANSACTION_ID VARCHAR(40),
STATUS VARCHAR(20));

--QR STATUS TABLE
CREATE TABLE QR_STATUS(S_CODE VARCHAR(28) PRIMARY KEY,
STATUS VARCHAR(20));

--TRIGGER TO INSERT 'S_CODE' AND 'STATUS' INTO 'QR_STATUS' TABLE WHEN DATA IS INSERTED INTO 'QR_DATA' TABLE
DELIMITER #
CREATE OR REPLACE TRIGGER A_QR
AFTER INSERT ON
QR_DATA
FOR EACH ROW
BEGIN
INSERT INTO QR_STATUS(S_CODE, STATUS) VALUES(NEW.S_CODE, NEW.STATUS);
END#

--EXAMPLE
INSERT INTO QR_DATA VALUES('DA1111DDMMYYYYccc0000hhmmsS', '05-03-2022', '15:02:60', 'TAJ MAHAL', 'AGRA', '30-03-2022', 'XYZ0121', 'TR1234590', 'ACTIVE');
INSERT INTO QR_DATA VALUES('DA1111DDMMYYYYccc0000hhmmsA', '05-03-2022', '15:02:60', 'CHARMINAR', 'HYDERABAD', '30-03-2022', 'XYZ0121', 'TR1234590', 'ACTIVE');
SELECT * FROM QR_DATA;
SELECT * FROM QR_STATUS;

--TRIGGER TO UPDATE 'STATUS' IN 'QR_DATA' TABLE AFTER 'STATUS' IS UPDATED IN 'QR_STATUS' TABLE
DELIMITER #
CREATE OR REPLACE TRIGGER U_QR
AFTER UPDATE ON
QR_STATUS
FOR EACH ROW
BEGIN
UPDATE QR_DATA SET STATUS = NEW.STATUS WHERE S_CODE = NEW.S_CODE;
END#

--EXAMPLE
UPDATE QR_STATUS SET STATUS = 'EXPIRED' WHERE S_CODE = 'DA1111DDMMYYYYccc0000hhmmsA';
SELECT * FROM QR_DATA;
SELECT * FROM QR_STATUS;