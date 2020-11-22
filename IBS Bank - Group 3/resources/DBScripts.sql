** Data Scripts for IBS Bank - Batch 7 - Group 3 **


DROP DATABASE IF EXISTS IBSG3;

CREATE DATABASE IBSG3;

USE IBSG3;

CREATE TABLE KYC_DETAILS(
REG_ID INT, NOT NULL PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME VARCHAR(20),
LAST_NAME VARCHAR(20),
GENDER CHAR(10),
DOB DATE,
EMAIL_ID VARCHAR(50),
MOBILE_NUM VARCHAR(10),
ADDRESS VARCHAR(100),
CITY VARCHAR(20),
PINCODE INT,
TYPE_OF_ACCT_HOLDER VARCHAR(20),
CUST_ACCT_TYPE VARCHAR(20),
KYC_IDENTITY_PROOF VARCHAR(20),
KYC_PROOF_DOC VARCHAR(100),
KYC_UPLOAD_IND CHAR(1),
ADMIN_COMMENTS_KYC VARCHAR(20),
KYC_APPROVAL_STATUS VARCHAR(20),
CREATED_DT DATE,
MODIFIED_DT DATE
);



CREATE TABLE CUST_ACCT(
UCI INT NOT NULL PRIMARY KEY AUTO_INCREMENT, FOREIGN KEY (REG_ID) REFERENCES KYC_DETAILS(REG_ID),
REG_ID INT,
CUST_ACCT_NUM INT UNIQUE KEY,
CUST_NAME  VARCHAR(50),
CUST_ACCT_TYPE VARCHAR(20),
AVLBL_BAL DECIMAL(10,2),
ACCT_START_DATE DATE,
ACCT_CLOSE_DATE DATE,
BRANCH_NAME VARCHAR(30),
BRANCH_IFSC_CODE VARCHAR(10),
INTEREST_RATE_PCT INT,
CUST_ACCT_STATUS VARCHAR(20),
TENURE INT,
CREATED_DT DATE
);
ALTER TABLE CUST_ACCT AUTO_INCREMENT = 1000000000000001;


CREATE TABLE CUST_BNFCRY(
BNFCRY_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
CUST_ACCT_NUM INT,
FOREIGN KEY (CUST_ACCT_NUM) REFERENCES CUST_ACCT(CUST_ACCT_NUM),
BNFCRY_ACCT_NUM INT,
BNFCRY_ACCT_NAME VARCHAR(50),
BNFCRY_BANK_NAME VARCHAR(50),
BNFCRY_ACCT_IFSC VARCHAR(10),
BNFCRY_TXN_TYP VARCHAR(10),
BNFCRY_MOBILE_NUM VARCHAR(50),
CREATED_DT DATE
);
ALTER TABLE CUST_BNFCRY AUTO_INCREMENT = 111;


CREATE TABLE CUST_ACCT_TXN_INFO(
TXN_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
FOREIGN KEY (CUST_ACCT_NUM) REFERENCES CUST_ACCT(CUST_ACCT_NUM),
CUST_ACCT_NUM INT,
CUST_ACCT_TYPE VARCHAR(20),
TXN_TYPE VARCHAR(10),
FROM_ACCT_NUM INT,
TO_ACCT_NUM INT,
TXN_AMT DECIMAL(10,2),
TXN_DATE_TIME TIMESTAMP,
TXN_COMMENTS VARCHAR(200),
CREATED_DT DATE
);
ALTER TABLE CUST_ACCT_TXN_INFO AUTO_INCREMENT = 111;


CREATE TABLE SERVICE_PROVIDER(
SERVICE_PROVIDER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
REG_ID INT,
SERVICE_PROVIDER_NAME  VARCHAR(100),
BANK_NAME VARCHAR(100),
ACCOUNT_ID VARCHAR(50),
BRANCH_NAME VARCHAR(100),
IFSC_CODE  VARCHAR(100),
SVC_START_DATE DATE,
SVC_END_DATE DATE,
CRAETED_DT DATE,
FOREIGN KEY (REG_ID) REFERENCES KYC_DETAILS(REG_ID)
);

CREATE TABLE LOGIN_PASSWORD(
LOGIN_SEQ_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
LOGIN_ID INT,
LOGIN_TYPE VARCHAR(20),
LOGIN_PWD VARCHAR(20),
TXN_PWD VARCHAR(20),
SECURITY_QUES1 VARCHAR(50),
SECURITY_ANS1 VARCHAR(10),
CREATED_DT DATE 
);

CREATE TABLE INTEREST_RATES (
INTEREST_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT ,
INTEREST_TYPE VARCHAR(20),
INTEREST_TENURE VARCHAR(20),
INTEREST_RATE_PCT INT,
CREATED_DT DATE,
MODIFIED_DT DATE
);