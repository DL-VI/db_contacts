create table categories (
    cat_id serial primary key,
    name varchar(15) not null
);

create table contacts (
    c_id serial primary key,
    phone varchar(15) not null,
    email varchar(30) not null,
    summary varchar(30) not null,
    nickname varchar(15) not null,
    address varchar(30) not null,
    cat_id integer not null,
    foreign key (cat_id) references categories (cat_id) on delete cascade
);
