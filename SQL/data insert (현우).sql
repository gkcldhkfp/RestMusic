--------------------------------------ALBUMS 테이블----------------------------------------------------------

insert into albums (album_name, album_image, album_type, album_release_date)
values ('24K Magic', '24K Magic_cover.jpg', '싱글', '2017-04-20');

insert into albums (album_name, album_image, album_type, album_release_date)
values ('1000 Forms Of Fear', '1000 Forms Of Fear_cover.jpg', '정규', '2015-05-04');

insert into albums (album_name, album_image, album_type, album_release_date)
values ('1989', '1989_cover.jpg', '정규', '2014-10-27');

insert into albums (album_name, album_image, album_type, album_release_date)
values ('A Thousand Years', 'A Thousand Years_cover.jpg', '싱글', '2011-10-18');

insert into albums (album_name, album_image, album_type, album_release_date)
values ('Aladdin', 'Aladdin_cover.jpg', 'OST', '2019-05-22');

insert into albums (album_name, album_image, album_type, album_release_date)
values ('Arrival', 'Arrival_cover.jpg', '정규', '1976-08-15');

insert into albums (album_name, album_image, album_type, album_release_date)
values ('Baby One More Time', 'Baby One More Time_cover.jpg', '정규', '1999-01-12');

insert into albums (album_name, album_image, album_type, album_release_date)
values ('Breakaway', 'Breakaway_cover.jpg', '정규', '2016-04-22');

insert into albums (album_name, album_image, album_type, album_release_date)
values ('Emotion', 'Emotion_cover.jpg', '정규', '2015-08-21');

insert into albums (album_name, album_image, album_type, album_release_date)
values ('Flashlight', 'Flashlight_cover.jpg', '싱글', '2015-04-23');

insert into albums (album_name, album_image, album_type, album_release_date)
values ('Frozen 2', 'Frozen 2_cover.jpg', '정규', '2019-11-15');

insert into albums (album_name, album_image, album_type, album_release_date)
values ('Kiss', 'Kiss_cover.jpg', '정규', '2012-09-17');

insert into albums (album_name, album_image, album_type, album_release_date)
values ('Lemonade Mouth', 'Lemonade Mouth_cover.jpg', '정규', '2011-04-12');

insert into albums (album_name, album_image, album_type, album_release_date)
values ('Lover', 'Lover_cover.jpg', '정규', '2019-08-23');

insert into albums (album_name, album_image, album_type, album_release_date)
values ('My Everything', 'My Everything_cover.jpg', '정규', '2014-08-25');

insert into albums (album_name, album_image, album_type, album_release_date)
values ('Outside', 'Outside_cover.jpg', '싱글', '2014-10-20');

insert into albums (album_name, album_image, album_type, album_release_date)
values ('Speak Your Mind', 'Speak Your Mind_cover.jpg', '정규', '2018-04-27');

insert into albums (album_name, album_image, album_type, album_release_date)
values ('The Midsummer Station', 'The Midsummer Station_cover.jpg', '정규', '2012-08-21');

insert into albums (album_name, album_image, album_type, album_release_date)
values ('Voicenotes', 'Voicenotes_cover.jpg', '정규', '2018-05-11');

insert into albums (album_name, album_image, album_type, album_release_date)
values ('Whatever', 'Whatever_cover.jpg', '싱글', '2024-01-19');

insert into albums (album_name, album_image, album_type, album_release_date)
values ('When I Get Old', 'When I Get Old_cover.jpg', '싱글', '2022-10-20');

insert into albums (album_name, album_image, album_type, album_release_date)
values ('Who You Are', 'Who You Are_cover.jpg', '정규', '2011-11-14');

commit;
select * from albums;

--------------------------------------SONGS 테이블----------------------------------------------------------
-------------------------That’s What I Like----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values (1, 'That’s What I Like', '24K Magic_That’s What I Like_Bruno Mars.mp3', '24K Magic_That’s What I Like_lyrics.txt', 'https://www.youtube.com/watch?v=PMivT7MJ41M');

-------------------------Chandelier----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values (2, 'Chandelier', '1000 Forms Of Fear_Chandelier_Sia.mp3', '1000 Forms Of Fear_Chandelier_lyrics.txt', 'https://www.youtube.com/watch?v=2vjPBrBU-TM');

-------------------------Blank Space----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values (3, 'Blank Space', '1989_Blank Space_Taylor Swift.mp3', '1989_Blank Space_lyrics.txt', 'https://www.youtube.com/watch?v=e-ORhEE9VVg');

