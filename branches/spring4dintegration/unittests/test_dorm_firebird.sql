DROP SEQUENCE SEQ_PEOPLE_ID;
CREATE SEQUENCE SEQ_PEOPLE_ID;
ALTER SEQUENCE SEQ_PEOPLE_ID RESTART WITH 0;
RECREATE TABLE PEOPLE(
  ID BIGINT primary key, FIRST_NAME VARCHAR(50), LAST_NAME VARCHAR(50), AGE BIGINT, BORN_DATE DATE, BORN_DATE_TIME TIMESTAMP, PHOTO BLOB SUB_TYPE 0 SEGMENT SIZE 16384);
DELETE FROM PEOPLE;
DROP SEQUENCE SEQ_PHONES_ID;
CREATE SEQUENCE SEQ_PHONES_ID;
ALTER SEQUENCE SEQ_PHONES_ID RESTART WITH 0;
RECREATE TABLE PHONES(
  ID BIGINT primary key, NUMBER VARCHAR(50), MODEL VARCHAR(50), ID_PERSON BIGINT);
DELETE FROM PHONES;
DROP SEQUENCE SEQ_CARS_ID;
CREATE SEQUENCE SEQ_CARS_ID;
ALTER SEQUENCE SEQ_CARS_ID RESTART WITH 0;
RECREATE TABLE CARS(
  ID BIGINT primary key, BRAND VARCHAR(30), MODEL VARCHAR(30), ID_PERSON BIGINT);
DELETE FROM CARS;
DROP SEQUENCE SEQ_EMAILS_ID;
CREATE SEQUENCE SEQ_EMAILS_ID;
ALTER SEQUENCE SEQ_EMAILS_ID RESTART WITH 0;
RECREATE TABLE EMAILS(
  ID BIGINT primary key, ADDRESS VARCHAR(100), ID_PERSON BIGINT);
DELETE FROM EMAILS;