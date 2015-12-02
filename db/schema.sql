drop table if exists users;
drop table if exists tv_shows;
drop table if exists genres;
drop table if exists links;

create table users (
	id integer primary key,
	username varchar,
	avatar_img varchar
);


create table tv_shows (
	id integer primary key,
	title varchar,
	genre_id integer,
	rating integer,
	info text,
	link_id integer
	
);

create table genres (
	id integer primary key,
	name varchar
);


create table links (
	id integer primary key,
	show_id integer,
	link text,
	subscription integer
);