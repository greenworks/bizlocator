BEGIN TRANSACTION;
INSERT INTO admin_users ("id", "email", "encrypted_password", "reset_password_token", "reset_password_sent_at", "remember_created_at", "sign_in_count", "current_sign_in_at", "last_sign_in_at", "current_sign_in_ip", "last_sign_in_ip", "created_at", "updated_at") VALUES (1, 'admin@example.com', '$2a$10$jB.JkzkP5D8VKKVMBgXNbOUWX2OmJRAkjkPTjQGBlcbwXXbSsFMD.', NULL, NULL, '2013-06-06 11:20:44', 9, '2013-07-07 20:26:39', '2013-06-08 13:08:21', '127.0.0.1', '127.0.0.1', '2013-04-22 15:44:51', '2013-07-07 20:26:39');
COMMIT;
