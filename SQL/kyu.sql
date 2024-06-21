insert into albums (album_name, album_image, album_type, album_release_date)
values ('What Time!', 
        'what_time_album_image', 
        'EP',
        '2023-08-18'
        );
--update albums set album_image = 'what_time_album_image' where album_id=1;
select * from albums order by album_id desc;

insert into songs (album_id, title, song_path, lyrics, video_link, genre)
values (1,
        'What time! (Feat.DumbAss)',
        '/what_time_what_time_kenzi',
        '/what_time_what_time_lyrics',
        '/embed/lHOKswcH0OY?si=kgsyN7AnWxxectFP',
        '랩/힙합');
        
insert into songs (album_id, title, song_path, lyrics, genre)
values (1,
        '좋겠어 (feat. 현서)',
        '/what_time_i_wish_kenzi',
        '/what_time_i_wish_lyrics',
        '랩/힙합');
        
insert into songs (album_id, title, song_path, lyrics, genre)
values (1,
        'Ice (feat. PLHN)',
        '/what_time_ice_kenzi',
        '/what_time_ice_lyrics',
        '랩/힙합');
        
insert into songs (album_id, title, song_path, lyrics, genre)
values (1,
        'Promise (약속)',
        '/what_time_promise_kenzi',
        '/what_time_promise_lyrics',
        '랩/힙합');

select * from songs order by song_id;

--표준 문법
--select e.ename, d.dname, e.sal, s.grade
--from emp e 
    --join dept d on e.deptno = d.deptno
    --join salgrade s on sal between s.losal and s.hisal
--order by d.dname, s.grade;

-- 앨범 리스트를 위한 셀렉문
-- 음악제목, 가수, TODO: 좋아요 개수, 
select a.album_id, a.album_name,
        s.song_id, s.title, s.genre, 
        singers.singer_name,
        title_songs.song_id as title_song
from albums a
    left join songs s on a.album_id = s.album_id
    left join singers on singers.song_id = s.song_id
    left join title_songs on title_songs.song_id= s.song_id
union
select a.album_id, a.album_name,
        s.song_id, s.title, s.genre, 
        singers.singer_name,
        title_songs.song_id as title_song
from albums a
    left join songs s on a.album_id = s.album_id
    left join singers on singers.song_id = s.song_id
    left join title_songs on title_songs.song_id= s.song_id;
    
-- 앨범 정보를 위한 셀렉 문
-- 앨범 번호, 앨범타입, 앨범제목,  발매일, 앨범 커버 이미지, 
-- 가수, 타이틀곡 장르
-- 타이틀곡
select a.album_id, a.album_type, a.album_name, a.album_release_date, a.album_image, 
        singers.singer_name,
        s.song_id, s.title, s.genre,
        title_songs.song_id
from albums a
    join songs s on a.album_id = s.album_id
    join singers on singers.song_id = s.song_id
    join title_songs on title_songs.song_id= s.song_id
    order by s.title;
        
insert into singers (song_id, singer_name)
values (1, 'kenzi');

insert into singers (song_id, singer_name)
values (3, 'kenzi');

insert into singers (song_id, singer_name)
values (4, 'kenzi');

insert into singers (song_id, singer_name)
values (5, 'kenzi');

commit;

insert into title_songs (album_id, song_id)
values (1, 1);