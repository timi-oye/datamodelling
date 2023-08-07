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