-------------------------A Thousand Years----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values (4, 'A Thousand Years', 'A Thousand Years_A Thousand Years_Christina Perri.mp3', 'A Thousand Years_A Thousand Years_lyrics.txt', 'https://www.youtube.com/watch?v=rtOvBOTyX00');

-------------------------A Whole New World (End Title)----------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values (5, 'A Whole New World (End Title)', 'Aladdin_A Whole New World (End Title)_ZAYN, Zhavia.mp3', 'Aladdin_A Whole New World (End Title)_lyrics.txt', 'https://www.youtube.com/watch?v=eitDnP0_83k');

-------------------------Speechless----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values (5, 'Speechless', 'Aladdin_Speechless_Naomi Scott.mp3', 'Aladdin_Speechless_lyrics.txt', 'https://www.youtube.com/watch?v=mw5VIEIvuMI');

-------------------------Dancing Queen----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values (6, 'Dancing Queen', 'Arrival_Dancing Queen_ABBA.mp3', 'Arrival_Dancing Queen_lyrics.txt', 'https://www.youtube.com/watch?v=xFrGuyw1V8s');

-------------------------Baby One More Time----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values (7, 'Baby One More Time', 'Baby One More Time_Baby One More Time_Britney Spears.mp3', 'Baby One More Time_Baby One More Time_lyrics.txt', 'https://www.youtube.com/watch?v=C-u5WLJ9Yk4');

-------------------------Because of You----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values (8, 'Because of You', 'Breakaway_Because of You_Kelly Clarkson.mp3', 'Breakaway_Because of You_lyrics.txt', 'https://www.youtube.com/watch?v=Ra-Om7UMSJc');

-------------------------I Really Like You----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values (9, 'I Really Like You', 'Emotion_I Really Like You_Carly Rae Jepsen.mp3', 'Emotion_I Really Like You_lyrics.txt', 'https://www.youtube.com/watch?v=qV5lzRHrGeg');

-------------------------Flashlight----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values (10, 'Flashlight', 'Flashlight_Flashlight_Jessie J.mp3', 'Flashlight_Flashlight_lyrics.txt', 'https://www.youtube.com/watch?v=DzwkcbTQ7ZE');

-------------------------Into the Unknown----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values (11, 'Into the Unknown', 'Frozen 2_Into the Unknown_Idina Menzel, AURORA.mp3', 'Frozen 2_Into the Unknown_Idina Menzel_lyrics.txt', 'https://www.youtube.com/watch?v=gIOyB9ZXn8s');

-------------------------Show Yourself----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values (11, 'Show Yourself', 'Frozen 2_Show Yourself_Idina Menzel, Evan Rachel Wood.mp3', 'Frozen 2_Show Yourself_lyrics.txt', 'https://www.youtube.com/watch?v=nrZxwPwmgrw');

-------------------------Call Me Maybe----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values (12, 'Call Me Maybe', 'Kiss_Call Me Maybe_Carly Rae Jepsen.mp3', 'Kiss_Call Me Maybe_lyrics.txt', 'https://www.youtube.com/watch?v=fWNaR-rxAic');

-------------------------She's So Gone----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values (13, 'She''s So Gone', 'Lemonade Mouth_She''s So Gone_Naomi Scott.mp3', 'Lemonade Mouth_She''s So Gone_lyrics.txt', 'https://www.youtube.com/watch?v=xnAc-rgvJTA');

-------------------------Cruel Summer----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values (14, 'Cruel Summer', 'Lover_Cruel Summer_Taylor Swift.mp3', 'Lover_Cruel Summer_lyrics.txt', 'https://www.youtube.com/watch?v=ic8j13piAhQ');

-------------------------One Last Time----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values (15, 'One Last Time', 'My Everything_One Last Time_Ariana Grande.mp3', 'My Everything_One Last Time_lyrics.txt', 'https://www.youtube.com/watch?v=Wg92RrNhB8s');

-------------------------Problem----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values (15, 'Problem', 'My Everything_Problem_Ariana Grande.mp3', 'My Everything_Problem_lyrics.txt', 'https://www.youtube.com/watch?v=iS1g8G_njx8');

-------------------------Outside----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values (16, 'Outside', 'Outside_Outside_Calvin Harris, Ellie Goulding.mp3', 'Outside_Outside_lyrics.txt', 'https://www.youtube.com/watch?v=J9NQFACZYEU');

