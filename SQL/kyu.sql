-- 코드마스터 테이블에 장르 설정
insert into code_master (code_id, code_name)
values (2, '장르');

-- 장르 종류를 설정
insert into genre_code (code_id, genre_name, genre_id)
values (2, '발라드', 10);

insert into genre_code (code_id, genre_name, genre_id)
values (2, '팝', 20);

insert into genre_code (code_id, genre_name, genre_id)
values (2, '댄스/일렉', 30);

insert into genre_code (code_id, genre_name, genre_id)
values (2, '알앤비', 40);

insert into genre_code (code_id, genre_name, genre_id)
values (2, '힙합', 50);

insert into genre_code (code_id, genre_name, genre_id)
values (2, '트로트', 60);

insert into genre_code (code_id, genre_name, genre_id)
values (2, 'OST', 70);

insert into genre_code (code_id, genre_name, genre_id)
values (2, '인디', 80);

insert into genre_code (code_id, genre_name, genre_id)
values (2, '포크/블루스', 90);

insert into genre_code (code_id, genre_name, genre_id)
values (2, '록/메탈', 100);

select * from genre_code order by genre_id;

insert into albums (album_name, album_image, album_type, album_release_date)
values ('What Time!', 
        'what_time_album_image.jpg', 
        'EP',
        '2023-08-18'
        );
--update albums set album_image = 'what_time_album_image' where album_id=1;
select * from albums order by album_id desc;

insert into songs (album_id, title, song_path, lyrics)
values (1,
        'What time! (Feat.DumbAss)',
        'what_time_what_time_kenzi.mp3',
        'what_time_what_time_lyrics.txt');
        
insert into songs (album_id, title, song_path, lyrics)
values (1,
        '좋겠어 (feat. 현서)',
        'what_time_i_wish_kenzi.mp3',
        'what_time_i_wish_lyrics.txt'
        );
        
insert into songs (album_id, title, song_path, lyrics)
values (1,
        'Ice (feat. PLHN)',
        'what_time_ice_kenzi.mp3',
        'what_time_ice_lyrics.txt'
        );
        
insert into songs (album_id, title, song_path, lyrics)
values (1,
        'Promise (약속)',
        'what_time_promise_kenzi.mp3',
        'what_time_promise_lyrics.txt'
        );

select * from songs order by song_id;

insert into song_genre (song_id, genre_id)
values (1, 50);

insert into song_genre (song_id, genre_id)
values (2, 50);

insert into song_genre (song_id, genre_id)
values (3, 50);

insert into song_genre (song_id, genre_id)
values (4, 50);

select * from song_genre order by song_id;

select a.album_id, a.album_type, a.album_name, a.album_release_date, a.album_image, 
        s.song_id, s.title, s.lyrics, s.song_path, gc.genre_name
from albums a
join songs s on a.album_id = s.album_id
join song_genre sg on s.song_id = sg.song_id
join genre_code gc on sg.genre_id = gc.genre_id
where a.album_id = 1;

-- 인물 컬럼도 추가해야됨.

-- 코드마스터 데이터 삽입
insert into code_master (code_id, code_name)
values (1, '아티스트');

-- 역할 코드 데이터 삽입
insert into role_code (code_id, role_name, role_id)
values (1, '가수', 10);

insert into role_code (code_id, role_name, role_id)
values (1, '작곡가', 20);

insert into role_code (code_id, role_name, role_id)
values (1, '작사가', 30);

insert into role_code (code_id, role_name, role_id)
values (1, '편곡가', 40);

select * from role_code;

-- 음원의 참여 아티스트 데이터 삽입
insert into artists (artist_name, artist_image, artist_description)
values ('Kenzi', 'kenziImage.jpg', 'kenziDescription.txt');

insert into artists (artist_name, artist_image, artist_description)
values ('PLHN', 'PLHNImage.jpg', 'PLHNDescription.txt');

insert into artists (artist_name, artist_image, artist_description)
values ('Placcebo Beats', 'PlacceboBeatsImage.jpg', 'PlacceboBeatsDescription.txt');

insert into artists (artist_name, artist_image, artist_description)
values ('DumbAss', 'DumbAssImage.jpg', 'DumbAssDescription.txt');

insert into artists (artist_name, artist_image, artist_description)
values ('현서 (HYUN SEO)', 'HYUNSEOImage.jpg', 'HYUNSEODescription.txt');

insert into artists (artist_name, artist_image, artist_description)
values ('Tmlm', 'TmlmImage.jpg', 'TmlmDescription.txt');

