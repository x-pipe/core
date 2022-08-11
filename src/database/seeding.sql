DROP TABLE IF EXISTS DAO;
DROP TABLE IF EXISTS BANK_ACCOUNT;
DROP TABLE IF EXISTS PROPOSAL;
DROP TABLE IF EXISTS CARD;


CREATE TABLE DAO(
  ID UUID PRIMARY KEY NOT NULL,
  CHAIN_ID VARCHAR(255) NOT NULL,
  NAME VARCHAR(255) NOT NULL
);

CREATE TABLE BANK_ACCOUNT(
  ID UUID PRIMARY KEY NOT NULL,
  DAO_ID UUID NOT NULL,
  MULTI_SIG_DETAILS VARCHAR(23767) NOT NULL
);

CREATE TABLE CARD(
  ID UUID PRIMARY KEY NOT NULL,
  CARD_TYPE VARCHAR(255) NOT NULL,
  DAO_ID UUID NOT NULL,
  BANK_ACCOUNT_ID UUID
);

CREATE TABLE PROPOSAL(
  ID UUID PRIMARY KEY NOT NULL,
  DAO_ID UUID NOT NULL,
  OPTIONS VARCHAR(23767) NOT NULL,
  PROPOSAL_STATUS VARCHAR(255) NOT NULL
);

INSERT INTO DAO (ID, CHAIN_ID, NAME)
VALUES ('a81bc81b-dead-4e5d-abff-90865d1e13b1', 'chain_id_1', 'Test DAO');
