Last login: Tue Dec 12 16:54:32 on ttys001
Laurels-Air:~ laurelmiller$ /usr/local/mysql/bin/mysql -u root -p;
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 28
Server version: 5.7.19 MySQL Community Server (GPL)

Copyright (c) 2000, 2017, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> TEE /users/laurelmiller/desktop/final.sql
Logging to file '/users/laurelmiller/desktop/final.sql'
mysql> create database top_ten_songs;
Query OK, 1 row affected (0.01 sec)

mysql> 
mysql> use top_ten_songs;
Database changed
mysql> 
mysql> create table artist
    -> (
    -> band_name char (50) primary key,
    -> song_title char (50),
    -> genre char (50)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> 
mysql> create table song
    -> (
    -> song_title char (50),
    -> song_length char (3),
    -> rank int,
    -> why_favorite text (500),
    -> video_link char (100)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> 
mysql> create table album
    -> (
    -> band_name char (50),
    -> rank int,
    -> album_name char (50),
    -> track_num char (2),
    -> year_released char (4)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> 
mysql> create table band_members
    -> (
    -> guitar char (50),
    -> vocals char (50),
    -> drums char (50),
    -> keyboard char (50),
    -> bass char (50)
    -> );

show tables;

insert into artist
values('Pink Floyd', 'High Hopes', 'Progressive Rock');
insert into artist
values('Dream Theater', 'In The Name of God', 'Progressive Rock / Progressive Metal');
insert into artist
values('Phish', 'Fee', 'Progressive Rock / Jam Band');
insert into artist
values('Grateful Dead', 'Standing on The Moon', 'Progressive Rock / Jam Band');
insert into artist
values('Tom Petty', 'You Don\'t Know How it Feels', 'Heartland Rock / Rock and Roll');
insert into artist
values('Claypool Lennon Delirium', 'Breath of a Salesman', 'Psychedelic Rock / Experimental Rock / Art Rock');
insert into artist
values('The Guess Who', 'These Eyes', 'Rock / Pop / Psychedelic Rock');
insert into artist
values('Foo Fighters', 'I am a River', 'Alternative Rock / Post-Grunge / Hard Rock');
insert into artist
values('Baroness', 'Shock Me', 'Sludge/Alternative Metal / Progressive Rock');
insert into artist
values('Johnnie Johnson', 'Stepped in What?', 'Blues / Jazz / Rock and Roll');

seQuery OK, 0 rows affected (0.02 sec)

mysql> 
mysql> show tables;
+-------------------------+
| Tables_in_top_ten_songs |
+-------------------------+
| album                   |
| artist                  |
| band_members            |
| song                    |
+-------------------------+
4 rows in set (0.00 sec)

mysql> 
mysql> insert into artist
    -> values('Pink Floyd', 'High Hopes', 'Progressive Rock');
Query OK, 1 row affected (0.00 sec)

mysql> insert into artist
    -> values('Dream Theater', 'In The Name of God', 'Progressive Rock / Progressive Metal');
Query OK, 1 row affected (0.00 sec)

mysql> insert into artist
    -> values('Phish', 'Fee', 'Progressive Rock / Jam Band');
Query OK, 1 row affected (0.00 sec)

mysql> insert into artist
    -> values('Grateful Dead', 'Standing on The Moon', 'Progressive Rock / Jam Band');
Query OK, 1 row affected (0.00 sec)

mysql> insert into artist
    -> values('Tom Petty', 'You Don\'t Know How it Feels', 'Heartland Rock / Rock and Roll');
Query OK, 1 row affected (0.01 sec)

mysql> insert into artist
    -> values('Claypool Lennon Delirium', 'Breath of a Salesman', 'Psychedelic Rock / Experimental Rock / Art Rock');
Query OK, 1 row affected (0.00 sec)

mysql> insert into artist
    -> values('The Guess Who', 'These Eyes', 'Rock / Pop / Psychedelic Rock');
Query OK, 1 row affected (0.00 sec)

mysql> insert into artist
    -> values('Foo Fighters', 'I am a River', 'Alternative Rock / Post-Grunge / Hard Rock');
Query OK, 1 row affected (0.01 sec)

mysql> insert into artist
    -> values('Baroness', 'Shock Me', 'Sludge/Alternative Metal / Progressive Rock');
Query OK, 1 row affected (0.00 sec)

mysql> insert into artist
    -> values('Johnnie Johnson', 'Stepped in What?', 'Blues / Jazz / Rock and Roll');
Query OK, 1 row affected (0.00 sec)

mysql> 
mysql> select * from artist;
+--------------------------+-----------------------------+-------------------------------------------------+
| band_name                | song_title                  | genre                                           |
+--------------------------+-----------------------------+-------------------------------------------------+
| Baroness                 | Shock Me                    | Sludge/Alternative Metal / Progressive Rock     |
| Claypool Lennon Delirium | Breath of a Salesman        | Psychedelic Rock / Experimental Rock / Art Rock |
| Dream Theater            | In The Name of God          | Progressive Rock / Progressive Metal            |
| Foo Fighters             | I am a River                | Alternative Rock / Post-Grunge / Hard Rock      |
| Grateful Dead            | Standing on The Moon        | Progressive Rock / Jam Band                     |
| Johnnie Johnson          | Stepped in What?            | Blues / Jazz / Rock and Roll                    |
| Phish                    | Fee                         | Progressive Rock / Jam Band                     |
| Pink Floyd               | High Hopes                  | Progressive Rock                                |
| The Guess Who            | These Eyes                  | Rock / Pop / Psychedelic Rock                   |
| Tom Petty                | You Don't Know How it Feels | Heartland Rock / Rock and Roll                  |
+--------------------------+-----------------------------+-------------------------------------------------+
10 rows in set (0.00 sec)

mysql> 
mysql> insert into song
    -> values('High Hopes', 462, 1, 'The lyrics "The grass was geener on the other side" helps me to see the green I\'m standing on.', 'www.youtube.com/watch?v=7jMlFXouPk8');
Query OK, 1 row affected (0.01 sec)

mysql> insert into song
    -> values('In The Name of God', 854, 4, 'I love the heavy style of the song and the incredible talent the band exhibits', 'www.youtube.com/watch?v=MSI3KSo9DjM');
Query OK, 1 row affected (0.00 sec)

mysql> insert into song
    -> values('Fee', 323, 3, 'This song has silly lyrics and a catchy tune. One day I connected some of my emotions  with the lyrics "trying to live a life that\'s completely free". I had just left my marriage and was finally living a life that was more "free" than I had previously known.', 'www.youtube.com/watch?v=_72RmEedSE0');
Query OK, 1 row affected (0.00 sec)

mysql> insert into song
    -> values('Standing on The Moon', 320, 10, 'The dead has an uplifting, happy feeling. Standing on the moon, watching the whole world from a distance. I just like the song.', 'www.youtube.com/watch?v=kipR-HadbTs');
Query OK, 1 row affected (0.01 sec)

mysql> insert into song
    -> values('You Don\'t Know How it Feels', 288, 8, 'I like the simplicity of this song. It\'s a simple 2/4 drum beat and I like the harmonica.', 'www.youtube.com/watch?v=9TlBTPITo1I&list=PLbG3RCB1n956PKFpLHPOP2Q5TCkw5NAT3');
Query OK, 1 row affected (0.01 sec)

mysql> insert into song
    -> values('Breath of a Salesman', 207, 7, 'This song has a fun and funky beat and I love the guitar riff throughout.  Its fun to hear how much Sean Lennon sounds like his father.', 'www.youtube.com/watch?v=yMv4vl75WPk');
Query OK, 1 row affected (0.00 sec)

mysql> insert into song
    -> values('These Eyes', 233, 9, 'I just like this song.', 'www.youtube.com/watch?v=sw8nXCx5qgo');
Query OK, 1 row affected (0.00 sec)

mysql> insert into song
    -> values('I am a River', 428, 6, 'I watched the Foo Fighters series, \'Sonic Highways\' and I really liked how the band went around the country writing songs about the experience and how music was influenced in those particular parts of the country. This song was in New York City. I also love Grohl\'s voice.', 'www.youtube.com/watch?v=9cqHAgnub_M');
Query OK, 1 row affected (0.01 sec)

mysql> insert into song
    -> values('Shock Me', 257, 2, 'When I first heard this song, I was just diagnosed with lupus. It was interesting how I processed the initial shock, yet comfort, having a diagnosis. I felt like I needed something to shock me back into feeling my emotions, but at the same time, I didn\'t need anything else to shock me, I didn\'t need any more surprises but life is full of them.', 'www.youtube.com/watch?v=hS5osAdTnm0');
Query OK, 1 row affected (0.01 sec)

mysql> insert into song
    -> values('Stepped in What?', 248, 5, 'This song is funny. I listen to this song when Im having a bad day.', 'www.youtube.com/watch?v=5gNVj-U38i0');
Query OK, 1 row affected (0.00 sec)

mysql> 
mysql> select * from song;
+-----------------------------+-------------+------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| song_title                  | song_length | rank | why_favorite                                                                                                                                                                                                                                                                                                                                              | video_link                                                                  |
+-----------------------------+-------------+------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| High Hopes                  | 462         |    1 | The lyrics "The grass was geener on the other side" helps me to see the green I'm standing on.                                                                                                                                                                                                                                                            | www.youtube.com/watch?v=7jMlFXouPk8                                         |
| In The Name of God          | 854         |    4 | I love the heavy style of the song and the incredible talent the band exhibits                                                                                                                                                                                                                                                                            | www.youtube.com/watch?v=MSI3KSo9DjM                                         |
| Fee                         | 323         |    3 | This song has silly lyrics and a catchy tune. One day I connected some of my emotions  with the lyrics "trying to live a life that's completely free". I had just left my marriage and was finally living a life that was more "free" than I had previously known.                                                                                        | www.youtube.com/watch?v=_72RmEedSE0                                         |
| Standing on The Moon        | 320         |   10 | The dead has an uplifting, happy feeling. Standing on the moon, watching the whole world from a distance. I just like the song.                                                                                                                                                                                                                           | www.youtube.com/watch?v=kipR-HadbTs                                         |
| You Don't Know How it Feels | 288         |    8 | I like the simplicity of this song. It's a simple 2/4 drum beat and I like the harmonica.                                                                                                                                                                                                                                                                 | www.youtube.com/watch?v=9TlBTPITo1I&list=PLbG3RCB1n956PKFpLHPOP2Q5TCkw5NAT3 |
| Breath of a Salesman        | 207         |    7 | This song has a fun and funky beat and I love the guitar riff throughout.  Its fun to hear how much Sean Lennon sounds like his father.                                                                                                                                                                                                                   | www.youtube.com/watch?v=yMv4vl75WPk                                         |
| These Eyes                  | 233         |    9 | I just like this song.                                                                                                                                                                                                                                                                                                                                    | www.youtube.com/watch?v=sw8nXCx5qgo                                         |
| I am a River                | 428         |    6 | I watched the Foo Fighters series, 'Sonic Highways' and I really liked how the band went around the country writing songs about the experience and how music was influenced in those particular parts of the country. This song was in New York City. I also love Grohl's voice.                                                                          | www.youtube.com/watch?v=9cqHAgnub_M                                         |
| Shock Me                    | 257         |    2 | When I first heard this song, I was just diagnosed with lupus. It was interesting how I processed the initial shock, yet comfort, having a diagnosis. I felt like I needed something to shock me back into feeling my emotions, but at the same time, I didn't need anything else to shock me, I didn't need any more surprises but life is full of them. | www.youtube.com/watch?v=hS5osAdTnm0                                         |
| Stepped in What?            | 248         |    5 | This song is funny. I listen to this song when Im having a bad day.                                                                                                                                                                                                                                                                                       | www.youtube.com/watch?v=5gNVj-U38i0                                         |
+-----------------------------+-------------+------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------+
10 rows in set (0.00 sec)

mysql> 
mysql> 
mysql> 
mysql> insert into album
    -> values('Pink Floyd', 1, 'The Division Bell', 11, 1994); 
Query OK, 1 row affected (0.01 sec)

mysql> insert into album
    -> values('Dream Theater', 4, 'Train of Thought', 7, 2003);
Query OK, 1 row affected (0.00 sec)

mysql> insert into album
    -> values('Phish', 3, 'Junta', 1, 1989);
Query OK, 1 row affected (0.01 sec)

mysql> insert into album
    -> values('Grateful Dead', 10, 'Built to Last', 7, 1989);
Query OK, 1 row affected (0.00 sec)

mysql> insert into album
    -> values('Tom Petty', 8, 'Wildflowers', 2, 1994);
Query OK, 1 row affected (0.00 sec)

mysql> insert into album
    -> values('Claypool Lennon Delirium', 7, 'Monolith of Fobos', 6, 2016);
Query OK, 1 row affected (0.01 sec)

mysql> insert into album
    -> values('The Guess Who', 9, 'Wheatfield Soul', 1, 1969);
Query OK, 1 row affected (0.00 sec)

mysql> insert into album
    -> values('Foo Fighters', 6, 'Sonic Highways', 8, 2015);
Query OK, 1 row affected (0.01 sec)

mysql> insert into album
    -> values('Baroness', 2, 'Purple', 2, 2015);
Query OK, 1 row affected (0.00 sec)

mysql> insert into album
    -> values('Johnnie Johnson', 5, 'Johnnie B. Bad', 6, 1991);      
Query OK, 1 row affected (0.00 sec)

mysql> 
mysql> select * from album   
    -> 
    -> 
    -> insert into band_members
    -> values('David Gilmour', 'David Gilmour', 'Nick Mason', 'Richard Wright', 'N/A');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'insert into band_members
values('David Gilmour', 'David Gilmour', 'Nick Mason', ' at line 4
mysql> insert into band_members
    -> values('John Petrucci', 'James LaBrie', 'Mike Portnoy', 'Jordan Rudess', 'John Myung');
Query OK, 1 row affected (0.00 sec)

mysql> insert into band_members
    -> values('Trey Anastasio', 'Trey Anastasio', 'Jon Fishman', 'Page McConnel', 'Mike Gordon');
Query OK, 1 row affected (0.00 sec)

mysql> insert into band_members
    -> values('Jerry Garcia, Bob Weir', 'Jerry Garcia, Bob Weir', 'Bill Kreutzman, Mickey Hart', 'Brent Mydland', 'Phil Lesh');
Query OK, 1 row affected (0.01 sec)

mysql> insert into band_members
    -> values('Tom Petty, Mike Campbell', 'Tom Petty', 'Steve Ferrone, Lenny Castro', 'Benmont Tench', 'Howie Epstein');
Query OK, 1 row affected (0.00 sec)

mysql> insert into band_members
    -> values('Les Claypool, Sean Lennon', 'Les Claypool, Sean Lennon', 'Sean Lennon', 'N/A', 'Les Claypool');
Query OK, 1 row affected (0.00 sec)

mysql> insert into band_members
    -> values('Randy Bachman', 'Burton Cummings', 'Garry Peterson', 'Burton Cummings', 'Jim Kale');
Query OK, 1 row affected (0.01 sec)

mysql> insert into band_members
    -> values('Dave Grohl, Pat Smear', 'Dave Grohl', 'Taylor Hawkins', 'Rami Jaffee', 'Nate Mendel');
Query OK, 1 row affected (0.00 sec)

mysql> insert into band_members
    -> values('Pete Adams', 'John Dyer Baizley', 'Sebastian Thoas', 'Nick Jost', 'Nick Jost');
Query OK, 1 row affected (0.00 sec)

mysql> insert into band_members
    -> values('N/A', 'Johnnie Johnson', 'N/A', 'Johnnie Johnson', 'N/A');
Query OK, 1 row affected (0.01 sec)

mysql> 
mysql> select * from band_members;
+---------------------------+---------------------------+-----------------------------+-----------------+---------------+
| guitar                    | vocals                    | drums                       | keyboard        | bass          |
+---------------------------+---------------------------+-----------------------------+-----------------+---------------+
| John Petrucci             | James LaBrie              | Mike Portnoy                | Jordan Rudess   | John Myung    |
| Trey Anastasio            | Trey Anastasio            | Jon Fishman                 | Page McConnel   | Mike Gordon   |
| Jerry Garcia, Bob Weir    | Jerry Garcia, Bob Weir    | Bill Kreutzman, Mickey Hart | Brent Mydland   | Phil Lesh     |
| Tom Petty, Mike Campbell  | Tom Petty                 | Steve Ferrone, Lenny Castro | Benmont Tench   | Howie Epstein |
| Les Claypool, Sean Lennon | Les Claypool, Sean Lennon | Sean Lennon                 | N/A             | Les Claypool  |
| Randy Bachman             | Burton Cummings           | Garry Peterson              | Burton Cummings | Jim Kale      |
| Dave Grohl, Pat Smear     | Dave Grohl                | Taylor Hawkins              | Rami Jaffee     | Nate Mendel   |
| Pete Adams                | John Dyer Baizley         | Sebastian Thoas             | Nick Jost       | Nick Jost     |
| N/A                       | Johnnie Johnson           | N/A                         | Johnnie Johnson | N/A           |
+---------------------------+---------------------------+-----------------------------+-----------------+---------------+
9 rows in set (0.00 sec)

mysql> 
mysql> 
mysql> create view top_ten as
    -> select distinct song.rank, song.song_title, song.song_length, album.album_name, album.year_released, song.video_link 
    -> from song, album
    -> where song.rank = album.rank
    -> order by rank;
Query OK, 0 rows affected (0.01 sec)

mysql> 
mysql> select * from top_ten;
+------+-----------------------------+-------------+-------------------+---------------+-----------------------------------------------------------------------------+
| rank | song_title                  | song_length | album_name        | year_released | video_link                                                                  |
+------+-----------------------------+-------------+-------------------+---------------+-----------------------------------------------------------------------------+
|    1 | High Hopes                  | 462         | The Division Bell | 1994          | www.youtube.com/watch?v=7jMlFXouPk8                                         |
|    2 | Shock Me                    | 257         | Purple            | 2015          | www.youtube.com/watch?v=hS5osAdTnm0                                         |
|    3 | Fee                         | 323         | Junta             | 1989          | www.youtube.com/watch?v=_72RmEedSE0                                         |
|    4 | In The Name of God          | 854         | Train of Thought  | 2003          | www.youtube.com/watch?v=MSI3KSo9DjM                                         |
|    5 | Stepped in What?            | 248         | Johnnie B. Bad    | 1991          | www.youtube.com/watch?v=5gNVj-U38i0                                         |
|    6 | I am a River                | 428         | Sonic Highways    | 2015          | www.youtube.com/watch?v=9cqHAgnub_M                                         |
|    7 | Breath of a Salesman        | 207         | Monolith of Fobos | 2016          | www.youtube.com/watch?v=yMv4vl75WPk                                         |
|    8 | You Don't Know How it Feels | 288         | Wildflowers       | 1994          | www.youtube.com/watch?v=9TlBTPITo1I&list=PLbG3RCB1n956PKFpLHPOP2Q5TCkw5NAT3 |
|    9 | These Eyes                  | 233         | Wheatfield Soul   | 1969          | www.youtube.com/watch?v=sw8nXCx5qgo                                         |
|   10 | Standing on The Moon        | 320         | Built to Last     | 1989          | www.youtube.com/watch?v=kipR-HadbTs                                         |
+------+-----------------------------+-------------+-------------------+---------------+-----------------------------------------------------------------------------+
10 rows in set (0.00 sec)

mysql> 
mysql> 
mysql> create view top_five as
    -> select distinct song.rank, song.song_title, song.song_length, album.album_name, album.year_released, song.video_link 
    -> from song, album
    -> where song.rank = album.rank
    -> and song.rank <= 5
    -> order by rank;
Query OK, 0 rows affected (0.01 sec)

mysql> 
mysql> select * from top_five;
+------+--------------------+-------------+-------------------+---------------+-------------------------------------+
| rank | song_title         | song_length | album_name        | year_released | video_link                          |
+------+--------------------+-------------+-------------------+---------------+-------------------------------------+
|    1 | High Hopes         | 462         | The Division Bell | 1994          | www.youtube.com/watch?v=7jMlFXouPk8 |
|    2 | Shock Me           | 257         | Purple            | 2015          | www.youtube.com/watch?v=hS5osAdTnm0 |
|    3 | Fee                | 323         | Junta             | 1989          | www.youtube.com/watch?v=_72RmEedSE0 |
|    4 | In The Name of God | 854         | Train of Thought  | 2003          | www.youtube.com/watch?v=MSI3KSo9DjM |
|    5 | Stepped in What?   | 248         | Johnnie B. Bad    | 1991          | www.youtube.com/watch?v=5gNVj-U38i0 |
+------+--------------------+-------------+-------------------+---------------+-------------------------------------+
5 rows in set (0.01 sec)

mysql> 
mysql> 
mysql> create view worst_five as
    -> select distinct song.rank, song.song_title, song.song_length, album.album_name, album.year_released, song.video_link 
    -> from song, album
    -> where song.rank = album.rank
    -> and song.rank >= 5
    -> order by rank desc;
Query OK, 0 rows affected (0.02 sec)

mysql> 
mysql> select * from worst_five;
+------+-----------------------------+-------------+-------------------+---------------+-----------------------------------------------------------------------------+
| rank | song_title                  | song_length | album_name        | year_released | video_link                                                                  |
+------+-----------------------------+-------------+-------------------+---------------+-----------------------------------------------------------------------------+
|   10 | Standing on The Moon        | 320         | Built to Last     | 1989          | www.youtube.com/watch?v=kipR-HadbTs                                         |
|    9 | These Eyes                  | 233         | Wheatfield Soul   | 1969          | www.youtube.com/watch?v=sw8nXCx5qgo                                         |
|    8 | You Don't Know How it Feels | 288         | Wildflowers       | 1994          | www.youtube.com/watch?v=9TlBTPITo1I&list=PLbG3RCB1n956PKFpLHPOP2Q5TCkw5NAT3 |
|    7 | Breath of a Salesman        | 207         | Monolith of Fobos | 2016          | www.youtube.com/watch?v=yMv4vl75WPk                                         |
|    6 | I am a River                | 428         | Sonic Highways    | 2015          | www.youtube.com/watch?v=9cqHAgnub_M                                         |
|    5 | Stepped in What?            | 248         | Johnnie B. Bad    | 1991          | www.youtube.com/watch?v=5gNVj-U38i0                                         |
+------+-----------------------------+-------------+-------------------+---------------+-----------------------------------------------------------------------------+
6 rows in set (0.00 sec)

mysql> 
mysql> 
mysql> create view albums as
    -> select distinct album.album_name, song.song_title, album.year_released
    -> from song, album
    -> where song.rank = album.rank;
Query OK, 0 rows affected (0.01 sec)

mysql> 
mysql> select * from albums;
+-------------------+-----------------------------+---------------+
| album_name        | song_title                  | year_released |
+-------------------+-----------------------------+---------------+
| The Division Bell | High Hopes                  | 1994          |
| Train of Thought  | In The Name of God          | 2003          |
| Junta             | Fee                         | 1989          |
| Built to Last     | Standing on The Moon        | 1989          |
| Wildflowers       | You Don't Know How it Feels | 1994          |
| Monolith of Fobos | Breath of a Salesman        | 2016          |
| Wheatfield Soul   | These Eyes                  | 1969          |
| Sonic Highways    | I am a River                | 2015          |
| Purple            | Shock Me                    | 2015          |
| Johnnie B. Bad    | Stepped in What?            | 1991          |
+-------------------+-----------------------------+---------------+
10 rows in set (0.00 sec)

mysql> 
mysql> 
mysql> create view artists as
    -> select distinct artist.band_name, artist.song_title, album.album_name
    -> from artist, album
    -> where artist.band_name = album.band_name;
Query OK, 0 rows affected (0.01 sec)

mysql> 
mysql> select * from artists;
+--------------------------+-----------------------------+-------------------+
| band_name                | song_title                  | album_name        |
+--------------------------+-----------------------------+-------------------+
| Pink Floyd               | High Hopes                  | The Division Bell |
| Dream Theater            | In The Name of God          | Train of Thought  |
| Phish                    | Fee                         | Junta             |
| Grateful Dead            | Standing on The Moon        | Built to Last     |
| Tom Petty                | You Don't Know How it Feels | Wildflowers       |
| Claypool Lennon Delirium | Breath of a Salesman        | Monolith of Fobos |
| The Guess Who            | These Eyes                  | Wheatfield Soul   |
| Foo Fighters             | I am a River                | Sonic Highways    |
| Baroness                 | Shock Me                    | Purple            |
| Johnnie Johnson          | Stepped in What?            | Johnnie B. Bad    |
+--------------------------+-----------------------------+-------------------+
10 rows in set (0.00 sec)

mysql> 
mysql> 
mysql> select sum(song_length) 
    -> as total_run_time
    -> from song;
+----------------+
| total_run_time |
+----------------+
|           3620 |
+----------------+
1 row in set (0.00 sec)

mysql> 
mysql> 
mysql> 
mysql> 
mysql> 
mysql> select min(song_length) as min from song;
+------+
| min  |
+------+
| 207  |
+------+
1 row in set (0.00 sec)

mysql> select max(song_length) as max from song;
+------+
| max  |
+------+
| 854  |
+------+
1 row in set (0.00 sec)

mysql> 
mysql> create user Lars identified by 'password';
ERROR 1396 (HY000): Operation CREATE USER failed for 'Lars'@'%'
mysql> create user james identified by 'password';
ERROR 1396 (HY000): Operation CREATE USER failed for 'james'@'%'
mysql> create user Robert identified by 'password';
ERROR 1396 (HY000): Operation CREATE USER failed for 'Robert'@'%'
mysql> create user Kirk identified by 'password';
ERROR 1396 (HY000): Operation CREATE USER failed for 'Kirk'@'%'
mysql> 
mysql> grant all on *.* to Lars
    -> grant select on top_ten to james;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'grant select on top_ten to james' at line 2
mysql> grant select on top_five to james;
Query OK, 0 rows affected (0.01 sec)

mysql> grant select on worst_five to james;
Query OK, 0 rows affected (0.00 sec)

mysql> grant select on albums to james;
Query OK, 0 rows affected (0.00 sec)

mysql> grant select on artists to james;
Query OK, 0 rows affected (0.00 sec)

mysql> grant select on longest_song_shortest_song to james;
ERROR 1146 (42S02): Table 'top_ten_songs.longest_song_shortest_song' doesn't exist
mysql> 
mysql> 
mysql> grant select on top_ten to Robert;
Query OK, 0 rows affected (0.00 sec)

mysql> grant select on top_five to Robert;
Query OK, 0 rows affected (0.00 sec)

mysql> grant select on worst_five to Robert;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> grant select on albums to Kirk;
Query OK, 0 rows affected (0.00 sec)

mysql> grant select on artists to Kirk;
Query OK, 0 rows affected (0.00 sec)

mysql> grant select on longest_song_shortest_song to Kirk;
ERROR 1146 (42S02): Table 'top_ten_songs.longest_song_shortest_song' doesn't exist
mysql> 
