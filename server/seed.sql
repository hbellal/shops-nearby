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
    shop_distance int,
    shop_photo bytea
);

CREATE TABLE Likes(
    user_id int REFERENCES Users (user_id) ON DELETE CASCADE,
    shop_id int REFERENCES Shops (shop_id) ON DELETE CASCADE
);