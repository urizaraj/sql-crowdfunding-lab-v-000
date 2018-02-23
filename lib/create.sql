create table projects (
  id integer primary key,
  title text,
  category text,
  funding_goal integer,
  start_date integer,
  end_date integer
);

create table users (
  id primary key integer,
  name text,
  age integer
);

create table pledges (
  id primary key integer,
  amount integer,
  user integer,
  project integer
);
