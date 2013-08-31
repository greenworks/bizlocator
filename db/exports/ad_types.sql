BEGIN TRANSACTION;
INSERT INTO ad_types ("id", "name", "created_at", "updated_at") VALUES (1, 'Group Buys', NULL, NULL);
INSERT INTO ad_types ("id", "name", "created_at", "updated_at") VALUES (2, 'Coupons', NULL, NULL);
INSERT INTO ad_types ("id", "name", "created_at", "updated_at") VALUES (3, 'Flyers', NULL, NULL);
INSERT INTO ad_types ("id", "name", "created_at", "updated_at") VALUES (4, 'Sales & Deals', NULL, NULL);
INSERT INTO ad_types ("id", "name", "created_at", "updated_at") VALUES (5, 'Others', NULL, NULL);
COMMIT;
