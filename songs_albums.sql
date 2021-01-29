/*
 * TODO: Create a table called 'songs' that has the following fields:
 * - id - integer, primary key
 * - name - string
 * - album_id - foreign key
 * 
 * Note that album - song is a one-to-many relationship, so no bridge table is needed.
 */
CREATE TABLE Songs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(70) NOT NULL,
    album_id INTEGER NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Albums(id)
 );

CREATE TABLE Albums (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(70) NOT NULL,
    artist VARCHAR(70) NOT NULL,
    year_published INTEGER NOT NULL
);

/* 
 * TODO: Insert at least 4 rows of data into the songs table. 
 You can change up the albums as well. :)
 */
 INSERT INTO Songs
     (name, album_id)
 VALUES
     ('My song 1', 1),
     ('My song 2', 2),
     ('My song 3', 3),
     ('My song 4', 4),
     ('My song 5', 5)
 ;
 
 INSERT INTO Albums
     (name, artist, year_published)
 VALUES
     ('The Dark Side of the Moon', 'Pink Floyd', 1973),
     ('Abbey Road', 'The Beatles', 1969),
     ('Hotel California', 'Eagles', 1976),
     ('Born in the U.S.A.', 'Bruce Springsteen', 1984),
     ('California', 'Blink-182', 2016)
 ;
 
 
/* TODO: Write a query here to select all songs */
SELECT * FROM Songs;

SELECT * FROM Albums;

/* 
 * TODO: Write a table join query to construct a table of 
 Song Name : Album Name
 */
SELECT * FROM Albums
JOIN Songs ON Albums.id = Songs.album_id;

/*
 * TODO: Find all albums published between 1970 and 1980.
 */
SELECT * FROM Albums
WHERE Albums.year_published > 1970 AND Albums.year_published < 1980;

/*
 * TODO: Find all songs on albums published between 1970 and 1980. 
 *(Hint: Use a table join.)
 */
SELECT * FROM Albums
JOIN Songs ON Albums.id = Songs.album_id
WHERE Albums.year_published > 1970 AND Albums.year_published < 1980;
 
/*
 * TODO: Find all songs on albums with names containing 'California'.
 */
SELECT * FROM Songs
JOIN Albums ON Songs.album_id = Albums.id
WHERE Albums.name LIKE 'California';
