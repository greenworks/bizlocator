BEGIN TRANSACTION;
INSERT INTO bookmark_jobs ("id", "job_id", "user_id", "created_at", "updated_at") VALUES (1, 1, 4, NULL, NULL);
INSERT INTO bookmark_jobs ("id", "job_id", "user_id", "created_at", "updated_at") VALUES (2, 2, 4, NULL, NULL);
COMMIT;