-------------------------2002----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values (17, '2002', 'Speak Your Mind_2002_Anne Marie.mp3', 'Speak Your Mind_2002_lyrics.txt', 'https://www.youtube.com/watch?v=Il-an3K9pjg');

-------------------------Good Time----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values (18, 'Good Time', 'The Midsummer Station_Good Time_Owl City.mp3', 'The Midsummer Station_Good Time_lyrics.txt', 'https://www.youtube.com/watch?v=H7HmzwI67ec');

-------------------------Attention----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values (19, 'Attention', 'Voicenotes_Attention_Charlie Puth.mp3', 'Voicenotes_Attention_lyrics.txt', 'https://www.youtube.com/watch?v=nfs8NYg7yQM');

-------------------------Whatever----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values (20, 'Whatever', 'Whatever_Whatever_Kygo, Ava Max.mp3', 'Whatever_Whatever_lyrics.txt', 'https://www.youtube.com/watch?v=ZDZiXmCl4pk');

-------------------------When I Get Old----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values (21, 'When I Get Old', 'When I Get Old_When I Get Old_Christopher, 청하.mp3', 'When I Get Old_When I Get Old_lyrics.txt', 'https://www.youtube.com/watch?v=Ua3aNDJE_Cg');

-------------------------Domino----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values (22, 'Domino', 'Who You Are_Domino_Jessie J.mp3', 'Who You Are_Domino_lyrics.txt', 'https://www.youtube.com/watch?v=UJtB55MaoD0');

commit;
select * from songs;

--------------------------------------TITLE_SONGS 테이블----------------------------------------------------------
-------------------------That’s What I Like----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values (1, 1);

-------------------------Chandelier----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values (2, 2);

-------------------------Blank Space----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values (3, 3);

-------------------------A Thousand Years----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values (4, 4);

-------------------------A Whole New World (End Title)------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values (5, 5);

-------------------------Speechless----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values (5, 6);

-------------------------Dancing Queen----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values (6, 7);

-------------------------Baby One More Time----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values (7, 8);

-------------------------Because of You----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values (8, 9);

-------------------------I Really Like You----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values (9, 10);

-------------------------Flashlight----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values (10, 11);

-------------------------Into the Unknown----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values (11, 12);

-------------------------Show Yourself----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values (11, 13);

-------------------------Call Me Maybe----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values (12, 14);

-------------------------She's So Gone----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values (13, 15);

-------------------------Cruel Summer----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values (14, 16);

-------------------------One Last Time----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values (15, 17);

-------------------------Problem----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values (15, 18);

-------------------------Outside----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values (16, 19);

-------------------------2002----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values (17, 20);

-------------------------Good Time----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values (18, 21);

-------------------------Attention----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values (19, 22);

-------------------------Whatever----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values (20, 23);

-------------------------When I Get Old----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values (21, 24);

-------------------------Domino----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values (22, 25);

commit;
select * from title_songs;

--------------------------------------ARTISTS 테이블----------------------------------------------------------
-------------------------That’s What I Like----------------------------------------------------------------------------

insert into artists (artist_name, artist_image, artist_description)
values ('Bruno Mars', 'Bruno Mars.jpg', 'Bruno Mars.txt');

insert into artists (artist_name)
values ('James Fauntleroy');

insert into artists (artist_name)
values ('Philip Lawrence');

insert into artists (artist_name)
values ('Jeremy Reeves');

insert into artists (artist_name)
values ('Jonathan Yip');

insert into artists (artist_name)
values ('Ray Romulus');

---------------------------Chandelier--------------------------------------------------------------------------

insert into artists (artist_name, artist_image, artist_description)
values ('Sia', 'Sia.jpg', 'Sia.txt');

insert into artists (artist_name)
values ('Jesse Shatkin');

---------------------------Blank Space--------------------------------------------------------------------------

insert into artists (artist_name, artist_image, artist_description)
values ('Taylor Swift', 'Taylor Swift.jpg', 'Taylor Swift.txt');

insert into artists (artist_name)
values ('Max Martin');

insert into artists (artist_name)
values ('Shellback');

---------------------------A Thousand Years--------------------------------------------------------------------------

insert into artists (artist_name, artist_image, artist_description)
values ('Christina Perri', 'Christina Perri.jpg', 'Christina Perri.txt');

insert into artists (artist_name)
values ('David Hodges');

--------------------------A Whole New World (End Title)---------------------------------------------------------------------------

