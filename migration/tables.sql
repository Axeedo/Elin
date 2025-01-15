
-- DROP TABLE IF EXISTS account;
-- DROP TABLE IF EXISTS profile;
-- DROP TABLE IF EXISTS post;
-- DROP TABLE IF EXISTS like;

CREATE TABLE account (
    id bigint PRIMARY KEY,
    email varchar(63) UNIQUE NOT NULL,
    username varchar(50) UNIQUE NOT NULL,
    password varchar(50) NOT NULL,
    created_at timestamp NOT NULL,
    last_login timestamp
);

CREATE TABLE profile (
    id bigint PRIMARY KEY,
    profile_name varchar(50),
    bio text,
    profile_picture text
);

CREATE TABLE post (
    id bigint PRIMARY KEY,
    author_id bigint,
    post_text text,
    media text,
    parent_id bigint
);

CREATE TABLE reaction (
    post_id bigint,
    user_id bigint,
    PRIMARY KEY(post_id, user_id)
);




