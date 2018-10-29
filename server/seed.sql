DROP TABLE IF EXISTS Users CASCADE;
DROP TABLE IF EXISTS Shops CASCADE;
DROP TABLE IF EXISTS Likes CASCADE;

CREATE TABLE Users(
    user_id serial primary key,
    first_name VARCHAR(15),
    last_name VARCHAR(15),
    login VARCHAR(20),
    password VARCHAR(15)
);

CREATE TABLE Shops(
    shop_id serial primary key,
    shop_name VARCHAR(50),
    shop_distance_meters int,
    shop_photo bytea
);

CREATE TABLE Likes(
    user_id int REFERENCES Users (user_id) ON DELETE CASCADE,
    shop_id int REFERENCES Shops (shop_id) ON DELETE CASCADE
);

insert into Shops(shop_name,shop_distance_meters,shop_photo) values('Big Bazaar', 500, bytea('../static/Big_Bazaar.jpg'));
insert into Shops(shop_name,shop_distance_meters,shop_photo) values('Decathlon', 800, bytea('../static/Decathlon.jpg'));
insert into Shops(shop_name,shop_distance_meters,shop_photo) values('Flip Flop Shops', 300, bytea('../static/Flip_Flop_Shops.jpg'));
insert into Shops(shop_name,shop_distance_meters,shop_photo) values('Midlands Simon Community Shop', 1500, bytea('../static/Midlands_Simon_Community_Shop.jpg'));
insert into Shops(shop_name,shop_distance_meters,shop_photo) values('Modern Book Shop', 1300, bytea('../static/Modern_Book_Shop.jpg'));
insert into Shops(shop_name,shop_distance_meters,shop_photo) values('The Body Shop', 1700, bytea('../static/The_Body_Shop.jpg'));





