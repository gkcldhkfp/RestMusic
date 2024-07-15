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
values ((SELECT album_id FROM albums WHERE album_name = '24K Magic'), 'That’s What I Like', '24K Magic_That’s What I Like_Bruno Mars.mp3', '24K Magic_That’s What I Like_lyrics.txt', 'https://www.youtube.com/watch?v=PMivT7MJ41M');

-------------------------Chandelier----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values ((SELECT album_id FROM albums WHERE album_name = '1000 Forms Of Fear'), 'Chandelier', '1000 Forms Of Fear_Chandelier_Sia.mp3', '1000 Forms Of Fear_Chandelier_lyrics.txt', 'https://www.youtube.com/watch?v=2vjPBrBU-TM');

-------------------------Blank Space----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values ((SELECT album_id FROM albums WHERE album_name = '1989'), 'Blank Space', '1989_Blank Space_Taylor Swift.mp3', '1989_Blank Space_lyrics.txt', 'https://www.youtube.com/watch?v=e-ORhEE9VVg');

-------------------------A Thousand Years----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values ((SELECT album_id FROM albums WHERE album_name = 'A Thousand Years'), 'A Thousand Years', 'A Thousand Years_A Thousand Years_Christina Perri.mp3', 'A Thousand Years_A Thousand Years_lyrics.txt', 'https://www.youtube.com/watch?v=rtOvBOTyX00');

-------------------------A Whole New World (End Title)----------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values ((SELECT album_id FROM albums WHERE album_name = 'Aladdin'), 'A Whole New World (End Title)', 'Aladdin_A Whole New World (End Title)_ZAYN, Zhavia.mp3', 'Aladdin_A Whole New World (End Title)_lyrics.txt', 'https://www.youtube.com/watch?v=eitDnP0_83k');

-------------------------Speechless----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values ((SELECT album_id FROM albums WHERE album_name = 'Aladdin'), 'Speechless', 'Aladdin_Speechless_Naomi Scott.mp3', 'Aladdin_Speechless_lyrics.txt', 'https://www.youtube.com/watch?v=mw5VIEIvuMI');

-------------------------Dancing Queen----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values ((SELECT album_id FROM albums WHERE album_name = 'Arrival'), 'Dancing Queen', 'Arrival_Dancing Queen_ABBA.mp3', 'Arrival_Dancing Queen_lyrics.txt', 'https://www.youtube.com/watch?v=xFrGuyw1V8s');

-------------------------Baby One More Time----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values ((SELECT album_id FROM albums WHERE album_name = 'Baby One More Time'), 'Baby One More Time', 'Baby One More Time_Baby One More Time_Britney Spears.mp3', 'Baby One More Time_Baby One More Time_lyrics.txt', 'https://www.youtube.com/watch?v=C-u5WLJ9Yk4');

-------------------------Because of You----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values ((SELECT album_id FROM albums WHERE album_name = 'Breakaway'), 'Because of You', 'Breakaway_Because of You_Kelly Clarkson.mp3', 'Breakaway_Because of You_lyrics.txt', 'https://www.youtube.com/watch?v=Ra-Om7UMSJc');

-------------------------I Really Like You----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values ((SELECT album_id FROM albums WHERE album_name = 'Emotion'), 'I Really Like You', 'Emotion_I Really Like You_Carly Rae Jepsen.mp3', 'Emotion_I Really Like You_lyrics.txt', 'https://www.youtube.com/watch?v=qV5lzRHrGeg');

-------------------------Flashlight----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values ((SELECT album_id FROM albums WHERE album_name = 'Flashlight'), 'Flashlight', 'Flashlight_Flashlight_Jessie J.mp3', 'Flashlight_Flashlight_lyrics.txt', 'https://www.youtube.com/watch?v=DzwkcbTQ7ZE');

-------------------------Into the Unknown----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values ((SELECT album_id FROM albums WHERE album_name = 'Frozen 2'), 'Into the Unknown', 'Frozen 2_Into the Unknown_Idina Menzel, AURORA.mp3', 'Frozen 2_Into the Unknown_Idina Menzel_lyrics.txt', 'https://www.youtube.com/watch?v=gIOyB9ZXn8s');

