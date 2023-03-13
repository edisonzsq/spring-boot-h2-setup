create table public.users (
    id int auto_increment,
    email varchar(255) not null,
    created_at timestamp default current_timestamp,
    primary key (id)
);