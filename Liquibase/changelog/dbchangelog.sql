--liquibase formatted sql

--changeset bob:1
CREATE TABLE "DEPARTMENT" ("ID" INTEGER, "NAME" STRING, "ACTIVE" BOOLEAN);

--changeset Amine:2
CREATE TABLE "CITY" ("ID1" INTEGER, "NAME1" STRING, "ACTIVE1" BOOLEAN);

--changeset Amine:3
CREATE TABLE "COUNTRY" ("ID1" INTEGER, "NAME1" STRING, "ACTIVE1" BOOLEAN);

--changeset Amine:4
CREATE TABLE "COUNTXX" ("ID1" INTEGER, "NAME2" STRING, "ACTIVE3" BOOLEAN);

--changeset bob:5
CREATE TABLE "COUNTYXX" ("ID2" INTEGER, "NAME2" STRING, "ACTIVE3" BOOLEAN);

--changeset boby:6
CREATE TABLE "COUYTX" ("ID4" INTEGER, "NAME4" STRING, "ACTIVE4" BOOLEAN);

--changeset bob:7
CREATE TABLE "BCG" ( "KEY" INTEGER );