-------------------------Show Yourself----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values ((SELECT album_id FROM albums WHERE album_name = 'Frozen 2'), 'Show Yourself', 'Frozen 2_Show Yourself_Idina Menzel, Evan Rachel Wood.mp3', 'Frozen 2_Show Yourself_lyrics.txt', 'https://www.youtube.com/watch?v=nrZxwPwmgrw');

-------------------------Call Me Maybe----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values ((SELECT album_id FROM albums WHERE album_name = 'Kiss'), 'Call Me Maybe', 'Kiss_Call Me Maybe_Carly Rae Jepsen.mp3', 'Kiss_Call Me Maybe_lyrics.txt', 'https://www.youtube.com/watch?v=fWNaR-rxAic');

-------------------------She's So Gone----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values ((SELECT album_id FROM albums WHERE album_name = 'Lemonade Mouth'), 'She''s So Gone', 'Lemonade Mouth_She''s So Gone_Naomi Scott.mp3', 'Lemonade Mouth_She''s So Gone_lyrics.txt', 'https://www.youtube.com/watch?v=xnAc-rgvJTA');

-------------------------Cruel Summer----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values ((SELECT album_id FROM albums WHERE album_name = 'Lover'), 'Cruel Summer', 'Lover_Cruel Summer_Taylor Swift.mp3', 'Lover_Cruel Summer_lyrics.txt', 'https://www.youtube.com/watch?v=ic8j13piAhQ');

-------------------------One Last Time----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values ((SELECT album_id FROM albums WHERE album_name = 'My Everything'), 'One Last Time', 'My Everything_One Last Time_Ariana Grande.mp3', 'My Everything_One Last Time_lyrics.txt', 'https://www.youtube.com/watch?v=Wg92RrNhB8s');

-------------------------Problem----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values ((SELECT album_id FROM albums WHERE album_name = 'My Everything'), 'Problem', 'My Everything_Problem_Ariana Grande.mp3', 'My Everything_Problem_lyrics.txt', 'https://www.youtube.com/watch?v=iS1g8G_njx8');

-------------------------Outside----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values ((SELECT album_id FROM albums WHERE album_name = 'Outside'), 'Outside', 'Outside_Outside_Calvin Harris, Ellie Goulding.mp3', 'Outside_Outside_lyrics.txt', 'https://www.youtube.com/watch?v=J9NQFACZYEU');

-------------------------2002----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values ((SELECT album_id FROM albums WHERE album_name = 'Speak Your Mind'), '2002', 'Speak Your Mind_2002_Anne Marie.mp3', 'Speak Your Mind_2002_lyrics.txt', 'https://www.youtube.com/watch?v=Il-an3K9pjg');

-------------------------Good Time----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values ((SELECT album_id FROM albums WHERE album_name = 'The Midsummer Station'), 'Good Time', 'The Midsummer Station_Good Time_Owl City.mp3', 'The Midsummer Station_Good Time_lyrics.txt', 'https://www.youtube.com/watch?v=H7HmzwI67ec');

-------------------------Attention----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values ((SELECT album_id FROM albums WHERE album_name = 'Voicenotes'), 'Attention', 'Voicenotes_Attention_Charlie Puth.mp3', 'Voicenotes_Attention_lyrics.txt', 'https://www.youtube.com/watch?v=nfs8NYg7yQM');

-------------------------Whatever----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values ((SELECT album_id FROM albums WHERE album_name = 'Whatever'), 'Whatever', 'Whatever_Whatever_Kygo, Ava Max.mp3', 'Whatever_Whatever_lyrics.txt', 'https://www.youtube.com/watch?v=ZDZiXmCl4pk');

-------------------------When I Get Old----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values ((SELECT album_id FROM albums WHERE album_name = 'When I Get Old'), 'When I Get Old', 'When I Get Old_When I Get Old_Christopher, 청하.mp3', 'When I Get Old_When I Get Old_lyrics.txt', 'https://www.youtube.com/watch?v=Ua3aNDJE_Cg');

-------------------------Domino----------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link)
values ((SELECT album_id FROM albums WHERE album_name = 'Who You Are'), 'Domino', 'Who You Are_Domino_Jessie J.mp3', 'Who You Are_Domino_lyrics.txt', 'https://www.youtube.com/watch?v=UJtB55MaoD0');

commit;
select * from songs;

--------------------------------------TITLE_SONGS 테이블----------------------------------------------------------
-------------------------That’s What I Like----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values ((SELECT album_id FROM albums WHERE album_name = '24K Magic'), (SELECT song_id FROM songs WHERE title = 'That’s What I Like'));

