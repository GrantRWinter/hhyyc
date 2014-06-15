CREATE TABLE "delayed_jobs" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "priority" integer DEFAULT 0 NOT NULL, "attempts" integer DEFAULT 0 NOT NULL, "handler" text NOT NULL, "last_error" text, "run_at" datetime, "locked_at" datetime, "failed_at" datetime, "locked_by" varchar(255), "queue" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "messages" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "subject" varchar(255), "recipient" varchar(255), "recipient_email" varchar(255), "recipient_phone_number" integer, "send_time" datetime, "text" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "first_name" varchar(255), "last_name" varchar(255), "email" varchar(255), "phone_number" integer, "password_digest" varchar(255), "created_at" datetime, "updated_at" datetime, "password_confirmation" varchar(255));
CREATE INDEX "delayed_jobs_priority" ON "delayed_jobs" ("priority", "run_at");
CREATE INDEX "index_messages_on_user_id" ON "messages" ("user_id");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20140129192526');

INSERT INTO schema_migrations (version) VALUES ('20140129192842');

INSERT INTO schema_migrations (version) VALUES ('20140130011022');

INSERT INTO schema_migrations (version) VALUES ('20140130014956');

INSERT INTO schema_migrations (version) VALUES ('20140130035258');

INSERT INTO schema_migrations (version) VALUES ('20140202202014');
