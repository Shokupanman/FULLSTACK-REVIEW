CREATE TABLE homies (
user_id SERIAL PRIMARY KEY,
name VARCHAR(100),
email VARCHAR,
profile_img TEXT);

CREATE TABLE homies_hash (
hash_id SERIAL PRIMARY KEY,
hash TEXT,
user_id INT REFERENCES homies(user_id));

CREATE TABLE posts (
post_id SERIAL PRIMARY KEY,
title VARCHAR(40),
img_url TEXT,
content TEXT,
likes INT,
user_id INT REFERENCES homies(user_id));

INSERT INTO homies (name, email, profile_img)
VALUES('Shokupanman', 'shoku@panman.com', 'https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwiD5P7IqurlAhVKqp4KHVCxB9sQjRx6BAgBEAQ&url=https%3A%2F%2Fwhitneygolucky.fandom.com%2Fwiki%2FShokupanman&psig=AOvVaw2DHwUQpRmDIaMz5EmQJkB2&ust=1573842551246679'),
('JonChu', 'JonChu@poke.com', 'https://pmcdeadline2.files.wordpress.com/2018/07/jon-m-chu.jpg?w=681&h=383&crop=1');

INSERT INTO homies_hash (hash, user_id)
VALUES('password', 1),
('s3crect', 2);

INSERT INTO posts (title, img_url, content, likes, user_id)
VALUES ('The bomb dot dog', 'https://vetstreet.brightspotcdn.com/dims4/default/78480cb/2147483647/crop/0x0%2B0%2B0/resize/645x380/quality/90/?url=https%3A%2F%2Fvetstreet-brightspot.s3.amazonaws.com%2Fd5%2F10e8609e8c11e0a2380050568d634f%2Ffile%2FBernese-Mtn-2-645mk062111.jpg',
'bernese mountain dog', 200, 1),
('the best game', 'https://fsmedia.imgix.net/6a/b6/23/aa/18c8/4e32/8d8c/fed0fc2ebc7d/zelda-breath-of-the-wild-2-release-date-botw.jpeg?rect=0%2C0%2C825%2C413&auto=format%2Ccompress&dpr=2&w=650', 'Too good of a game', 
2000, 2);