-------------------------Chandelier----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values ((SELECT album_id FROM albums WHERE album_name = '1000 Forms Of Fear'), (SELECT song_id FROM songs WHERE title = 'Chandelier'));

-------------------------Blank Space----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values ((SELECT album_id FROM albums WHERE album_name = '1989'), (SELECT song_id FROM songs WHERE title = 'Blank Space'));

-------------------------A Thousand Years----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values ((SELECT album_id FROM albums WHERE album_name = 'A Thousand Years'), (SELECT song_id FROM songs WHERE title = 'A Thousand Years'));

-------------------------A Whole New World (End Title)------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values ((SELECT album_id FROM albums WHERE album_name = 'Aladdin'), (SELECT song_id FROM songs WHERE title = 'A Whole New World (End Title)'));

-------------------------Speechless----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values ((SELECT album_id FROM albums WHERE album_name = 'Aladdin'), (SELECT song_id FROM songs WHERE title = 'Speechless'));

-------------------------Dancing Queen----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values ((SELECT album_id FROM albums WHERE album_name = 'Arrival'), (SELECT song_id FROM songs WHERE title = 'Dancing Queen'));

-------------------------Baby One More Time----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values ((SELECT album_id FROM albums WHERE album_name = 'Baby One More Time'), (SELECT song_id FROM songs WHERE title = 'Baby One More Time'));

-------------------------Because of You----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values ((SELECT album_id FROM albums WHERE album_name = 'Breakaway'), (SELECT song_id FROM songs WHERE title = 'Because of You'));

-------------------------I Really Like You----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values ((SELECT album_id FROM albums WHERE album_name = 'Emotion'), (SELECT song_id FROM songs WHERE title = 'I Really Like You'));

-------------------------Flashlight----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values ((SELECT album_id FROM albums WHERE album_name = 'Flashlight'), (SELECT song_id FROM songs WHERE title = 'Flashlight'));

-------------------------Into the Unknown----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values ((SELECT album_id FROM albums WHERE album_name = 'Frozen 2'), (SELECT song_id FROM songs WHERE title = 'Into the Unknown'));

-------------------------Show Yourself----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values ((SELECT album_id FROM albums WHERE album_name = 'Frozen 2'), (SELECT song_id FROM songs WHERE title = 'Show Yourself'));

-------------------------Call Me Maybe----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values ((SELECT album_id FROM albums WHERE album_name = 'Kiss'), (SELECT song_id FROM songs WHERE title = 'Call Me Maybe'));

-------------------------She's So Gone----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values ((SELECT album_id FROM albums WHERE album_name = 'Lemonade Mouth'), (SELECT song_id FROM songs WHERE title = 'She''s So Gone'));

-------------------------Cruel Summer----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values ((SELECT album_id FROM albums WHERE album_name = 'Lover'), (SELECT song_id FROM songs WHERE title = 'Cruel Summer'));

-------------------------One Last Time----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values ((SELECT album_id FROM albums WHERE album_name = 'My Everything'), (SELECT song_id FROM songs WHERE title = 'One Last Time'));

-------------------------Problem----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values ((SELECT album_id FROM albums WHERE album_name = 'My Everything'), (SELECT song_id FROM songs WHERE title = 'Problem'));

-------------------------Outside----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values ((SELECT album_id FROM albums WHERE album_name = 'Outside'), (SELECT song_id FROM songs WHERE title = 'Outside'));

-------------------------2002----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values ((SELECT album_id FROM albums WHERE album_name = 'Speak Your Mind'), (SELECT song_id FROM songs WHERE title = '2002'));

-------------------------Good Time----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values ((SELECT album_id FROM albums WHERE album_name = 'The Midsummer Station'), (SELECT song_id FROM songs WHERE title = 'Good Time'));

-------------------------Attention----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values ((SELECT album_id FROM albums WHERE album_name = 'Voicenotes'), (SELECT song_id FROM songs WHERE title = 'Attention'));

-------------------------Whatever----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values ((SELECT album_id FROM albums WHERE album_name = 'Whatever'), (SELECT song_id FROM songs WHERE title = 'Whatever'));