insert into artists (artist_name, artist_image, artist_description)
values ('ZAYN', 'ZAYN.jpg', 'ZAYN.txt');

insert into artists (artist_name, artist_image, artist_description)
values ('Zhavia', 'Zhavia.jpg', 'Zhavia.txt');

insert into artists (artist_name)
values ('Alan Menken');

insert into artists (artist_name)
values ('Tim Rice');

insert into artists (artist_name)
values ('Steve Wright');

insert into artists (artist_name)
values ('Chandru');

------------------------------Speechless-----------------------------------------------------------------------

insert into artists (artist_name, artist_image, artist_description)
values ('Naomi Scott', 'Naomi Scott.jpg', 'Naomi Scott.txt');

insert into artists (artist_name)
values ('Benj Pasek');

insert into artists (artist_name)
values ('Justin Paul');

insert into artists (artist_name)
values ('Michael Kosarin');

------------------------------Dancing Queen-----------------------------------------------------------------------

insert into artists (artist_name, artist_image, artist_description)
values ('ABBA', 'ABBA.jpg', 'ABBA.txt');

insert into artists (artist_name)
values ('Bjorn Ulvaeus');

insert into artists (artist_name)
values ('Benny Andersson');

insert into artists (artist_name)
values ('Sven Olof Walldoff');

-------------------------------Baby One More Time----------------------------------------------------------------------

insert into artists (artist_name, artist_image, artist_description)
values ('Britney Spears', 'Britney Spears.jpg', 'Britney Spears.txt');

-------------------------------Because of You----------------------------------------------------------------------

insert into artists (artist_name, artist_image, artist_description)
values ('Kelly Clarkson', 'Kelly Clarkson.jpg', 'Kelly Clarkson.txt');

insert into artists (artist_name)
values ('Ben Moody');

insert into artists (artist_name)
values ('David Campbell');

----------------------------------I Really Like You-------------------------------------------------------------------

insert into artists (artist_name, artist_image, artist_description)
values ('Carly Rae Jepsen', 'Carly Rae Jepsen.jpg', 'Carly Rae Jepsen.txt');

insert into artists (artist_name)
values ('Peter Svensson');

insert into artists (artist_name)
values ('Jacob Kasher');

----------------------------------Flashlight-------------------------------------------------------------------

insert into artists (artist_name, artist_image, artist_description)
values ('Jessie J', 'Jessie J.jpg', 'Jessie J.txt');

insert into artists (artist_name)
values ('Sam Smith');

insert into artists (artist_name)
values ('Jason Moore');

insert into artists (artist_name)
values ('Christian Guzman');

---------------------------------Into the Unknown--------------------------------------------------------------------

insert into artists (artist_name, artist_image, artist_description)
values ('Idina Menzel', 'Idina Menzel.jpg', 'Idina Menzel.txt');

insert into artists (artist_name, artist_image, artist_description)
values ('AURORA', 'AURORA.jpg', 'AURORAl.txt');

insert into artists (artist_name)
values ('Robert Lopez');

----------------------------------Show Yourself-------------------------------------------------------------------

insert into artists (artist_name, artist_image, artist_description)
values ('Evan Rachel Wood', 'Evan Rachel Wood.jpg', 'Evan Rachel Wood.txt');

insert into artists (artist_name)
values ('Dave Metzger');

insert into artists (artist_name)
values ('Stephen Oremus');

--------------------------------Call Me Maybe---------------------------------------------------------------------

insert into artists (artist_name)
values ('Josh Ramsay');

insert into artists (artist_name)
values ('Tavish Crowe');

------------------------------She's So Gone-----------------------------------------------------------------------

insert into artists (artist_name)
values ('Matthew Tishler');

insert into artists (artist_name)
values ('Maria Christensen');

insert into artists (artist_name)
values ('Shane Stevens');

-----------------------------Cruel Summer------------------------------------------------------------------------

insert into artists (artist_name)
values ('Jack Antonoff');

insert into artists (artist_name)
values ('Annie Clark');

---------------------------One Last Time--------------------------------------------------------------------------

insert into artists (artist_name, artist_image, artist_description)
values ('Ariana Grande', 'Ariana Grande.jpg', 'Ariana Grande.txt');

insert into artists (artist_name)
values ('David Guetta');

insert into artists (artist_name)
values ('Carl Falk');

insert into artists (artist_name)
values ('Giorgio Tuinfort');

