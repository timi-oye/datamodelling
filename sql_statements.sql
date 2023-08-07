CREATE TABLE "customers_transactions"(
    "item_id" BIGINT NOT NULL,
    "customer_id" BIGINT NOT NULL,
    "bank_id" BIGINT NOT NULL,
    "selling_price" BIGINT NOT NULL,
    "cost_price" BIGINT NOT NULL,
    "quantity" BIGINT NOT NULL,
    "exchange_rate" BIGINT NOT NULL,
    "transaction_date" BIGINT NOT NULL
);
ALTER TABLE
    "customers_transactions" ADD PRIMARY KEY("item_id");
CREATE TABLE "dates"(
    "date" DATE NOT NULL,
    "year" BIGINT NOT NULL,
    "month" BIGINT NOT NULL
);
ALTER TABLE
    "dates" ADD PRIMARY KEY("date");
CREATE TABLE "banks"(
    "id" VARCHAR(255) NOT NULL,
    "bank_code" BIGINT NOT NULL,
    "bank_name" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "banks" ADD PRIMARY KEY("id");
CREATE TABLE "items"(
    "id" BIGINT NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "selling_price" DOUBLE PRECISION NOT NULL,
    "cost_price" DOUBLE PRECISION NOT NULL
);
ALTER TABLE
    "items" ADD PRIMARY KEY("id");
CREATE TABLE "customers"(
    "id" BIGINT NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    "reg_date" DATE NOT NULL
);
ALTER TABLE
    "customers" ADD PRIMARY KEY("id");
ALTER TABLE
    "items" ADD CONSTRAINT "items_id_foreign" FOREIGN KEY("id") REFERENCES "customers_transactions"("item_id");
ALTER TABLE
    "customers_transactions" ADD CONSTRAINT "customers_transactions_customer_id_foreign" FOREIGN KEY("customer_id") REFERENCES "customers"("id");
ALTER TABLE
    "customers_transactions" ADD CONSTRAINT "customers_transactions_bank_id_foreign" FOREIGN KEY("bank_id") REFERENCES "banks"("id");
ALTER TABLE
    "customers_transactions" ADD CONSTRAINT "customers_transactions_transaction_date_foreign" FOREIGN KEY("transaction_date") REFERENCES "dates"("date");