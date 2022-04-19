USE codeup_test_db;

SELECT 'The name of all albums by Pink Floyd' as caption, name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The genre of Thriller by Michael Jack is: ' as caption, genre FROM albums WHERE name = 'Thriller';
