--
-- Class Channel as table channel
--

CREATE TABLE "channel" (
  "id" serial,
  "name" text NOT NULL,
  "participants" json,
  "channel" text NOT NULL,
  "createdAt" timestamp without time zone,
  "updatedAt" timestamp without time zone
);

ALTER TABLE ONLY "channel"
  ADD CONSTRAINT channel_pkey PRIMARY KEY (id);

CREATE INDEX channel_name_idx ON "channel" USING btree ("channel", "updatedAt");


--
-- Class User as table users
--

CREATE TABLE "users" (
  "id" serial,
  "name" text NOT NULL,
  "phone" integer,
  "createdAt" timestamp without time zone,
  "updatedAt" timestamp without time zone,
  "userInfo" json NOT NULL,
  "isOnline" boolean,
  "lastOnline" timestamp without time zone,
  "latitude" double precision,
  "longitude" double precision,
  "profilePicture" text
);

ALTER TABLE ONLY "users"
  ADD CONSTRAINT users_pkey PRIMARY KEY (id);

CREATE INDEX user_name_idx ON "users" USING btree ("name");


