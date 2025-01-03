-- Drop tables if exists
DROP TABLE category;
DROP TABLE subcategory;
DROP TABLE contacts;
DROP TABLE campaigns;

-- Creates Category Table
CREATE TABLE "category" (
  "category_id" VARCHAR PRIMARY KEY,
  "category" VARCHAR
);
-- Checks table after importing category csv
SELECT * FROM category;

-- Creates Subcategory Table
CREATE TABLE "subcategory" (
  "subcategory_id" VARCHAR PRIMARY KEY,
  "subcategory" VARCHAR
);
-- Checks table after importing subcategory csv
SELECT * FROM subcategory;

-- Creates Contacts Table
CREATE TABLE "contacts" (
  "contact_id" integer primary key,
  "first_name" varchar,
  "last_name" varchar,
  "email" varchar
);
-- Checks table after importing contacts csv
SELECT * FROM contacts;

-- Creates Campaigns Table
CREATE TABLE "campaigns" (
  "cf_id" integer primary key ,
  "contact_id" integer,
  "company_name" varchar,
  "description" varchar,
  "goal" float,
  "pledged" float,
  "outcome" varchar,
  "backers_count" integer,
  "country" varchar,
  "currency" varchar,
  "launched_date" date,
  "end_date" date,
  "category_id" varchar,
  "subcategory_id" varchar,
  FOREIGN KEY ("category_id") REFERENCES "category" ("category_id"),
  FOREIGN KEY ("subcategory_id") REFERENCES "subcategory" ("subcategory_id"),
  FOREIGN KEY ("contact_id") REFERENCES "contacts" ("contact_id")
);
-- Checks table after importing campaign csv
SELECT * FROM campaigns;