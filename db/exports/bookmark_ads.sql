BEGIN TRANSACTION;
INSERT INTO bookmark_ads ("id", "ad_id", "user_id", "created_at", "updated_at") VALUES (1, 1, 4, NULL, NULL);
INSERT INTO bookmark_ads ("id", "ad_id", "user_id", "created_at", "updated_at") VALUES (2, 2, 4, NULL, NULL);
INSERT INTO bookmark_ads ("id", "ad_id", "user_id", "created_at", "updated_at") VALUES (3, 4, 4, NULL, NULL);
INSERT INTO bookmark_ads ("id", "ad_id", "user_id", "created_at", "updated_at") VALUES (4, 11, 4, NULL, NULL);
COMMIT;