-------------------------When I Get Old----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values ((SELECT album_id FROM albums WHERE album_name = 'When I Get Old'), (SELECT song_id FROM songs WHERE title = 'When I Get Old'));

-------------------------Domino----------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values ((SELECT album_id FROM albums WHERE album_name = 'Who You Are'), (SELECT song_id FROM songs WHERE title = 'Domino'));

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
values ((SELECT artist_id FROM artists WHERE artist_name = 'Bruno Mars'), (SELECT song_id FROM songs WHERE title = 'That’s What I Like'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'James Fauntleroy'), (SELECT song_id FROM songs WHERE title = 'That’s What I Like'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'James Fauntleroy'), (SELECT song_id FROM songs WHERE title = 'That’s What I Like'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Philip Lawrence'), (SELECT song_id FROM songs WHERE title = 'That’s What I Like'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Philip Lawrence'), (SELECT song_id FROM songs WHERE title = 'That’s What I Like'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Jeremy Reeves'), (SELECT song_id FROM songs WHERE title = 'That’s What I Like'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Jeremy Reeves'), (SELECT song_id FROM songs WHERE title = 'That’s What I Like'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Jonathan Yip'), (SELECT song_id FROM songs WHERE title = 'That’s What I Like'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Jonathan Yip'), (SELECT song_id FROM songs WHERE title = 'That’s What I Like'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Ray Romulus'), (SELECT song_id FROM songs WHERE title = 'That’s What I Like'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Ray Romulus'), (SELECT song_id FROM songs WHERE title = 'That’s What I Like'), 30);

-------------------------Chandelier----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Sia'), (SELECT song_id FROM songs WHERE title = 'Chandelier'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Sia'), (SELECT song_id FROM songs WHERE title = 'Chandelier'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Sia'), (SELECT song_id FROM songs WHERE title = 'Chandelier'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Jesse Shatkin'), (SELECT song_id FROM songs WHERE title = 'Chandelier'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Jesse Shatkin'), (SELECT song_id FROM songs WHERE title = 'Chandelier'), 30);

-------------------------Blank Space----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Taylor Swift'), (SELECT song_id FROM songs WHERE title = 'Blank Space'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Taylor Swift'), (SELECT song_id FROM songs WHERE title = 'Blank Space'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Taylor Swift'), (SELECT song_id FROM songs WHERE title = 'Blank Space'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Max Martin'), (SELECT song_id FROM songs WHERE title = 'Blank Space'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Max Martin'), (SELECT song_id FROM songs WHERE title = 'Blank Space'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Shellback'), (SELECT song_id FROM songs WHERE title = 'Blank Space'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Shellback'), (SELECT song_id FROM songs WHERE title = 'Blank Space'), 30);

-------------------------A Thousand Years----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Christina Perri'), (SELECT song_id FROM songs WHERE title = 'A Thousand Years'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Christina Perri'), (SELECT song_id FROM songs WHERE title = 'A Thousand Years'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Christina Perri'), (SELECT song_id FROM songs WHERE title = 'A Thousand Years'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'David Hodges'), (SELECT song_id FROM songs WHERE title = 'A Thousand Years'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'David Hodges'), (SELECT song_id FROM songs WHERE title = 'A Thousand Years'), 30);

-------------------------A Whole New World (End Title)------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'ZAYN'), (SELECT song_id FROM songs WHERE title = 'A Whole New World (End Title)'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Zhavia'), (SELECT song_id FROM songs WHERE title = 'A Whole New World (End Title)'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Alan Menken'), (SELECT song_id FROM songs WHERE title = 'A Whole New World (End Title)'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Tim Rice'), (SELECT song_id FROM songs WHERE title = 'A Whole New World (End Title)'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Steve Wright'), (SELECT song_id FROM songs WHERE title = 'A Whole New World (End Title)'), 40);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Chandru'), (SELECT song_id FROM songs WHERE title = 'A Whole New World (End Title)'), 40);

