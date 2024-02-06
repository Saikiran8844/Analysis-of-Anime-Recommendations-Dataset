create database anime;
use anime;
create table anime_revies(
anime_id INT PRIMARY KEY,
name VARCHAR(50),
genre VARCHAR(100),
type VARCHAR(100),
episodes int,
rating DECIMAL(10, 2),
members int
);

SET GLOBAL local_infile=1;

select * from anime_revies;

ALTER TABLE anime_revies RENAME TO  anime_reviews;

SET GLOBAL local_infile=1;

LOAD DATA Local INFILE 'C:\Users\s0132100\Desktop\My Computer\Projects\anime_review\anime.csv'
INTO TABLE anime_reviews
IGNORE 1 ROWS;

--anime.csv