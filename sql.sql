/* mudou o arquivo! */
create database nutrition1;

create table user(
	id bigint not null auto_increment,    
    user_name varchar(100) not null,
    user_age int not null,
    user_dob datetime not null default now(),
    user_height double not null,
    user_weight int not null,
    primary key(id)
);
insert into user 
(user_name,user_age,user_height,user_weight,user_dob)
values
('João',35,1.7,71,'2023-02-13 19:52:00');

insert into user 
(user_name,user_age,user_height,user_weight)
values
('Francisco',26,1.85,90);

insert into user 
(user_name,user_age,user_height,user_weight)
values
('Larissa',20,1.5,63);


create table day(
	id bigint not null auto_increment,
    day date not null,
    user_fk bigint not null,
    primary key(id),
    foreign key(user_fk) references user(id)
);

select *from user;

insert into day (day,user_fk) values ('2023-01-07', 2); 
insert into day (day,user_fk) values ('2023-01-08', 2); 
insert into day (day,user_fk) values ('2023-01-07', 1); 
insert into day (day,user_fk) values ('2023-02-02', 3); 

select *from day;



create table meals(
	id bigint not null auto_increment,
    calories int not null,
    fat int,
    carbohydrates int not null,
    fribre int,
    protein int,
    day_fk bigint not null,
    primary key(id),
    foreign key(day_fk) references day(id)
);

insert into meals 
(calories, fat, carbohydrates, fribre, protein, day_fk)
values 
(670,15,178,50,78,2);

insert into meals 
(calories, fat, carbohydrates, fribre, protein, day_fk)
values 
(158,7,177,100,100,3);

select *from meals;