-------------------------Speechless----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Naomi Scott'), (SELECT song_id FROM songs WHERE title = 'Speechless'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Alan Menken'), (SELECT song_id FROM songs WHERE title = 'Speechless'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Benj Pasek'), (SELECT song_id FROM songs WHERE title = 'Speechless'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Benj Pasek'), (SELECT song_id FROM songs WHERE title = 'Speechless'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Justin Paul'), (SELECT song_id FROM songs WHERE title = 'Speechless'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Justin Paul'), (SELECT song_id FROM songs WHERE title = 'Speechless'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Michael Kosarin'), (SELECT song_id FROM songs WHERE title = 'Speechless'), 40);

-------------------------Dancing Queen----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'ABBA'), (SELECT song_id FROM songs WHERE title = 'Dancing Queen'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Bjorn Ulvaeus'), (SELECT song_id FROM songs WHERE title = 'Dancing Queen'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Bjorn Ulvaeus'), (SELECT song_id FROM songs WHERE title = 'Dancing Queen'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Bjorn Ulvaeus'), (SELECT song_id FROM songs WHERE title = 'Dancing Queen'), 40);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Benny Andersson'), (SELECT song_id FROM songs WHERE title = 'Dancing Queen'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Benny Andersson'), (SELECT song_id FROM songs WHERE title = 'Dancing Queen'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Benny Andersson'), (SELECT song_id FROM songs WHERE title = 'Dancing Queen'), 40);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Sven Olof Walldoff'), (SELECT song_id FROM songs WHERE title = 'Dancing Queen'), 40);

-------------------------Baby One More Time----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Britney Spears'), (SELECT song_id FROM songs WHERE title = 'Baby One More Time'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Max Martin'), (SELECT song_id FROM songs WHERE title = 'Baby One More Time'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Max Martin'), (SELECT song_id FROM songs WHERE title = 'Baby One More Time'), 30);

-------------------------Because of You----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Kelly Clarkson'), (SELECT song_id FROM songs WHERE title = 'Because of You'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Kelly Clarkson'), (SELECT song_id FROM songs WHERE title = 'Because of You'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Kelly Clarkson'), (SELECT song_id FROM songs WHERE title = 'Because of You'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'David Hodges'), (SELECT song_id FROM songs WHERE title = 'Because of You'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'David Hodges'), (SELECT song_id FROM songs WHERE title = 'Because of You'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'David Hodges'), (SELECT song_id FROM songs WHERE title = 'Because of You'), 40);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Ben Moody'), (SELECT song_id FROM songs WHERE title = 'Because of You'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Ben Moody'), (SELECT song_id FROM songs WHERE title = 'Because of You'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'David Campbell'), (SELECT song_id FROM songs WHERE title = 'Because of You'), 40);

-------------------------I Really Like You----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Carly Rae Jepsen'), (SELECT song_id FROM songs WHERE title = 'I Really Like You'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Carly Rae Jepsen'), (SELECT song_id FROM songs WHERE title = 'I Really Like You'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Carly Rae Jepsen'), (SELECT song_id FROM songs WHERE title = 'I Really Like You'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Peter Svensson'), (SELECT song_id FROM songs WHERE title = 'I Really Like You'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Peter Svensson'), (SELECT song_id FROM songs WHERE title = 'I Really Like You'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Jacob Kasher'), (SELECT song_id FROM songs WHERE title = 'I Really Like You'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Jacob Kasher'), (SELECT song_id FROM songs WHERE title = 'I Really Like You'), 30);

-------------------------Flashlight----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Jessie J'), (SELECT song_id FROM songs WHERE title = 'Flashlight'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Sam Smith'), (SELECT song_id FROM songs WHERE title = 'Flashlight'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Sam Smith'), (SELECT song_id FROM songs WHERE title = 'Flashlight'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Jason Moore'), (SELECT song_id FROM songs WHERE title = 'Flashlight'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Jason Moore'), (SELECT song_id FROM songs WHERE title = 'Flashlight'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Sia'), (SELECT song_id FROM songs WHERE title = 'Flashlight'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Sia'), (SELECT song_id FROM songs WHERE title = 'Flashlight'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Christian Guzman'), (SELECT song_id FROM songs WHERE title = 'Flashlight'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Christian Guzman'), (SELECT song_id FROM songs WHERE title = 'Flashlight'), 30);

-------------------------Into the Unknown----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Idina Menzel'), (SELECT song_id FROM songs WHERE title = 'Into the Unknown'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'AURORA'), (SELECT song_id FROM songs WHERE title = 'Into the Unknown'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Robert Lopez'), (SELECT song_id FROM songs WHERE title = 'Into the Unknown'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Robert Lopez'), (SELECT song_id FROM songs WHERE title = 'Into the Unknown'), 30);

-------------------------Show Yourself----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Idina Menzel'), (SELECT song_id FROM songs WHERE title = 'Show Yourself'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Evan Rachel Wood'), (SELECT song_id FROM songs WHERE title = 'Show Yourself'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Robert Lopez'), (SELECT song_id FROM songs WHERE title = 'Show Yourself'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Robert Lopez'), (SELECT song_id FROM songs WHERE title = 'Show Yourself'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Dave Metzger'), (SELECT song_id FROM songs WHERE title = 'Show Yourself'), 40);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Stephen Oremus'), (SELECT song_id FROM songs WHERE title = 'Show Yourself'), 40);