insert into artists (artist_name, artist_image, artist_description)
values ('Wolfgang Pander', 'WolfgangPanderImage.jpg', 'WolfgangPanderDescription.txt');

select * from artists;

-- 아티스트 역할 코드 등록

-- What time! (Feat.DumbAss)
--kenzi
insert into artist_roles (artist_id, song_id, role_id)
values (1, 1, 10);
insert into artist_roles (artist_id, song_id, role_id)
values (1, 1, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (1, 1, 30);

--DumbAss
insert into artist_roles (artist_id, song_id, role_id)
values (4, 1, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (4, 1, 30);

--GAXILLIC
insert into artist_roles (artist_id, song_id, role_id)
values (4, 1, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (4, 1, 40);



-- 좋겠어 (Feat.HYUN SEO)
--kenzi
insert into artist_roles (artist_id, song_id, role_id)
values (1, 2, 10); 
insert into artist_roles (artist_id, song_id, role_id)
values (1, 2, 20); 
insert into artist_roles (artist_id, song_id, role_id)
values (1, 2, 30); 

--현서 (HYUN SEO)
insert into artist_roles (artist_id, song_id, role_id)
values (5, 2, 20); 
insert into artist_roles (artist_id, song_id, role_id)
values (5, 2, 30); 

-- Tmlm
insert into artist_roles (artist_id, song_id, role_id)
values (6, 2, 20); 
insert into artist_roles (artist_id, song_id, role_id)
values (6, 2, 40); 

-- Ice (Feat.PLHN)
-- kenzi
insert into artist_roles (artist_id, song_id, role_id)
values (1, 3, 10); 
insert into artist_roles (artist_id, song_id, role_id)
values (1, 3, 20); 
insert into artist_roles (artist_id, song_id, role_id)
values (1, 3, 30); 

-- PLHN
insert into artist_roles (artist_id, song_id, role_id)
values (2, 3, 20); 

insert into artist_roles (artist_id, song_id, role_id)
values (2, 3, 30); 

-- Placcebo Beats
insert into artist_roles (artist_id, song_id, role_id)
values (3, 3, 20); 
insert into artist_roles (artist_id, song_id, role_id)
values (3, 3, 40); 

-- Promise (약속)
-- kenzi
insert into artist_roles (artist_id, song_id, role_id)
values (1, 4, 10); 
insert into artist_roles (artist_id, song_id, role_id)
values (1, 4, 20); 
insert into artist_roles (artist_id, song_id, role_id)
values (1, 4, 30); 

-- Wolfgang Pander
insert into artist_roles (artist_id, song_id, role_id)
values (7, 4, 20); 
insert into artist_roles (artist_id, song_id, role_id)
values (7, 4, 40); 

-- 타이틀 곡 설정
insert into title_songs (album_id, song_id)
values (1, 1); -- what time은 타이틀곡


-- 아티스트 쿼리문 작성 (Kenzi)
select s.song_id, s.title,
    art.artist_name, art.artist_image, art.artist_description, rc.role_name
from songs s
join artist_roles artr on s.song_id = artr.song_id
join artists art on artr.artist_id = art.artist_id
join role_code rc on artr.role_id = rc.role_id
where art.artist_id = 1
order by song_id;

-- 앨범 쿼리문 작성
    select a.album_id, a.album_type, a.album_name, a.album_release_date, a.album_image, 
        s.song_id, ts.song_id as title_song, s.title, gc.genre_name, art.artist_name
    from albums a
        join songs s on a.album_id = s.album_id
        join song_genre sg on s.song_id = sg.song_id
        join genre_code gc on sg.genre_id = gc.genre_id
        join artist_roles artr on s.song_id = artr.song_id
        join artists art on artr.artist_id = art.artist_id
        join role_code rc on artr.role_id = rc.role_id
        join title_songs ts on ts.song_id= s.song_id
          where a.album_id = 1 and rc.role_id = 10;

-- 앨범, 음원, 아티스트(가수) 쿼리문 작성
select a.album_id, a.album_type, a.album_name, a.album_release_date, a.album_image, 
        s.song_id, s.title, s.lyrics, s.song_path, gc.genre_name, 
        art.artist_name, art.artist_image, art.artist_description, rc.role_name
from albums a
join songs s on a.album_id = s.album_id
join song_genre sg on s.song_id = sg.song_id
join genre_code gc on sg.genre_id = gc.genre_id
join artist_roles artr on s.song_id = artr.song_id
join artists art on artr.artist_id = art.artist_id
join role_code rc on artr.role_id = rc.role_id
where a.album_id = 1 and rc.role_id = 10;

-- 앨범, 음원, 아티스트(가수), 타이틀곡 정렬, 음원 좋아요, 앨범 좋아요 쿼리문 작성
select a.album_id, a.album_type, a.album_name, a.album_release_date, a.album_image, count(al.id) as album_likes_count, 
        s.song_id, ts.song_id as title_song, s.title, s.lyrics, s.song_path, gc.genre_name, 
        art.artist_id, art.artist_name, art.artist_image, art.artist_description, rc.role_name, 
        count(l.id) as likes_count
from albums a
join songs s on a.album_id = s.album_id
join song_genre sg on s.song_id = sg.song_id
join genre_code gc on sg.genre_id = gc.genre_id
join artist_roles artr on s.song_id = artr.song_id
join artists art on artr.artist_id = art.artist_id
join role_code rc on artr.role_id = rc.role_id
left join title_songs ts on ts.song_id= s.song_id
left join likes l on l.song_id = s.song_id
left join album_likes al on al.album_id = a.album_id
where a.album_id = 1 and rc.role_id = 10
GROUP BY a.album_id, a.album_type, a.album_name, a.album_release_date, a.album_image, 
        s.song_id, ts.song_id, s.title, s.lyrics, s.song_path, gc.genre_name, 
        art.artist_name, art.artist_image, art.artist_description, rc.role_name, art.artist_id;
        

-- 재생을 위한 음원정보를 가져오는 쿼리
      select a.album_id, a.album_type, a.album_name, a.album_release_date, a.album_image, 
        art.artist_name, art.artist_id,
        s.song_id, s.title, s.song_path, gc.genre_name
      from albums a
        join songs s on a.album_id = s.album_id
        join song_genre sg on s.song_id = sg.song_id
        join genre_code gc on sg.genre_id = gc.genre_id
        join artist_roles artr on s.song_id = artr.song_id
        join artists art on artr.artist_id = art.artist_id
        join role_code rc on artr.role_id = rc.role_id
      where s.song_id = 1 and rc.role_id=10;
      
commit;

select a.album_id, a.album_name, 
        s.song_id, ts.song_id as title_song, s.title, s.song_path, gc.genre_name, 
        art.artist_name, art.artist_image, art.artist_description,
        count(l.id) as likes_count
      from albums a
        join songs s on a.album_id = s.album_id
        join song_genre sg on s.song_id = sg.song_id
        join genre_code gc on sg.genre_id = gc.genre_id
        join artist_roles artr on s.song_id = artr.song_id
        join artists art on artr.artist_id = art.artist_id
        join role_code rc on artr.role_id = rc.role_id
        left join title_songs ts on ts.song_id= s.song_id
        left join likes l on l.song_id = s.song_id
        left join album_likes al on al.album_id = a.album_id
      where a.album_id = 1 and rc.role_id = 10
      GROUP BY a.album_id, a.album_type, a.album_name, a.album_release_date, a.album_image, 
        s.song_id, ts.song_id, s.title, s.lyrics, s.song_path, gc.genre_name, 
        art.artist_name, art.artist_image, art.artist_description;
        
  
  
SELECT 
    a.album_id, 
    a.album_name, 
    s.song_id, 
    ts.song_id AS title_song, 
    s.title, 
    s.song_path, 
    LISTAGG(DISTINCT gc.genre_name, ', ') WITHIN GROUP (ORDER BY gc.genre_name) AS genre_name,
    art.artist_id,
    art.artist_name,
    art.artist_image,
    art.artist_description,
    COUNT(DISTINCT l.id) AS likes_count
FROM 
    albums a
    JOIN songs s ON a.album_id = s.album_id
    LEFT JOIN song_genre sg ON s.song_id = sg.song_id
    LEFT JOIN genre_code gc ON sg.genre_id = gc.genre_id
    JOIN artist_roles artr ON s.song_id = artr.song_id
    JOIN artists art ON artr.artist_id = art.artist_id
    JOIN role_code rc ON artr.role_id = rc.role_id
    LEFT JOIN title_songs ts ON ts.song_id = s.song_id
    LEFT JOIN likes l ON l.song_id = s.song_id
    LEFT JOIN album_likes al ON al.album_id = a.album_id
WHERE 
    a.album_id = 1 AND rc.role_id = 10
GROUP BY 
    a.album_id, a.album_name, s.song_id, ts.song_id, s.title, s.song_path,
    art.artist_id, art.artist_name, art.artist_image, art.artist_description
ORDER BY 
    ts.song_id, s.song_id; 
    
SELECT 
    a.album_id, 
    a.album_type, 
    a.album_name, 
    a.album_release_date, 
    a.album_image, 
    LISTAGG(DISTINCT s.song_id, ', ') WITHIN GROUP (ORDER BY s.song_id) AS song_id,
    LISTAGG(DISTINCT s.title, ', ') WITHIN GROUP (ORDER BY s.title) AS title,
    LISTAGG(DISTINCT gc.genre_name, ', ') WITHIN GROUP (ORDER BY gc.genre_name) AS genre_name,
    LISTAGG(DISTINCT art.artist_name, ', ') WITHIN GROUP (ORDER BY art.artist_name) AS artist_name,
    LISTAGG(DISTINCT art.artist_id, ', ') WITHIN GROUP (ORDER BY art.artist_id) AS artist_id
FROM 
    albums a
    JOIN songs s ON a.album_id = s.album_id
    JOIN title_songs ts ON ts.song_id = s.song_id
    LEFT JOIN song_genre sg ON s.song_id = sg.song_id
    LEFT JOIN genre_code gc ON sg.genre_id = gc.genre_id
    JOIN artist_roles artr ON s.song_id = artr.song_id
    JOIN artists art ON artr.artist_id = art.artist_id
    JOIN role_code rc ON artr.role_id = rc.role_id
WHERE 
    a.album_id = 1 AND rc.role_id = 10
GROUP BY 
    a.album_id, 
    a.album_type, 
    a.album_name, 
    a.album_release_date, 
    a.album_image;
--

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
    where a.album_id = 1
union
select a.album_id, a.album_name,
        s.song_id, s.title, s.genre, 
        singers.singer_name,
        title_songs.song_id as title_song
from albums a
    left join songs s on a.album_id = s.album_id
    left join singers on singers.song_id = s.song_id
    left join title_songs on title_songs.song_id= s.song_id
    where a.album_id = 1;
    
SELECT 
    a.album_id, 
    a.album_name,
    s.song_id, 
    s.title, 
    s.genre, 
    singers.singer_name,
    title_songs.song_id as title_song,
    COUNT(l.id) as count_likes
FROM 
    albums a
    LEFT JOIN songs s ON a.album_id = s.album_id
    LEFT JOIN singers ON singers.song_id = s.song_id
    LEFT JOIN title_songs ON title_songs.song_id = s.song_id
    LEFT JOIN likes l ON l.song_id = s.song_id
GROUP BY 
    a.album_id, 
    a.album_name,
    s.song_id, 
    s.title, 
    s.genre, 
    singers.singer_name,
    title_songs.song_id
UNION
SELECT 
    a.album_id, 
    a.album_name,
    s.song_id, 
    s.title, 
    s.genre, 
    singers.singer_name,
    title_songs.song_id as title_song,
    COUNT(l.id) as count_likes
FROM 
    albums a
    LEFT JOIN songs s ON a.album_id = s.album_id
    LEFT JOIN singers ON singers.song_id = s.song_id
    LEFT JOIN title_songs ON title_songs.song_id = s.song_id
    LEFT JOIN likes l ON l.song_id = s.song_id
GROUP BY 
    a.album_id, 
    a.album_name,
    s.song_id, 
    s.title, 
    s.genre, 
    singers.singer_name,
    title_songs.song_id;
    
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

-- 앨범의 수록곡 개수를 가져오는 쿼리
select count(*)
from albums a
left join songs s on a.album_id = s.album_id;

-- 음원 번호로 음원 정보를 가져오는 쿼리
select a.album_id, a.album_type, a.album_name, a.album_release_date, a.album_image, 
    singers.singer_name,
    s.song_id, s.title, ss.song_path, s.genre
from albums a
    join songs s on a.album_id = s.album_id
    join singers on  s.song_id = singers.song_id
where s.song_id = 1;

-- 회원 정보 더미데이터 1~5 까지 만듬
insert into users (user_name, user_id, email, nickname, password, hint_question, hint_answer)
values (5,5,5,5,1,1,1);

-- 좋아요 정보 더미데이터
insert into likes (song_id, id)
values (5, 1);

select * 
from users;

select *
from likes;

select count(song_id)
from likes where song_id=1;
