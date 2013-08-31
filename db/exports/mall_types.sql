BEGIN TRANSACTION;
INSERT INTO mall_types ("id", "name", "introtext", "description", "ispublished", "created_at", "updated_at") VALUES (1, 'Major Shopping Mall', 'Shopping Mall', '', '0', '2013-04-21 14:15:46', '2013-04-21 14:15:46');
INSERT INTO mall_types ("id", "name", "introtext", "description", "ispublished", "created_at", "updated_at") VALUES (2, 'Plaza Mall', 'Plaza Mall', '', '0', '2013-04-21 14:16:14', '2013-04-21 14:16:14');
INSERT INTO mall_types ("id", "name", "introtext", "description", "ispublished", "created_at", "updated_at") VALUES (3, 'Retail park', 'Retail park', 'for a grouping of retail stores, usually the equivalent of a power center.', '0', '2013-05-24 11:04:02', '2013-05-24 11:04:02');
INSERT INTO mall_types ("id", "name", "introtext", "description", "ispublished", "created_at", "updated_at") VALUES (4, 'a', 'a', 'a', '0', '2013-05-24 11:10:08', '2013-05-24 11:10:08');
COMMIT;
