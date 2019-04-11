drop table if exists comments;
create table comments (
  id integer primary key,
  body text
);

insert into comments (body) values ('筋トレ');
insert into comments (body) values ('ナンパ');
insert into comments (body) values ('sex');