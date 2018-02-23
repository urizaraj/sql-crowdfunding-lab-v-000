create table projects (
  id integer primary key,
  title text,
  category text,
  funding_goal integer,
  start_date integer,
  end_date integer
);

create table users (
  id integer primary key,
  name text,
  age integer
);

create table pledges (
  id integer primary key,
  amount integer,
  user integer,
  project integer
);
