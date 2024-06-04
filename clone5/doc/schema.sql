
/*
  -All the login/authorization will done through users table.
  -For confirmation email i'm using jwt tocken : some sence it handles authorization ,password reset
   and all things.  
*/
CREATE TABLE IF NOT EXISTS "users" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar DEFAULT '' NOT NULL, "encrypted_password" varchar DEFAULT '' NOT NULL, "reset_password_token" varchar, "reset_password_sent_at" datetime(6), "remember_created_at" datetime(6), "confirmation_token" varchar, "confirmed_at" datetime(6), "confirmation_sent_at" datetime(6), "unconfirmed_email" varchar, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL);


/*
  -profile belongs to users and each user has one profile
  -profile for each user can put bio about the user
  - from 'is_public' attribute we can decide account is public or private
*/
CREATE TABLE IF NOT EXISTS "profiles" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "bio" text, "users_id" integer NOT NULL, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL,"is_public_ac" BOOLEAN DEFAULT 'false', FOREIGN KEY ("users_id") REFERENCES "users" ("id"));


/*
   tweets table belongs user so we can map each tweet to perticular user  
*/
CREATE TABLE IF NOT EXISTS "tweets" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar UNIQUE, "massege" text, "users_id" integer NOT NULL, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, FOREIGN KEY ("users_id") REFERENCES "users" ("id"));




/*
  following table for likes and dislikes purpose
*/

CREATE TABLE IF NOT EXISTS "likes" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "users_id" integer NOT NULL, "tweets_id" integer NOT NULL, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, FOREIGN KEY ("users_id") REFERENCES "users" ("id")
, FOREIGN KEY ("tweets_id") REFERENCES "tweets" ("id"));

CREATE TABLE IF NOT EXISTS "dislikes" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "users_id" integer NOT NULL, "tweets_id" integer NOT NULL, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, CONSTRAINT "fk_rails_0831fd4d8e"
FOREIGN KEY ("users_id") REFERENCES "users" ("id") , FOREIGN KEY ("tweets_id") REFERENCES "tweets" ("id"));

/*
  user can connect each other like if some user has private account and some perticular user want to 
  see perticular users tweets
*/
CREATE TABLE IF NOT EXISTS "connections" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "users_id" integer NOT NULL, "follower" integer, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, FOREIGN KEY ("users_id") REFERENCES "users" ("id"));