-------------------------Call Me Maybe----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Carly Rae Jepsen'), (SELECT song_id FROM songs WHERE title = 'Call Me Maybe'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Carly Rae Jepsen'), (SELECT song_id FROM songs WHERE title = 'Call Me Maybe'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Carly Rae Jepsen'), (SELECT song_id FROM songs WHERE title = 'Call Me Maybe'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Josh Ramsay'), (SELECT song_id FROM songs WHERE title = 'Call Me Maybe'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Josh Ramsay'), (SELECT song_id FROM songs WHERE title = 'Call Me Maybe'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Tavish Crowe'), (SELECT song_id FROM songs WHERE title = 'Call Me Maybe'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Tavish Crowe'), (SELECT song_id FROM songs WHERE title = 'Call Me Maybe'), 30);

-------------------------She's So Gone----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Naomi Scott'), (SELECT song_id FROM songs WHERE title = 'She''s So Gone'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Matthew Tishler'), (SELECT song_id FROM songs WHERE title = 'She''s So Gone'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Matthew Tishler'), (SELECT song_id FROM songs WHERE title = 'She''s So Gone'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Matthew Tishler'), (SELECT song_id FROM songs WHERE title = 'She''s So Gone'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Matthew Tishler'), (SELECT song_id FROM songs WHERE title = 'She''s So Gone'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Maria Christensen'), (SELECT song_id FROM songs WHERE title = 'She''s So Gone'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Maria Christensen'), (SELECT song_id FROM songs WHERE title = 'She''s So Gone'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Shane Stevens'), (SELECT song_id FROM songs WHERE title = 'She''s So Gone'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Shane Stevens'), (SELECT song_id FROM songs WHERE title = 'She''s So Gone'), 30);

-------------------------Cruel Summer----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Taylor Swift'), (SELECT song_id FROM songs WHERE title = 'Cruel Summer'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Taylor Swift'), (SELECT song_id FROM songs WHERE title = 'Cruel Summer'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Taylor Swift'), (SELECT song_id FROM songs WHERE title = 'Cruel Summer'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Jack Antonoff'), (SELECT song_id FROM songs WHERE title = 'Cruel Summer'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Jack Antonoff'), (SELECT song_id FROM songs WHERE title = 'Cruel Summer'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Annie Clark'), (SELECT song_id FROM songs WHERE title = 'Cruel Summer'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Annie Clark'), (SELECT song_id FROM songs WHERE title = 'Cruel Summer'), 30);

-------------------------One Last Time----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Ariana Grande'), (SELECT song_id FROM songs WHERE title = 'One Last Time'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'David Guetta'), (SELECT song_id FROM songs WHERE title = 'One Last Time'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'David Guetta'), (SELECT song_id FROM songs WHERE title = 'One Last Time'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Carl Falk'), (SELECT song_id FROM songs WHERE title = 'One Last Time'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Carl Falk'), (SELECT song_id FROM songs WHERE title = 'One Last Time'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Giorgio Tuinfort'), (SELECT song_id FROM songs WHERE title = 'One Last Time'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Giorgio Tuinfort'), (SELECT song_id FROM songs WHERE title = 'One Last Time'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Rami Yacoub'), (SELECT song_id FROM songs WHERE title = 'One Last Time'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Rami Yacoub'), (SELECT song_id FROM songs WHERE title = 'One Last Time'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Savan Kotecha'), (SELECT song_id FROM songs WHERE title = 'One Last Time'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Savan Kotecha'), (SELECT song_id FROM songs WHERE title = 'One Last Time'), 30);

-------------------------Problem----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Ariana Grande'), (SELECT song_id FROM songs WHERE title = 'Problem'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Max Martin'), (SELECT song_id FROM songs WHERE title = 'Problem'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Max Martin'), (SELECT song_id FROM songs WHERE title = 'Problem'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Savan Kotecha'), (SELECT song_id FROM songs WHERE title = 'Problem'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Savan Kotecha'), (SELECT song_id FROM songs WHERE title = 'Problem'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Ilya'), (SELECT song_id FROM songs WHERE title = 'Problem'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Ilya'), (SELECT song_id FROM songs WHERE title = 'Problem'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Iggy Azalea'), (SELECT song_id FROM songs WHERE title = 'Problem'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Iggy Azalea'), (SELECT song_id FROM songs WHERE title = 'Problem'), 30);

-------------------------Outside----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Calvin Harris'), (SELECT song_id FROM songs WHERE title = 'Outside'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Calvin Harris'), (SELECT song_id FROM songs WHERE title = 'Outside'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Calvin Harris'), (SELECT song_id FROM songs WHERE title = 'Outside'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Ellie Goulding'), (SELECT song_id FROM songs WHERE title = 'Outside'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Ellie Goulding'), (SELECT song_id FROM songs WHERE title = 'Outside'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Ellie Goulding'), (SELECT song_id FROM songs WHERE title = 'Outside'), 30);

