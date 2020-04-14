create database if not exists flick-pick;
use flick-pick;

create table if not exists movie (
    movie_id int auto_increment not null,
    movie_title nvarchar(255) not null,
    poster_url nvarchar(511) null,
    description nvarchar(1023) null,
    release_date datetime null,
    director nvarchar(255) null,


    primary key (movie_id)
);

create table if not exists review (
    review_id int auto_increment not null,
    primary key (review_id)
);

create table if not exists genre (
    genre_id int auto_increment not null,
    primary key (genre_id)
);

create table if not exists user (
    user_id int auto_increment not null,
    user_name nvarchar(255) not null,
    display_name nvarchar(100) not null,
    active bit not null default 1,
    password nvarchar(255) not null,
    date_created datetime not null,
    date_modified datetime not null,

    primary key (user_id),
    unique key (user_name)
);
