BEGIN TRANSACTION;
INSERT INTO ad_positions ("id", "name", "ispublished", "created_at", "updated_at") VALUES (1, 'Top', NULL, NULL, NULL);
INSERT INTO ad_positions ("id", "name", "ispublished", "created_at", "updated_at") VALUES (2, 'Homepage', NULL, NULL, NULL);
INSERT INTO ad_positions ("id", "name", "ispublished", "created_at", "updated_at") VALUES (3, 'Right', NULL, NULL, NULL);
INSERT INTO ad_positions ("id", "name", "ispublished", "created_at", "updated_at") VALUES (4, 'Bottom', NULL, NULL, NULL);
INSERT INTO ad_positions ("id", "name", "ispublished", "created_at", "updated_at") VALUES (5, 'Homepage Popup', NULL, NULL, NULL);
COMMIT;
