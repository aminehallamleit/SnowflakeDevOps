--liquibase formatted sql

--changeset bob:1
CREATE TABLE "DEPARTMENT" ("ID" INTEGER, "NAME" STRING, "ACTIVE" BOOLEAN);

--changeset Amine:2
CREATE TABLE "CITY" ("ID1" INTEGER, "NAME1" STRING, "ACTIVE1" BOOLEAN);

--changeset Amine:3
CREATE TABLE "COUNTRY" ("ID1" INTEGER, "NAME1" STRING, "ACTIVE1" BOOLEAN);