insert into artists (artist_name)
values ('Rami Yacoub');

insert into artists (artist_name)
values ('Savan Kotecha');

-----------------------------Problem------------------------------------------------------------------------

insert into artists (artist_name)
values ('Ilya');

insert into artists (artist_name)
values ('Iggy Azalea');

---------------------------------Outside--------------------------------------------------------------------

insert into artists (artist_name, artist_image, artist_description)
values ('Calvin Harris', 'Calvin Harris.jpg', 'Calvin Harris.txt');

insert into artists (artist_name, artist_image, artist_description)
values ('Ellie Goulding', 'Ellie Goulding.jpg', 'Ellie Goulding.txt');

---------------------------2002--------------------------------------------------------------------------

insert into artists (artist_name, artist_image, artist_description)
values ('Anne Marie', 'Anne Marie.jpg', 'Anne Marie.txt');

insert into artists (artist_name)
values ('Ed Sheeran');

insert into artists (artist_name)
values ('Julia Michaels');

insert into artists (artist_name)
values ('Steve Mac');

insert into artists (artist_name)
values ('Benjamin Levin');

---------------------------Good Time--------------------------------------------------------------------------

insert into artists (artist_name, artist_image, artist_description)
values ('Owl City', 'Owl City.jpg', 'Owl City.txt');

insert into artists (artist_name)
values ('Matthew Thiessen');

insert into artists (artist_name)
values ('Adam Young');

insert into artists (artist_name)
values ('Brian Lee');

---------------------------Attention--------------------------------------------------------------------------

insert into artists (artist_name, artist_image, artist_description)
values ('Charlie Puth', 'Charlie Puth.jpg', 'Charlie Puth.txt');

---------------------------Whatever--------------------------------------------------------------------------

insert into artists (artist_name, artist_image, artist_description)
values ('Kygo', 'Kygo.jpg', 'Kygo.txt');

insert into artists (artist_name, artist_image, artist_description)
values ('Ava Max', 'Ava Max.jpg', 'Ava Max.txt');

insert into artists (artist_name)
values ('Shakira');

---------------------------When I Get Old--------------------------------------------------------------------------

insert into artists (artist_name, artist_image, artist_description)
values ('Christopher', 'Christopher.jpg', 'Christopher.txt');

insert into artists (artist_name, artist_image, artist_description)
values ('청하', '청하.jpg', '청하.txt');

insert into artists (artist_name)
values ('Dag Holtan Hartwig');

insert into artists (artist_name)
values ('Jeppe Nissen');

---------------------------Domino--------------------------------------------------------------------------

insert into artists (artist_name)
values ('Claude Kelly');

insert into artists (artist_name)
values ('Jessica Cornish');

insert into artists (artist_name)
values ('Lukasz Gottwald');

insert into artists (artist_name)
values ('Henry Walter');

commit;
select * from artists;

