drop table if exists tv_shows;
drop table if exists genres;


create table tv_shows (
	id primary key,
	genre id integer,
	rating integer,
	info text,
	link varchar,
	is_sub? integer
);

create table genres (
	id primary key,
	name varchar
)