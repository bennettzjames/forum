drop table if exists users;
drop table if exists tv_shows;
drop table if exists genres;
drop table if exists links;
drop table if exists comments;

create table users (
	id integer primary key,
	username varchar,
	avatar_img varchar
);


create table tv_shows (
	id integer primary key,
	genre_id integer,
	title varchar,
	rating integer,
	info text
);

create table genres (
	id integer primary key,
	name varchar
);


create table links (
	id integer primary key,
	tv_show_id integer,
	user_id integer,
	link text,
	subscription integer
);

create table comments (
	id integer primary key,
	comment text,
	user_id integer,
	tv_show_id integer
);