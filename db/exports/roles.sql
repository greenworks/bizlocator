BEGIN TRANSACTION;
INSERT INTO roles ("id", "name", "created_at", "updated_at") VALUES (1, 'Business Provider', NULL, NULL);
INSERT INTO roles ("id", "name", "created_at", "updated_at") VALUES (2, 'Consumer', NULL, NULL);
INSERT INTO roles ("id", "name", "created_at", "updated_at") VALUES (3, 'admin', NULL, NULL);
COMMIT;