-------------------------2002----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Anne Marie'), (SELECT song_id FROM songs WHERE title = '2002'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Anne Marie'), (SELECT song_id FROM songs WHERE title = '2002'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Anne Marie'), (SELECT song_id FROM songs WHERE title = '2002'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Ed Sheeran'), (SELECT song_id FROM songs WHERE title = '2002'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Ed Sheeran'), (SELECT song_id FROM songs WHERE title = '2002'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Julia Michaels'), (SELECT song_id FROM songs WHERE title = '2002'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Julia Michaels'), (SELECT song_id FROM songs WHERE title = '2002'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Steve Mac'), (SELECT song_id FROM songs WHERE title = '2002'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Steve Mac'), (SELECT song_id FROM songs WHERE title = '2002'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Benjamin Levin'), (SELECT song_id FROM songs WHERE title = '2002'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Benjamin Levin'), (SELECT song_id FROM songs WHERE title = '2002'), 30);

-------------------------Good Time----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Owl City'), (SELECT song_id FROM songs WHERE title = 'Good Time'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Matthew Thiessen'), (SELECT song_id FROM songs WHERE title = 'Good Time'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Matthew Thiessen'), (SELECT song_id FROM songs WHERE title = 'Good Time'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Adam Young'), (SELECT song_id FROM songs WHERE title = 'Good Time'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Adam Young'), (SELECT song_id FROM songs WHERE title = 'Good Time'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Brian Lee'), (SELECT song_id FROM songs WHERE title = 'Good Time'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Brian Lee'), (SELECT song_id FROM songs WHERE title = 'Good Time'), 30);

-------------------------Attention----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Charlie Puth'), (SELECT song_id FROM songs WHERE title = 'Attention'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Charlie Puth'), (SELECT song_id FROM songs WHERE title = 'Attention'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Charlie Puth'), (SELECT song_id FROM songs WHERE title = 'Attention'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Jacob Kasher'), (SELECT song_id FROM songs WHERE title = 'Attention'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Jacob Kasher'), (SELECT song_id FROM songs WHERE title = 'Attention'), 30);

-------------------------Whatever----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Kygo'), (SELECT song_id FROM songs WHERE title = 'Whatever'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Kygo'), (SELECT song_id FROM songs WHERE title = 'Whatever'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Kygo'), (SELECT song_id FROM songs WHERE title = 'Whatever'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Ava Max'), (SELECT song_id FROM songs WHERE title = 'Whatever'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Shakira'), (SELECT song_id FROM songs WHERE title = 'Whatever'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Shakira'), (SELECT song_id FROM songs WHERE title = 'Whatever'), 30);

-------------------------When I Get Old----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Christopher'), (SELECT song_id FROM songs WHERE title = 'When I Get Old'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Christopher'), (SELECT song_id FROM songs WHERE title = 'When I Get Old'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = '청하'), (SELECT song_id FROM songs WHERE title = 'When I Get Old'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Dag Holtan Hartwig'), (SELECT song_id FROM songs WHERE title = 'When I Get Old'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Jeppe Nissen'), (SELECT song_id FROM songs WHERE title = 'When I Get Old'), 30);

