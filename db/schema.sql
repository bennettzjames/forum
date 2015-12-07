drop table if exists users;
drop table if exists tv_shows;
drop table if exists links;
drop table if exists comments;
drop table if exists ratings;

create table users (
	id integer primary key,
	password_digest varchar,
	username varchar,
	avatar_img varchar
);

create table tv_shows (
	id integer primary key,
	genre varchar,
	title varchar,
	info text,
	show_img_url text
);

create table links (
	id integer primary key,
	tv_show_id integer,
	user_id integer,
	link text,
	subscription boolean
);

create table comments (
	id integer primary key,
	comment text,
	user_id integer,
	tv_show_id integer
);

create table ratings (
	id integer primary key,
	rating integer,
	tv_show_id integer,
	user_id integer
);