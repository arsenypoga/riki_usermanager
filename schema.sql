drop table if exists users;
create table users (
  --This table will hold the values from User objects.
  --username is the primary key that will be used to index the database entries.
  username text primary key,
  /*active is an integer intended to be used as a boolean flag that will be used
   to determine if the user is "active"*/
  active integer not null,
  /*authentication will hold a number that will be used to reference an 
   authentication method that has been implemented.*/
  authentication_method integer not null,
  --passwords are store as text.
  password text not null,
  --hash will hold the hash string if the hash method is used.
  hash text not null,
  /*authenticated is an integer intended to be used as a boolean flag that the
   login method will use.*/
  authenticated integer not null,
  --roles will hold any roles in text that the user object is given.
  roles text not null
);