-------------------------Domino----------------------------------------------------------------------------

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Jessie J'), (SELECT song_id FROM songs WHERE title = 'Domino'), 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Max Martin'), (SELECT song_id FROM songs WHERE title = 'Domino'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Max Martin'), (SELECT song_id FROM songs WHERE title = 'Domino'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Claude Kelly'), (SELECT song_id FROM songs WHERE title = 'Domino'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Claude Kelly'), (SELECT song_id FROM songs WHERE title = 'Domino'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Jessica Cornish'), (SELECT song_id FROM songs WHERE title = 'Domino'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Jessica Cornish'), (SELECT song_id FROM songs WHERE title = 'Domino'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Lukasz Gottwald'), (SELECT song_id FROM songs WHERE title = 'Domino'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Lukasz Gottwald'), (SELECT song_id FROM songs WHERE title = 'Domino'), 30);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Henry Walter'), (SELECT song_id FROM songs WHERE title = 'Domino'), 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((SELECT artist_id FROM artists WHERE artist_name = 'Henry Walter'), (SELECT song_id FROM songs WHERE title = 'Domino'), 30);


commit;
select * from artist_roles;

--------------------------------------SONG_GENRE 테이블----------------------------------------------------------
-------------------------That’s What I Like----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values ((SELECT song_id FROM songs WHERE title = 'That’s What I Like'), 20);

-------------------------Chandelier----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values ((SELECT song_id FROM songs WHERE title = 'Chandelier'), 20);

-------------------------Blank Space----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values ((SELECT song_id FROM songs WHERE title = 'Blank Space'), 20);

-------------------------A Thousand Years----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values ((SELECT song_id FROM songs WHERE title = 'A Thousand Years'), 20);

-------------------------A Whole New World (End Title)------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values ((SELECT song_id FROM songs WHERE title = 'A Whole New World (End Title)'), 70);

-------------------------Speechless----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values ((SELECT song_id FROM songs WHERE title = 'Speechless'), 70);

-------------------------Dancing Queen----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values ((SELECT song_id FROM songs WHERE title = 'Dancing Queen'), 20);

-------------------------Baby One More Time----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values ((SELECT song_id FROM songs WHERE title = 'Baby One More Time'), 20);

-------------------------Because of You----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values ((SELECT song_id FROM songs WHERE title = 'Because of You'), 20);

-------------------------I Really Like You----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values ((SELECT song_id FROM songs WHERE title = 'I Really Like You'), 20);

-------------------------Flashlight----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values ((SELECT song_id FROM songs WHERE title = 'Flashlight'), 70);

-------------------------Into the Unknown----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values ((SELECT song_id FROM songs WHERE title = 'Into the Unknown'), 70);

-------------------------Show Yourself----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values ((SELECT song_id FROM songs WHERE title = 'Show Yourself'), 70);

-------------------------Call Me Maybe----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values ((SELECT song_id FROM songs WHERE title = 'Call Me Maybe'), 20);

-------------------------She's So Gone----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values ((SELECT song_id FROM songs WHERE title = 'She''s So Gone'), 70);

-------------------------Cruel Summer----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values ((SELECT song_id FROM songs WHERE title = 'Cruel Summer'), 20);

-------------------------One Last Time----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values ((SELECT song_id FROM songs WHERE title = 'One Last Time'), 20);

-------------------------Problem----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values ((SELECT song_id FROM songs WHERE title = 'Problem'), 20);

-------------------------Outside----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values ((SELECT song_id FROM songs WHERE title = 'Outside'), 20);

-------------------------2002----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values ((SELECT song_id FROM songs WHERE title = '2002'), 20);

-------------------------Good Time----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values ((SELECT song_id FROM songs WHERE title = 'Good Time'), 20);

-------------------------Attention----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values ((SELECT song_id FROM songs WHERE title = 'Attention'), 20);

-------------------------Whatever----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values ((SELECT song_id FROM songs WHERE title = 'Whatever'), 20);

-------------------------When I Get Old----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values ((SELECT song_id FROM songs WHERE title = 'When I Get Old'), 20);

-------------------------Domino----------------------------------------------------------------------------
insert into song_genre (song_id, genre_id)
values ((SELECT song_id FROM songs WHERE title = 'Domino'), 20);

commit;
select * from song_genre;