--------------------------------------ARTIST_ROLES 테이블----------------------------------------------------------
-------------------------That’s What I Like----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values (1, 1, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (2, 1, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (2, 1, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (3, 1, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (3, 1, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (4, 1, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (4, 1, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (5, 1, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (5, 1, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (6, 1, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (6, 1, 30);

-------------------------Chandelier----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values (7, 2, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (7, 2, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (7, 2, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (8, 2, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (8, 2, 30);

-------------------------Blank Space----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values (9, 3, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (9, 3, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (9, 3, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (10, 3, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (10, 3, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (11, 3, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (11, 3, 30);

-------------------------A Thousand Years----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values (12, 4, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (12, 4, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (12, 4, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (13, 4, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (13, 4, 30);

-------------------------A Whole New World (End Title)------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values (14, 5, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (15, 5, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (16, 5, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (17, 5, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (18, 5, 40);

insert into artist_roles (artist_id, song_id, role_id)
values (19, 5, 40);

-------------------------Speechless----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values (20, 6, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (16, 6, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (21, 6, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (21, 6, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (22, 6, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (22, 6, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (23, 6, 40);

-------------------------Dancing Queen----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values (24, 7, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (25, 7, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (25, 7, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (25, 7, 40);

insert into artist_roles (artist_id, song_id, role_id)
values (26, 7, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (26, 7, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (26, 7, 40);

insert into artist_roles (artist_id, song_id, role_id)
values (27, 7, 40);

-------------------------Baby One More Time----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values (28, 8, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (10, 8, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (10, 8, 30);

-------------------------Because of You----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values (29, 9, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (29, 9, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (29, 9, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (13, 9, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (13, 9, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (13, 9, 40);

insert into artist_roles (artist_id, song_id, role_id)
values (30, 9, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (30, 9, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (31, 9, 40);

-------------------------I Really Like You----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values (32, 10, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (32, 10, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (32, 10, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (33, 10, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (33, 10, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (34, 10, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (34, 10, 30);

-------------------------Flashlight----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values (35, 11, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (36, 11, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (36, 11, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (37, 11, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (37, 11, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (7, 11, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (7, 11, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (38, 11, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (38, 11, 30);

-------------------------Into the Unknown----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values (39, 12, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (40, 12, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (41, 12, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (41, 12, 30);

-------------------------Show Yourself----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values (39, 13, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (42, 13, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (41, 13, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (41, 13, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (43, 13, 40);

insert into artist_roles (artist_id, song_id, role_id)
values (44, 13, 40);

-------------------------Call Me Maybe----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values (32, 14, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (32, 14, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (32, 14, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (45, 14, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (45, 14, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (46, 14, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (46, 14, 30);

-------------------------She's So Gone----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values (20, 15, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (47, 15, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (47, 15, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (47, 15, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (47, 15, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (48, 15, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (48, 15, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (49, 15, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (49, 15, 30);

-------------------------Cruel Summer----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values (9, 16, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (9, 16, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (9, 16, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (50, 16, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (50, 16, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (51, 16, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (51, 16, 30);

-------------------------One Last Time----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values (52, 17, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (53, 17, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (53, 17, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (54, 17, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (54, 17, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (55, 17, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (55, 17, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (56, 17, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (56, 17, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (57, 17, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (57, 17, 30);

-------------------------Problem----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values (52, 18, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (10, 18, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (10, 18, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (57, 18, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (57, 18, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (58, 18, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (58, 18, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (59, 18, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (59, 18, 30);

-------------------------Outside----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values (60, 19, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (60, 19, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (60, 19, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (61, 19, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (61, 19, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (61, 19, 30);

-------------------------2002----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values (62, 20, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (62, 20, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (62, 20, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (63, 20, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (63, 20, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (64, 20, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (64, 20, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (65, 20, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (65, 20, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (66, 20, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (66, 20, 30);

-------------------------Good Time----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values (67, 21, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (68, 21, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (68, 21, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (69, 21, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (69, 21, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (70, 21, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (70, 21, 30);

-------------------------Attention----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values (71, 22, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (71, 22, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (71, 22, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (34, 22, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (34, 22, 30);

-------------------------Whatever----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values (72, 23, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (72, 23, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (72, 23, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (73, 23, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (74, 23, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (74, 23, 30);

-------------------------When I Get Old----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values (75, 24, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (75, 24, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (76, 24, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (77, 24, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (78, 24, 30);

-------------------------Domino----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values (35, 25, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (10, 25, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (10, 25, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (79, 25, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (79, 25, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (80, 25, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (80, 25, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (81, 25, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (81, 25, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (82, 25, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (82, 25, 30);


commit;
select * from artist_roles;

--------------------------------------SONG_GENRE 테이블----------------------------------------------------------
-------------------------That’s What I Like----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values (1, 20);

-------------------------Chandelier----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values (2, 20);

-------------------------Blank Space----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values (3, 20);

-------------------------A Thousand Years----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values (4, 20);

-------------------------A Whole New World (End Title)------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values (5, 70);

-------------------------Speechless----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values (6, 70);

-------------------------Dancing Queen----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values (7, 20);

-------------------------Baby One More Time----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values (8, 20);

-------------------------Because of You----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values (9, 20);

-------------------------I Really Like You----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values (10, 20);

-------------------------Flashlight----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values (11, 70);

-------------------------Into the Unknown----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values (12, 70);

-------------------------Show Yourself----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values (13, 70);

-------------------------Call Me Maybe----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values (14, 20);

-------------------------She's So Gone----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values (15, 70);

-------------------------Cruel Summer----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values (16, 20);

-------------------------One Last Time----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values (17, 20);

-------------------------Problem----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values (18, 20);

-------------------------Outside----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values (19, 20);

-------------------------2002----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values (20, 20);

-------------------------Good Time----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values (21, 20);

-------------------------Attention----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values (22, 20);

-------------------------Whatever----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values (23, 20);

-------------------------When I Get Old----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values (24, 20);

-------------------------Domino----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values (25, 20);

commit;
select * from song_genre;


