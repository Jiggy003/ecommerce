create database if not exists ecommerce;
use ecommerce;
create table if not exists invoices(
id int not null auto_increment,
customer_name varchar(225) not null,
date DATETIME not null,
amount int not null,
status varchar(225),
delivery_status varchar(225) not null,
primary key(id)
);

use ecommerce;
create table if not exists products(
id int not null auto_increment,
name varchar(225),
description varchar(225),
price int not null,
primary key(id)
);

use ecommerce;
create table if not exists orders(
id int not null,
invoices_id int not null,
products_id int not null, 
quantity int not null,
date DATETIME not null,
delivery_date DATETIME not null,
primary key(id),
foreign key(invoices_id) references invoices(id),
foreign key(products_id) references products(id)
);

use ecommerce;
insert into invoices (customer_name,amount,date,status,delivery_status) values('James Smith',67,'2021-06-08 14:46:00.130367','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Sonia Cruz',59,'2021-06-08 14:46:00.140669','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Robert Smith',29,'2021-06-08 14:46:00.151314','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Mario Mcdaniel',60,'2021-06-08 14:46:00.161403','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Kimberly Watkins',96,'2021-06-08 14:46:00.171881','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('David Barnes',20,'2021-06-08 14:46:00.182163','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Carol Johnson',45,'2021-06-08 14:46:00.192548','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Alicia Morrison',72,'2021-06-08 14:46:00.202635','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Dennis Richard',29,'2021-06-08 14:46:00.212720','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Andrea Sanchez',72,'2021-06-08 14:46:00.222617','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Matthew Lee',29,'2021-06-08 14:46:00.232614','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Joan Day',35,'2021-06-08 14:46:00.242766','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Samantha Davis',21,'2021-06-08 14:46:00.253051','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Kevin Gonzalez',52,'2021-06-08 14:46:00.263092','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Tracy Davies',98,'2021-06-08 14:46:00.273213','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jeffery Burnett',43,'2021-06-08 14:46:00.283095','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Joshua Martin',37,'2021-06-08 14:46:00.293097','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jeffrey Gonzalez',66,'2021-06-08 14:46:00.303395','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Angel Bowman',11,'2021-06-08 14:46:00.313400','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Miranda Hansen',81,'2021-06-08 14:46:00.323330','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Rachel Davenport',91,'2021-06-08 14:46:00.333416','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Meagan Mitchell',31,'2021-06-08 14:46:00.343353','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Kenneth Lowery',11,'2021-06-08 14:46:00.353221','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jeffrey Phillips',66,'2021-06-08 14:46:00.363184','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Nicole Rice',32,'2021-06-08 14:46:00.373035','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Alan Nunez',89,'2021-06-08 14:46:00.383015','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Nicole Mccann',9,'2021-06-08 14:46:00.393232','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Theresa Wright',35,'2021-06-08 14:46:00.403255','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jason Petty',72,'2021-06-08 14:46:00.413233','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Timothy Brown',52,'2021-06-08 14:46:00.423219','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Xavier Kane',41,'2021-06-08 14:46:00.433058','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Lisa Gomez',27,'2021-06-08 14:46:00.442988','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Charles Payne',48,'2021-06-08 14:46:00.453293','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Walter Maynard',21,'2021-06-08 14:46:00.463238','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Daisy Knight',84,'2021-06-08 14:46:00.473214','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Joseph Morgan',86,'2021-06-08 14:46:00.483140','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Donald Gordon',31,'2021-06-08 14:46:00.493493','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Frank Klein',76,'2021-06-08 14:46:00.503533','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Tony Walters',39,'2021-06-08 14:46:00.513515','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Scott Greene',72,'2021-06-08 14:46:00.523605','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Natalie Carter',6,'2021-06-08 14:46:00.533550','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Amy Wyatt',40,'2021-06-08 14:46:00.543401','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Sean Underwood',3,'2021-06-08 14:46:00.553352','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jessica Walker',70,'2021-06-08 14:46:00.563543','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Hannah Carpenter',25,'2021-06-08 14:46:00.573659','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Terry Baker',9,'2021-06-08 14:46:00.583941','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Brandon Morris',25,'2021-06-08 14:46:00.593964','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Molly Duran',77,'2021-06-08 14:46:00.604048','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Renee Bowman',90,'2021-06-08 14:46:00.614157','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Felicia Ortiz',70,'2021-06-08 14:46:00.624088','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Cheryl Williams',38,'2021-06-08 14:46:00.633999','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Miguel Stewart',87,'2021-06-08 14:46:00.643949','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Gloria Gibson',58,'2021-06-08 14:46:00.654035','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jessica Yates',71,'2021-06-08 14:46:00.664118','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Michelle Morales',72,'2021-06-08 14:46:00.674165','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Sydney Olson',70,'2021-06-08 14:46:00.684211','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Veronica Young',43,'2021-06-08 14:46:00.694199','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Emily Dixon',32,'2021-06-08 14:46:00.704444','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Melissa Nguyen',97,'2021-06-08 14:46:00.714470','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Melissa Robinson',11,'2021-06-08 14:46:00.724484','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('David Alexander',11,'2021-06-08 14:46:00.734522','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('James King',41,'2021-06-08 14:46:00.744454','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Douglas Young',59,'2021-06-08 14:46:00.754324','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Charles Jordan',78,'2021-06-08 14:46:00.764395','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Elizabeth Peterson',60,'2021-06-08 14:46:00.774255','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Steven Taylor',5,'2021-06-08 14:46:00.784368','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Breanna Martin',20,'2021-06-08 14:46:00.794608','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Travis Solomon',75,'2021-06-08 14:46:00.804684','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Logan Martinez',9,'2021-06-08 14:46:00.814807','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Daniel Moon',71,'2021-06-08 14:46:00.824742','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Samantha Brown',14,'2021-06-08 14:46:00.834861','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Deborah Frye',85,'2021-06-08 14:46:00.844873','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Alexis Kennedy',52,'2021-06-08 14:46:00.855033','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Michael Rubio',75,'2021-06-08 14:46:00.865607','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Tanya Cantrell',65,'2021-06-08 14:46:00.875642','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Erin Campbell',34,'2021-06-08 14:46:00.885689','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Gwendolyn Hunter',66,'2021-06-08 14:46:00.895893','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Cheryl Sanchez DDS',76,'2021-06-08 14:46:00.906070','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Eric Smith',25,'2021-06-08 14:46:00.916131','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Michael Bridges',12,'2021-06-08 14:46:00.926208','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jennifer Long',2,'2021-06-08 14:46:00.936184','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Brandon Ashley',88,'2021-06-08 14:46:00.946018','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Garrett Morrison',28,'2021-06-08 14:46:00.956012','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Colin Patton',67,'2021-06-08 14:46:00.965996','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Ann Cordova',47,'2021-06-08 14:46:00.976209','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Christopher Perez',45,'2021-06-08 14:46:00.986290','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Dustin Garcia',0,'2021-06-08 14:46:00.996231','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Timothy Nunez',78,'2021-06-08 14:46:01.006151','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Sandra Miller',76,'2021-06-08 14:46:01.016276','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Nathan Allison',68,'2021-06-08 14:46:01.026147','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Allison Petty',15,'2021-06-08 14:46:01.036048','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Howard Lee',42,'2021-06-08 14:46:01.046055','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Nicholas Hodges',76,'2021-06-08 14:46:01.056050','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jennifer Williams',45,'2021-06-08 14:46:01.066000','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Michael Harrison',11,'2021-06-08 14:46:01.076093','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Kathryn Meadows',33,'2021-06-08 14:46:01.086105','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Shannon Dixon',27,'2021-06-08 14:46:01.096175','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Renee Massey',45,'2021-06-08 14:46:01.106474','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Todd Reed',59,'2021-06-08 14:46:01.116513','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Mary Hunt',34,'2021-06-08 14:46:01.126436','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jordan Ortiz',86,'2021-06-08 14:46:01.136439','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Joseph Cochran',39,'2021-06-08 14:46:01.146272','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Charles Johnson',31,'2021-06-08 14:46:01.156206','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Sean Stevens',20,'2021-06-08 14:46:01.166372','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Kristin Gonzalez',96,'2021-06-08 14:46:01.176529','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('David Wilson',13,'2021-06-08 14:46:01.186593','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Wendy Davis',96,'2021-06-08 14:46:01.196528','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Karen Le',56,'2021-06-08 14:46:01.206609','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Ashley Pacheco',49,'2021-06-08 14:46:01.216552','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Christina Rogers',8,'2021-06-08 14:46:01.226447','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Sara Vasquez',41,'2021-06-08 14:46:01.236897','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Lisa Mcneil',77,'2021-06-08 14:46:01.246947','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Loretta Ramirez',21,'2021-06-08 14:46:01.257130','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jeffrey Anderson',13,'2021-06-08 14:46:01.267348','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Christine Hart',8,'2021-06-08 14:46:01.277279','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Ryan Reyes',66,'2021-06-08 14:46:01.287200','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Tony Reynolds',82,'2021-06-08 14:46:01.297306','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Tanya Stark',20,'2021-06-08 14:46:01.307319','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Dr. Aaron Carter Jr.',14,'2021-06-08 14:46:01.317410','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Daniel Perry',54,'2021-06-08 14:46:01.327476','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Alicia Long',19,'2021-06-08 14:46:01.337483','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Martha Leonard',33,'2021-06-08 14:46:01.347417','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Marissa Bradley',70,'2021-06-08 14:46:01.357355','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jessica Hicks',39,'2021-06-08 14:46:01.367476','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Karen Hall',72,'2021-06-08 14:46:01.377608','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Madeline Haney',3,'2021-06-08 14:46:01.387687','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Rebekah Richards',79,'2021-06-08 14:46:01.397684','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Mr. Jacob Moody',79,'2021-06-08 14:46:01.407600','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Timothy Lawson',81,'2021-06-08 14:46:01.417550','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Charles Lewis',1,'2021-06-08 14:46:01.427457','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Sarah Smith',13,'2021-06-08 14:46:01.437391','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Christine Lee',15,'2021-06-08 14:46:01.447427','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Ashley Jones',21,'2021-06-08 14:46:01.457488','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jennifer Garrison',23,'2021-06-08 14:46:01.467489','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Sally Ali',7,'2021-06-08 14:46:01.477558','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Richard Hansen',70,'2021-06-08 14:46:01.487412','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Phillip Mcneil',33,'2021-06-08 14:46:01.497335','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Wanda Johnson',48,'2021-06-08 14:46:01.507655','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Matthew Barry',74,'2021-06-08 14:46:01.517643','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Curtis Young',59,'2021-06-08 14:46:01.527547','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Duane Smith',88,'2021-06-08 14:46:01.537531','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Cheryl Rosario',42,'2021-06-08 14:46:01.547527','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Timothy Anderson',86,'2021-06-08 14:46:01.557650','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Rachel Williams',64,'2021-06-08 14:46:01.567963','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Linda Sanchez',83,'2021-06-08 14:46:01.578361','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Nancy Scott',28,'2021-06-08 14:46:01.588520','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Sheri Hayden',59,'2021-06-08 14:46:01.598539','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Nathaniel Rivera',62,'2021-06-08 14:46:01.608959','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Barbara Perry',76,'2021-06-08 14:46:01.618869','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Matthew Jennings',56,'2021-06-08 14:46:01.628796','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Renee Hall',92,'2021-06-08 14:46:01.638759','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Melissa Coleman',46,'2021-06-08 14:46:01.648727','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Brandon Bryant',80,'2021-06-08 14:46:01.658796','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Victoria Smith',80,'2021-06-08 14:46:01.669069','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Kathleen Taylor',38,'2021-06-08 14:46:01.679030','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Stephen Murphy',31,'2021-06-08 14:46:01.688954','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Ronald Henderson MD',45,'2021-06-08 14:46:01.699011','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Timothy Hood',76,'2021-06-08 14:46:01.709085','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Peter Walker',36,'2021-06-08 14:46:01.719060','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Joseph Cisneros',2,'2021-06-08 14:46:01.729224','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Paula Pitts',71,'2021-06-08 14:46:01.739154','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Charles Lawson',95,'2021-06-08 14:46:01.748998','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Lisa Baker',61,'2021-06-08 14:46:01.759031','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Chloe Jones',37,'2021-06-08 14:46:01.769194','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Kaitlyn Terry',87,'2021-06-08 14:46:01.779196','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('William Gibbs',63,'2021-06-08 14:46:01.789457','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Emily Allen',99,'2021-06-08 14:46:01.799450','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Elizabeth Farrell',27,'2021-06-08 14:46:01.809305','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Bryan Buckley',4,'2021-06-08 14:46:01.819335','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Heather Ryan MD',24,'2021-06-08 14:46:01.829182','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jessica English',36,'2021-06-08 14:46:01.839063','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('David Allen',2,'2021-06-08 14:46:01.849144','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Beverly Martinez',85,'2021-06-08 14:46:01.859227','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Janice Brown',40,'2021-06-08 14:46:01.869232','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jordan Russell',32,'2021-06-08 14:46:01.879299','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Richard Strickland',67,'2021-06-08 14:46:01.889411','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('David Cisneros Jr.',52,'2021-06-08 14:46:01.899697','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Casey Mcdonald',5,'2021-06-08 14:46:01.909814','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Joe Brown',89,'2021-06-08 14:46:01.920135','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Amanda Morales',43,'2021-06-08 14:46:01.930187','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Ricardo Guerrero',18,'2021-06-08 14:46:01.940149','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Frank Hampton',11,'2021-06-08 14:46:01.950173','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Morgan Wyatt',26,'2021-06-08 14:46:01.960118','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Michael Mclaughlin',66,'2021-06-08 14:46:01.970219','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Joshua Ortega',31,'2021-06-08 14:46:01.980855','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Tammy Perez',8,'2021-06-08 14:46:01.990929','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jodi Fuller',97,'2021-06-08 14:46:02.000977','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Amanda Brown',14,'2021-06-08 14:46:02.025635','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('William Williams II',95,'2021-06-08 14:46:02.035680','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Duane Duffy',60,'2021-06-08 14:46:02.045674','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Kelly Sheppard',93,'2021-06-08 14:46:02.055827','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Mark Rivera',14,'2021-06-08 14:46:02.065964','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Chloe Gay',10,'2021-06-08 14:46:02.076090','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Kara Reid',39,'2021-06-08 14:46:02.086040','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Frank Grant',86,'2021-06-08 14:46:02.095994','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jessica Lopez',85,'2021-06-08 14:46:02.106210','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Dustin Harper',53,'2021-06-08 14:46:02.116299','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('David Rivera',20,'2021-06-08 14:46:02.126195','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Kimberly Shelton',88,'2021-06-08 14:46:02.136192','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Katie Taylor',22,'2021-06-08 14:46:02.146068','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Rebecca Campbell',56,'2021-06-08 14:46:02.156004','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Shannon Marquez',13,'2021-06-08 14:46:02.166093','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Cody Green',42,'2021-06-08 14:46:02.176925','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Timothy Wood',69,'2021-06-08 14:46:02.187648','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Manuel Hurst',0,'2021-06-08 14:46:02.198454','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Colleen Gibson',56,'2021-06-08 14:46:02.209170','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Charles Miller',18,'2021-06-08 14:46:02.219761','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Eric Cox',52,'2021-06-08 14:46:02.230452','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Paul Campbell',70,'2021-06-08 14:46:02.241137','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Kenneth Harris',47,'2021-06-08 14:46:02.251943','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Clarence Chaney',57,'2021-06-08 14:46:02.262123','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Tanner Brown',37,'2021-06-08 14:46:02.272143','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Roberto Bell',97,'2021-06-08 14:46:02.282028','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Brenda Goodman',50,'2021-06-08 14:46:02.292064','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Kaitlyn Martin',46,'2021-06-08 14:46:02.302093','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jennifer Mcintosh',60,'2021-06-08 14:46:02.312209','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Angela Collins',72,'2021-06-08 14:46:02.322329','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Teresa Tate',30,'2021-06-08 14:46:02.332278','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jill Molina',84,'2021-06-08 14:46:02.342168','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jesse Li',55,'2021-06-08 14:46:02.352192','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('James Anderson',6,'2021-06-08 14:46:02.362097','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Kent Pierce DDS',89,'2021-06-08 14:46:02.372139','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Cameron Peterson',95,'2021-06-08 14:46:02.382095','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Sarah Jackson',45,'2021-06-08 14:46:02.392551','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Thomas Gomez',48,'2021-06-08 14:46:02.402330','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Clinton Green',48,'2021-06-08 14:46:02.412178','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Alexandra Obrien',94,'2021-06-08 14:46:02.422164','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Kelli Hughes',42,'2021-06-08 14:46:02.432063','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Bradley Ortiz',95,'2021-06-08 14:46:02.441890','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Elizabeth Hart',77,'2021-06-08 14:46:02.451937','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Robert Charles',54,'2021-06-08 14:46:02.461926','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jonathon Carr',74,'2021-06-08 14:46:02.471922','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Samantha Flores',80,'2021-06-08 14:46:02.481971','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Gregory Dickson',17,'2021-06-08 14:46:02.491746','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Samuel Olsen',75,'2021-06-08 14:46:02.501675','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Michelle Khan',4,'2021-06-08 14:46:02.511904','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Michael George',45,'2021-06-08 14:46:02.521829','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('David Mack',66,'2021-06-08 14:46:02.531735','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Cindy Alvarez',34,'2021-06-08 14:46:02.541693','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Mary Scott',19,'2021-06-08 14:46:02.551771','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Caroline Landry',6,'2021-06-08 14:46:02.562039','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jessica Brown',70,'2021-06-08 14:46:02.572505','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Mario Jones',82,'2021-06-08 14:46:02.582613','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Leah Cunningham',53,'2021-06-08 14:46:02.592777','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Mr. Matthew Carter',49,'2021-06-08 14:46:02.602880','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jennifer Jackson',33,'2021-06-08 14:46:02.612824','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Stanley Green DDS',41,'2021-06-08 14:46:02.622711','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Clifford May',85,'2021-06-08 14:46:02.632707','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Stacy Christian',70,'2021-06-08 14:46:02.642553','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Alexander Morgan',27,'2021-06-08 14:46:02.652614','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Sarah Johnson',6,'2021-06-08 14:46:02.662981','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Eddie Stephens',79,'2021-06-08 14:46:02.672970','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Linda Heath',35,'2021-06-08 14:46:02.682957','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Timothy Villarreal',10,'2021-06-08 14:46:02.692891','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Kenneth Rios',18,'2021-06-08 14:46:02.702846','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jeffrey Montgomery',62,'2021-06-08 14:46:02.712903','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Robert Flynn',55,'2021-06-08 14:46:02.722930','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Donna Stephens',99,'2021-06-08 14:46:02.733030','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Aaron Walker',91,'2021-06-08 14:46:02.742904','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Charles Jackson',69,'2021-06-08 14:46:02.752798','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Gloria Hicks',92,'2021-06-08 14:46:02.763160','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Nicole Osborne',68,'2021-06-08 14:46:02.773233','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Oscar Holt',52,'2021-06-08 14:46:02.783196','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Laura Conner',31,'2021-06-08 14:46:02.793319','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Sherry Brown',52,'2021-06-08 14:46:02.803208','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Michelle Garcia',23,'2021-06-08 14:46:02.813022','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Teresa Lee',11,'2021-06-08 14:46:02.822983','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Kyle Steele',4,'2021-06-08 14:46:02.832864','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Michele Shah',40,'2021-06-08 14:46:02.842726','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Sherry Johnston',4,'2021-06-08 14:46:02.852879','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Thomas Tanner',67,'2021-06-08 14:46:02.862872','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Matthew Kim',41,'2021-06-08 14:46:02.872884','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Charles Ruiz',57,'2021-06-08 14:46:02.882915','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Brooke Collier',87,'2021-06-08 14:46:02.892964','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Manuel Mcpherson',73,'2021-06-08 14:46:02.903024','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jack Watson',79,'2021-06-08 14:46:02.913267','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Stephanie Blanchard',49,'2021-06-08 14:46:02.923259','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Gary Scott',83,'2021-06-08 14:46:02.933146','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Gabriela Miller',88,'2021-06-08 14:46:02.943116','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Todd Meadows',22,'2021-06-08 14:46:02.953002','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Marc Taylor',88,'2021-06-08 14:46:02.962866','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Mark Pittman',13,'2021-06-08 14:46:02.973077','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Meghan Navarro',85,'2021-06-08 14:46:02.983036','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Anne Hernandez',11,'2021-06-08 14:46:02.992979','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Thomas Scott',43,'2021-06-08 14:46:03.002985','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Sarah Coffey',51,'2021-06-08 14:46:03.012915','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Bernard Walker',27,'2021-06-08 14:46:03.022736','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Brian Brown',31,'2021-06-08 14:46:03.032673','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Paige Cortez',54,'2021-06-08 14:46:03.042513','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Ms. Jennifer Brown',5,'2021-06-08 14:46:03.052573','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Nathaniel Sharp',95,'2021-06-08 14:46:03.062693','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Frederick Harrison',94,'2021-06-08 14:46:03.072606','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jennifer Beard',53,'2021-06-08 14:46:03.082546','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Robert Hodge',68,'2021-06-08 14:46:03.092433','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Mary Dominguez',79,'2021-06-08 14:46:03.102566','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Elizabeth Flores',35,'2021-06-08 14:46:03.112612','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jessica Tucker',47,'2021-06-08 14:46:03.122559','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Lisa Rojas',69,'2021-06-08 14:46:03.132937','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Kathleen Hunt',38,'2021-06-08 14:46:03.142862','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Frances Bowman',14,'2021-06-08 14:46:03.152869','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Mary Schaefer',68,'2021-06-08 14:46:03.162850','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Adrienne Patterson',41,'2021-06-08 14:46:03.172926','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Keith Lee',13,'2021-06-08 14:46:03.182837','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Michael Green',35,'2021-06-08 14:46:03.193699','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Angela Leonard',22,'2021-06-08 14:46:03.204430','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Amanda Williams',53,'2021-06-08 14:46:03.215170','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Cassandra Mueller MD',31,'2021-06-08 14:46:03.226016','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Judy Johnson',68,'2021-06-08 14:46:03.236786','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Shannon Ramos',51,'2021-06-08 14:46:03.247604','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Wanda Acosta',69,'2021-06-08 14:46:03.258670','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Scott Barton',19,'2021-06-08 14:46:03.269538','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Emily Trevino',14,'2021-06-08 14:46:03.280331','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Scott Moreno',6,'2021-06-08 14:46:03.291135','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Angela Garner',18,'2021-06-08 14:46:03.301968','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Sarah Smith',83,'2021-06-08 14:46:03.312825','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jeffrey Jackson MD',12,'2021-06-08 14:46:03.323758','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Robert Fleming',75,'2021-06-08 14:46:03.334467','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('William Freeman',62,'2021-06-08 14:46:03.345179','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Eric Jones',93,'2021-06-08 14:46:03.355943','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Tony James',69,'2021-06-08 14:46:03.366655','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Dustin Lewis',57,'2021-06-08 14:46:03.377490','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Angela Gray',61,'2021-06-08 14:46:03.388474','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Kristina Diaz',62,'2021-06-08 14:46:03.399257','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Anna Ellison',77,'2021-06-08 14:46:03.409943','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Aaron Mendoza',98,'2021-06-08 14:46:03.420735','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Bryan Richard',34,'2021-06-08 14:46:03.431432','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Luis Garcia',36,'2021-06-08 14:46:03.441951','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Gregory Lambert',11,'2021-06-08 14:46:03.452773','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('David Kline',5,'2021-06-08 14:46:03.463246','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jacob Yoder',88,'2021-06-08 14:46:03.473289','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jessica Decker',82,'2021-06-08 14:46:03.483342','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Mark Irwin',51,'2021-06-08 14:46:03.493381','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Kimberly Larson',78,'2021-06-08 14:46:03.503416','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Andrew Peterson',9,'2021-06-08 14:46:03.513531','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Aimee Simmons',94,'2021-06-08 14:46:03.524227','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Robert Lucas',47,'2021-06-08 14:46:03.534147','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('David Long DDS',70,'2021-06-08 14:46:03.544095','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Hannah Brooks',69,'2021-06-08 14:46:03.554342','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Richard Nixon',40,'2021-06-08 14:46:03.564618','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Ashley Higgins MD',93,'2021-06-08 14:46:03.574813','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Dr. David Strong MD',46,'2021-06-08 14:46:03.585097','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Tiffany Wilkins',89,'2021-06-08 14:46:03.595083','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Craig Garrison',78,'2021-06-08 14:46:03.605019','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Keith Hays',54,'2021-06-08 14:46:03.614985','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Lisa Davenport',89,'2021-06-08 14:46:03.624863','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Michele Oconnor',42,'2021-06-08 14:46:03.634684','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Kyle Cantrell',98,'2021-06-08 14:46:03.644624','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Amber Cunningham',91,'2021-06-08 14:46:03.654677','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Nicole Carpenter',75,'2021-06-08 14:46:03.664746','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jason Hart',71,'2021-06-08 14:46:03.674794','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('John Duarte',74,'2021-06-08 14:46:03.684752','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('James Schmidt',27,'2021-06-08 14:46:03.694575','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Stephen Smith',1,'2021-06-08 14:46:03.704758','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Wayne Wagner',73,'2021-06-08 14:46:03.714728','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Scott Vega',9,'2021-06-08 14:46:03.724689','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Brett Morton',29,'2021-06-08 14:46:03.734719','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Ryan Clements',75,'2021-06-08 14:46:03.744628','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('James Ross',40,'2021-06-08 14:46:03.754513','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Amber Beasley',13,'2021-06-08 14:46:03.764584','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Ronald Kelley',86,'2021-06-08 14:46:03.775419','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Kyle Hanna',57,'2021-06-08 14:46:03.786095','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Corey Harper',21,'2021-06-08 14:46:03.796928','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Brian Thompson',40,'2021-06-08 14:46:03.807579','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Taylor Stephens',4,'2021-06-08 14:46:03.818276','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Ruth Ritter',34,'2021-06-08 14:46:03.828963','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Theresa Sanders',56,'2021-06-08 14:46:03.839912','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Valerie Wolf',34,'2021-06-08 14:46:03.850693','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Allison Peterson',78,'2021-06-08 14:46:03.861460','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Tamara Johnson',54,'2021-06-08 14:46:03.872215','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Kimberly Nguyen',3,'2021-06-08 14:46:03.882869','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Mary Perry',60,'2021-06-08 14:46:03.893107','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Bryan Curry',78,'2021-06-08 14:46:03.903734','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Heather Camacho',6,'2021-06-08 14:46:03.913871','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Annette Hunter',9,'2021-06-08 14:46:03.923921','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Melissa Singh',66,'2021-06-08 14:46:03.933984','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Scott Elliott',89,'2021-06-08 14:46:03.943863','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jessica Moon',19,'2021-06-08 14:46:03.953964','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Keith Herring',11,'2021-06-08 14:46:03.964147','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jasmine Alvarado',22,'2021-06-08 14:46:03.974435','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Glen Harris',95,'2021-06-08 14:46:03.984664','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('William Andrews',39,'2021-06-08 14:46:03.994889','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Teresa Callahan',66,'2021-06-08 14:46:04.004966','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Yvonne Brown',45,'2021-06-08 14:46:04.015064','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('David Burgess',84,'2021-06-08 14:46:04.025276','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Kim Smith',97,'2021-06-08 14:46:04.035693','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Heather Estrada',42,'2021-06-08 14:46:04.046190','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Kevin Taylor',98,'2021-06-08 14:46:04.056691','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Manuel Miller',86,'2021-06-08 14:46:04.066970','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Christopher Mcmahon',73,'2021-06-08 14:46:04.077146','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Lisa May DDS',62,'2021-06-08 14:46:04.087606','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Andrea Tran',32,'2021-06-08 14:46:04.097996','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Tamara Smith',49,'2021-06-08 14:46:04.108286','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Virginia Nunez',82,'2021-06-08 14:46:04.118766','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Holly Smith',36,'2021-06-08 14:46:04.129164','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Lynn Lopez',67,'2021-06-08 14:46:04.139271','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Molly Dixon',67,'2021-06-08 14:46:04.149586','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jasmine Griffith',36,'2021-06-08 14:46:04.159705','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Laura Roberts',40,'2021-06-08 14:46:04.170044','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Carlos Williams',91,'2021-06-08 14:46:04.180435','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Tammy Nguyen',79,'2021-06-08 14:46:04.190931','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Meghan Morris',4,'2021-06-08 14:46:04.201089','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Kelsey Howard',99,'2021-06-08 14:46:04.211132','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Patricia Bates',57,'2021-06-08 14:46:04.221437','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('James Diaz',24,'2021-06-08 14:46:04.231876','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Tamara Reeves',20,'2021-06-08 14:46:04.242291','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Diane Holloway',56,'2021-06-08 14:46:04.252620','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Gabriela Roach',91,'2021-06-08 14:46:04.262797','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jonathan Adams',43,'2021-06-08 14:46:04.272918','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Daniel Jackson',32,'2021-06-08 14:46:04.283536','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Patricia Bell',48,'2021-06-08 14:46:04.293605','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Tara Evans',41,'2021-06-08 14:46:04.303871','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Joshua Kidd',12,'2021-06-08 14:46:04.314260','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Debra King',91,'2021-06-08 14:46:04.324515','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Angela Mann',13,'2021-06-08 14:46:04.334683','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Susan Chan',87,'2021-06-08 14:46:04.345193','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Connie Snyder',78,'2021-06-08 14:46:04.355482','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Samantha Sanchez',46,'2021-06-08 14:46:04.365634','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Douglas Pena',35,'2021-06-08 14:46:04.376122','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Stacey Morrison',54,'2021-06-08 14:46:04.386356','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Todd Evans',63,'2021-06-08 14:46:04.396599','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Daniel Anderson',81,'2021-06-08 14:46:04.406938','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Christopher Baker',77,'2021-06-08 14:46:04.417055','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Crystal Brown',81,'2021-06-08 14:46:04.427175','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Melissa Evans',67,'2021-06-08 14:46:04.437658','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Denise Anderson',91,'2021-06-08 14:46:04.448112','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Andrew Hess',90,'2021-06-08 14:46:04.458268','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Tamara Jones',14,'2021-06-08 14:46:04.468559','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Emily Mcmahon',55,'2021-06-08 14:46:04.478609','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Bryan Curtis',75,'2021-06-08 14:46:04.488611','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Vickie Warner',96,'2021-06-08 14:46:04.498854','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Sharon Thomas',39,'2021-06-08 14:46:04.509110','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Sarah Jacobs',40,'2021-06-08 14:46:04.519415','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Dalton Brown',36,'2021-06-08 14:46:04.529652','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Robin Bright',60,'2021-06-08 14:46:04.539801','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Rachel Smith',44,'2021-06-08 14:46:04.550123','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Cindy Long',3,'2021-06-08 14:46:04.560708','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Kaitlin Montoya',45,'2021-06-08 14:46:04.571655','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Robert Shaw',18,'2021-06-08 14:46:04.582191','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Nicholas Pittman',87,'2021-06-08 14:46:04.592566','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jennifer Silva',57,'2021-06-08 14:46:04.603127','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Rachel Nelson',21,'2021-06-08 14:46:04.613356','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('William Higgins',3,'2021-06-08 14:46:04.624593','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Olivia Castro',30,'2021-06-08 14:46:04.636546','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Robert Rush',38,'2021-06-08 14:46:04.647734','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Martin Thompson',20,'2021-06-08 14:46:04.658758','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Alejandro Jones',37,'2021-06-08 14:46:04.670780','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Robert Garcia',15,'2021-06-08 14:46:04.681392','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('April Kline',98,'2021-06-08 14:46:04.691999','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Ryan Peters',62,'2021-06-08 14:46:04.703454','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('David Harris',57,'2021-06-08 14:46:04.714525','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jason Adams',48,'2021-06-08 14:46:04.725433','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Mark Alvarado',32,'2021-06-08 14:46:04.736065','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Olivia Warner',90,'2021-06-08 14:46:04.746613','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Dustin Davis',21,'2021-06-08 14:46:04.757308','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Mary Williamson',92,'2021-06-08 14:46:04.767801','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Pamela Scott',98,'2021-06-08 14:46:04.777935','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Benjamin Kirby',39,'2021-06-08 14:46:04.788195','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Eric Long',70,'2021-06-08 14:46:04.798382','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Beth Harris',85,'2021-06-08 14:46:04.808344','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Christina Bishop',58,'2021-06-08 14:46:04.818345','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Caroline Evans',67,'2021-06-08 14:46:04.828445','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Michael Robinson',75,'2021-06-08 14:46:04.838659','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Holly Dixon',51,'2021-06-08 14:46:04.848984','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Martin Dorsey',48,'2021-06-08 14:46:04.859130','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Leah Campbell',8,'2021-06-08 14:46:04.869064','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Madison Murphy',79,'2021-06-08 14:46:04.878983','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jennifer Terry',14,'2021-06-08 14:46:04.889195','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Brianna Keller',62,'2021-06-08 14:46:04.899613','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Robert Blair',81,'2021-06-08 14:46:04.909960','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Lauren Brown',74,'2021-06-08 14:46:04.920205','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jessica Terrell',49,'2021-06-08 14:46:04.930406','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Whitney Bowman',93,'2021-06-08 14:46:04.940515','Paid','Successful');
insert into invoices (customer_name,amount,date,status,delivery_status) values('Jasmine Cunningham',32,'2021-06-08 14:46:04.950439','Paid','Successful');

INSERT INTO products (id,name,description,price) VALUES (1,'French Bread','Fresh',15),
 (2,'Carrots','Neat',3),
 (3,'Lettuce','Green',6),
 (4,'Tomato','Fleshy',5),
 (5,'Cucumber','Green',3),
 (6,'Green Pepper','Green',3),
 (7,'Broccoli','Green',2),
 (8,'Onions','Round',1),
 (9,'Apples','Red and Green',5),
 (10,'Bologna','Old',12),
 (11,'Salad dressing','Leafy',20),
 (12,'Refried Beans','Crunchy',3),
 (13,'Pizza Sauce','Red Hot',10),
 (14,'Macaroni','Slurry',4),
 (15,'Cheese','Yellow',3),
 (16,'Cheesy noodles','Tasty',9),
 (17,'Ramen','Spicy',7),
 (18,'White sugar','Crystal',13),
 (19,'Brown sugar','Crystal',15),
 (20,'Powdered sugar','Crystal',17),
 (21,'Flour','Powdery',30),
 (22,'Toilet Paper','Roll',15),
 (23,'Laundry detergent','Laundry',12),
 (24,'Napkins','Wipes',2),
 (25,'Margarine','Oily',5),
 (26,'Milk','Creamy',10),
 (27,'Eggs','Eggs',18),
 (28,'Orange Juice','Juice',10),
 (29,'Cranberry Juice','Juice',12),
 (30,'Apple Juice','Juice',12),
 (31,'Mango Juice','Juice',12),
 (32,'Soda','Juice',4),
 (33,'Yogurt','Juice',12),
 (34,'Tortillas','Wrapper',8),
 (35,'Crackers','Crunchy',7),
 (36,'Cheese nips','Crunchy',13),
 (37,'Frozen pizza','Chilly',40),
 (38,'Frozen Corn','Chilly',6),
 (39,'French fries','Crispy',25),
 (40,'Bagels','Crunchy',10),
 (41,'Chocolate','Sweet',7),
 (42,'Waffles','Sweet',15),
 (43,'Strips','Med',7),
 (44,'Chicken','Meat',20),
 (45,'Sausage','Meat',11),
 (46,'Red Pepper','Red',3),
 (47,'Gouda cheese','Yellow',5),
 (48,'Cheddar','Brown',9),
 (49,'Cinnamon','Brown',5),
 (50,'Snap peas','Green',14),
 (51,'Strawberries','Fruit',6),
 (52,'Green beans','Green',5),
 (53,'White corn','Crunchy',2),
 (54,'Blueberries','Blue',3),
 (55,'Sour cream','Creamy',6),
 (56,'Avocados','Green',7),
 (57,'Clementines','Wipe',16),
 (58,'Pears','Green',6),
 (59,'Fujis','Crunchy',7),
 (60,'Asparagus','Green',7),
 (61,'Kiwis','Green',3),
 (62,'Spinach','Green',8),
 (63,'Plantain','Yellow',1),
 (64,'Bananas','Yellow',5),
 (65,'Butter','Creamy',5),
 (66,'Agave Nectar','Sweet',8),
 (67,'Velveeta','Sweet',6),
 (68,'BBQ sauce','Spicy',11),
 (69,'DIced Tomatoes','Red',8),
 (70,'Almonds','Brown',12),
 (71,'Pistachio','Green',17),
 (72,'Salt','Crystal',3),
 (73,'Powdered Pepper','Powder',6),
 (74,'Beef Jerky','Meat',15),
 (75,'Potatoes','Brown',6),
 (76,'Squash','Yellow',5),
 (77,'Mushrooms','Brown',3),
 (78,'Hot dogs','Buns',12),
 (79,'Cereals','Crunchy',7),
 (80,'Coffee','Creamy',5),
 (81,'Tea','Creamy',3),
 (82,'Muffins','Sweet',13),
 (83,'Buns','Sweet',7),
 (84,'Cookies','Sweet',11),
 (85,'Candy','Sweet',3),
 (86,'Nuts','Cunchy',3),
 (87,'Raisins','Sweet',10),
 (88,'Vinegar','Yellow',5),
 (89,'Mustard','Yellow',5),
 (90,'Ketchup','Red',5),
 (91,'Honey','Sweet',6),
 (92,'Soap','Laundry',3),
 (93,'Shampoo','Laundry',9),
 (94,'Conditioner','Laundry',10),
 (95,'Razor','Laundry',1),
 (96,'Deodorant','Laundry',7),
 (97,'Shaving Cream','Laundry',5),
 (98,'Lotion','Laundry',9),
 (99,'Toothpaste','Laundry',2),
 (100,'Bleach','Laundry',7),
 (101,'Sponge','Laundry',3),
 (103,'Extention board','Electrical',25),
 (104,'Light Bulb','Electrical',5),
 (105,'Burner Phone','Electrical',50),
 (106,'Television','Electrical',75),
 (107,'Standing fan','Electrical',55),
 (108,'Home Theatre','Electrical',77),
 (109,'Beer','Drink',10),
 (110,'Wine','Drink',30),
 (111,'Liquor','Drink',10),
 (112,'Fish oil','Oil',7),
 (113,'Garlic','Brown',3),
 (114,'Pancake mix','Smooth',13),
 (115,'Water','Drink',5),
 (116,'Batteries','Electrical',9),
 (117,'Beans','Brown',3),
 (118,'Oranges','Fruit',3),
 (119,'Pen','ink',1),
 (120,'Mask','Small',2);