--------------- 아티스트
insert into artists (artist_image, artist_name, artist_description) 
    values ('10cm.jpg', '10cm', '10cm.txt');
    
insert into artists (artist_image, artist_name, artist_description) 
    values ('이요한.jpg', '이요한', '이요한.txt');

insert into artists (artist_image, artist_name, artist_description) 
    values ('성수용.jpg', '성수용', '성수용.txt');

insert into artists (artist_image, artist_name, artist_description) 
    values ('이윤혁.jpg', '이윤혁', '이윤혁.txt');
    
insert into artists (artist_image, artist_name, artist_description) 
    values ('박기훈.jpg', '박기훈', '박기훈.txt');
    
insert into artists (artist_image, artist_name, artist_description) 
    values ('인재.jpg', '인재', '인재.txt');
    
insert into artists (artist_image, artist_name, artist_description) 
    values ('박준규.jpg', '박준규', '박준규.txt');
    
insert into artists (artist_image, artist_name, artist_description) 
    values ('방인재.jpg', '방인재', '방인재.txt'); 
    
insert into artists (artist_image, artist_name, artist_description) 
    values ('NODAY.jpg', 'NODAY', 'NODAY.txt');

insert into artists (artist_image, artist_name, artist_description) 
    values ('이아일.jpg', '이아일', '이아일.txt');

insert into artists (artist_image, artist_name, artist_description) 
    values ('박문치.jpg', '박문치', '박문치.txt');

insert into artists (artist_image, artist_name, artist_description) 
    values ('달총 (CHEEZE).jpg', '달총 (CHEEZE)', '달총 (CHEEZE).txt');
    
    

insert into artists (artist_image, artist_name, artist_description) 
    values ('장범준.jpg', '장범준', '장범준.txt');

insert into artists (artist_image, artist_name, artist_description) 
    values ('이규형.jpg', '이규형', '이규형.txt');
    
insert into artists (artist_image, artist_name, artist_description) 
    values ('전영호.jpg', '전영호', '전영호.txt');

insert into artists (artist_image, artist_name, artist_description) 
    values ('황인현.jpg', '황인현', '황인현.txt');

--------------- 앨범
insert into albums (album_name, album_image, album_type, album_release_date) 
    values ('4.0', '10cm-4.0.jpg', '정규', TO_DATE('2017-09-01', 'YYYY-MM-DD'));
 
insert into albums (album_name, album_image, album_type, album_release_date) 
    values ('4.5', '10cm-tight.jpg', '싱글', TO_DATE('2020-09-22', 'YYYY-MM-DD'));

insert into albums (album_name, album_image, album_type, album_release_date) 
    values ('방에 모기가 있어 (4.4)', '방에 모기가 있어 (4.4).jpg', '싱글', TO_DATE('2019-08-06', 'YYYY-MM-DD'));
    
insert into albums (album_name, album_image, album_type, album_release_date) 
    values ('4.1', '10cm-4.1.jpg', '싱글', TO_DATE('2018-08-23', 'YYYY-MM-DD'));
 
insert into albums (album_name, album_image, album_type, album_release_date) 
    values ('The 3rd EP', '10cm-The3rdEP.jpg', '미니', TO_DATE('2021-11-11', 'YYYY-MM-DD'));
 
 insert into albums (album_name, album_image, album_type, album_release_date) 
    values ('장범준 3집', '장범준3집.jpg', '정규', TO_DATE('2019-03-21', 'YYYY-MM-DD'));

--------------- 노래들
-- 10cm-4.0 앨범 노래
    
insert into songs (album_id, title, song_path, lyrics, video_link) --title song
    values ((select album_id from albums where album_name = '4.0'),
    '폰서트', '폰서트.mp3', '폰서트.txt', 
    'https://www.youtube.com/embed/mOo8bVzN9M8?si=kA9lzRqtUi8VRJzj');
    
insert into songs (album_id, title, song_path, lyrics, video_link) --title song
    values ((select album_id from albums where album_name = '4.0'),
    'Help', '10cm-Help.mp3', '10cm-Help.txt', 
    'https://www.youtube.com/embed/LnT9LmmlLXw?si=HI_5GlY2XMUlw1ym');
    
insert into songs (album_id, title, song_path, lyrics, video_link)
    values ((select album_id from albums where album_name = '4.0'),
    'Everything', 'Everything.mp3', 'Everything.txt', 
    'https://www.youtube.com/embed/DOFojbxXShY?si=qCgbxJbQQjcro_Iy');
    
insert into songs (album_id, title, song_path, lyrics, video_link)
    values ((select album_id from albums where album_name = '4.0'),
    'pet', 'pet.mp3', 'pet.txt', 
    'https://www.youtube.com/embed/F4K1mMDlsj0?si=QtKvLNKyVp7d_Qm5');
    
insert into songs (album_id, title, song_path, lyrics, video_link)
    values ((select album_id from albums where album_name = '4.0'),
    '별자리', '별자리.mp3', '별자리.txt', 
    'https://www.youtube.com/embed/Pq6ImHFTBro?si=MxUgZawvdvZkov61');
    
insert into songs (album_id, title, song_path, lyrics, video_link)
    values ((select album_id from albums where album_name = '4.0'),
    'Hotel room', 'Hotel room.mp3', 'Hotel room.txt', 
    'https://www.youtube.com/embed/wGTekU9hHyE?si=vgkZfEb8PaQwLp1Z');
    
insert into songs (album_id, title, song_path, lyrics, video_link)
    values ((select album_id from albums where album_name = '4.0'),
    'Island', '10cm-Island.mp3', '10cm-Island.txt', 
    'https://www.youtube.com/embed/NhOv5blQn8w?si=0HhMJbJmVB-3dfEi');
    
insert into songs (album_id, title, song_path, lyrics, video_link)
    values ((select album_id from albums where album_name = '4.0'),
    '일시정지', 'pause.mp3', 'pause.txt', 
    'X');

-- 10cm 4.5 앨범 노래
insert into songs (album_id, title, song_path, lyrics, video_link) -- title song
    values ((select album_id from albums where album_name = '4.5'),
    'Tight', '10cm-Tight.mp3', '10cm-Tight.txt', 
    'https://www.youtube.com/embed/-xm5GpFwHw4?si=2dCUVlQWCZsl1kip');

-- 10cm 4.4 앨범 노래
insert into songs (album_id, title, song_path, lyrics, video_link) -- title song
    values ((select album_id from albums where album_name = '방에 모기가 있어 (4.4)'),
    '방에 모기가 있어 (Do You Think Of Me)', '방에 모기가 있어 (Do You Think Of Me).mp3', 
    '방에 모기가 있어 (Do You Think Of Me).txt', 
    'https://www.youtube.com/embed/d5cV86Sa6k0?si=CobQrt8ZujUkF8II');
    
-- 10cm 4.1 앨범 노래
insert into songs (album_id, title, song_path, lyrics, video_link) -- title song
    values ((select album_id from albums where album_name = '4.5'),
    '매트리스', '매트리스.mp3', '매트리스.txt', 
    'https://www.youtube.com/embed/seNNCbiXTSY?si=1u-8OsNLZ7GGP6wA');
    
        
-- 10cm The 3rd ep 노래
insert into songs (album_id, title, song_path, lyrics, video_link) --title song
    values ((select album_id from albums where album_name = 'The 3rd EP'),
    '어제 너는 나를 버렸어', '어제 너는 나를 버렸어.mp3', '어제 너는 나를 버렸어.txt', 
    'https://www.youtube.com/embed/bYleMOXKggY?si=U-YAaOLfe36tCmvM');

insert into songs (album_id, title, song_path, lyrics, video_link) --title song
    values ((select album_id from albums where album_name = 'The 3rd EP'),
    '가진다는 말은 좀 그렇지', '가진다는 말은 좀 그렇지.mp3', '가진다는 말은 좀 그렇지.txt', 
    'https://www.youtube.com/embed/TUo_XGiPmvI?si=BAdD_bPQWcC5_oaj');
    
insert into songs (album_id, title, song_path, lyrics, video_link)
    values ((select album_id from albums where album_name = 'The 3rd EP'),
    '열심히 할게', '열심히 할게.mp3', '열심히 할게.txt', 
    'https://www.youtube.com/embed/z2WRu2hLngg?si=ywsZi8utEu1mlZUP');

    
insert into songs (album_id, title, song_path, lyrics, video_link)
    values ((select album_id from albums where album_name = 'The 3rd EP'),
    'Condition', 'Condition.mp3', 'Condition.txt', 
    'https://www.youtube.com/embed/1FVySfPnLIU?si=ofooK0NzjkygXbFB');
    
insert into songs (album_id, title, song_path, lyrics, video_link)
    values ((select album_id from albums where album_name = 'The 3rd EP'),
    'Please Don''t Stop Your Singing', 'Please Don''t Stop Your Singing.mp3', 'Please Don''t Stop Your Singing.txt', 
    'https://www.youtube.com/embed/z2WRu2hLngg?si=dr70QcJvbL1VMsxc');
    
    
-- 장범준 3집 노래
insert into songs (album_id, title, song_path, lyrics, video_link)  -- title song
    values ((select album_id from albums where album_name = '장범준 3집'),
    '당신과는 천천히', '당신과는 천천히.mp3', '당신과는 천천히.txt', 
    'https://www.youtube.com/embed/EAVp84B888U?si=Z1sEAFJ9_BubgKxp');

insert into songs (album_id, title, song_path, lyrics, video_link)  -- title song
    values ((select album_id from albums where album_name = '장범준 3집'),
    '노래방에서', '노래방에서.mp3', '노래방에서.txt', 
    'x');
    
insert into songs (album_id, title, song_path, lyrics, video_link)  
    values ((select album_id from albums where album_name = '장범준 3집'),
    '일산으로', '일산으로.mp3', '일산으로.txt', 
    'x');
    
insert into songs (album_id, title, song_path, lyrics, video_link)  
    values ((select album_id from albums where album_name = '장범준 3집'),
    '그모습 그대로', '그모습 그대로.mp3', '그모습 그대로.txt', 
    'x');
    
insert into songs (album_id, title, song_path, lyrics, video_link)  
    values ((select album_id from albums where album_name = '장범준 3집'),
    '엄마 용돈 좀 보내주세요', '엄마 용돈 좀 보내주세요.mp3', '엄마 용돈 좀 보내주세요.txt', 
    'x');
    
insert into songs (album_id, title, song_path, lyrics, video_link)  
    values ((select album_id from albums where album_name = '장범준 3집'),
    '이밤', '이밤.mp3', '이밤.txt', 
    'x');
    
insert into songs (album_id, title, song_path, lyrics, video_link)  
    values ((select album_id from albums where album_name = '장범준 3집'),
    '왜', '왜.mp3', '왜.txt', 
    'x');

insert into songs (album_id, title, song_path, lyrics, video_link)  
    values ((select album_id from albums where album_name = '장범준 3집'),
    '상상속에서', '상상속에서.mp3', '상상속에서.txt', 
    'x');
    
---------------타이틀 송 
-- 10cm 4.0
insert into title_songs(album_id, song_id) 
values((select album_id from albums where album_name = '4.0'),
    (select song_id from songs where title='폰서트'));
insert into title_songs(album_id, song_id) 
values((select album_id from albums where album_name = '4.0'),
    (select song_id from songs where title='Help'));

-- 10cm 4.5
insert into title_songs(album_id, song_id) 
values((select album_id from albums where album_name = '4.5'),
    (select song_id from songs where title='Tight'));
    
-- 10cm 4.4
insert into title_songs(album_id, song_id) 
values((select album_id from albums where album_name = '방에 모기가 있어 (4.4)'),
    (select song_id from songs where title='방에 모기가 있어 (Do You Think Of Me)'));
    
-- 10cm 4.1
insert into title_songs(album_id, song_id) 
values((select album_id from albums where album_name = '4.1'),
    (select song_id from songs where title='매트리스'));
    
-- 10cm The 3rd ep
insert into title_songs(album_id, song_id) 
values((select album_id from albums where album_name = 'The 3rd EP'),
    (select song_id from songs where title='가진다는 말은 좀 그렇지'));
    
insert into title_songs(album_id, song_id) 
values((select album_id from albums where album_name = 'The 3rd EP'),
    (select song_id from songs where title='어제 너는 나를 버렸어'));
    
-- 장범준 3집
insert into title_songs(album_id, song_id) 
values((select album_id from albums where album_name = '장범준 3집'),
    (select song_id from songs where title='당신과는 천천히'));

insert into title_songs(album_id, song_id) 
values((select album_id from albums where album_name = '장범준 3집'),
    (select song_id from songs where title='노래방에서'));

--------------- 노래 장르
-- 10cm 4.0 장르
DECLARE
    v_album_id albums.album_id%TYPE;
BEGIN
    -- 특정 앨범 타이틀의 album_id를 가져옵니다.
    SELECT album_id INTO v_album_id
    FROM albums
    WHERE album_name = '4.0';
    -- 해당 album_id를 가진 모든 노래에 대해 song_genre 테이블에 데이터를 삽입합니다.
    FOR song_rec IN (SELECT song_id FROM songs WHERE album_id = v_album_id) LOOP
        INSERT INTO song_genre (song_id, genre_id)
        VALUES (song_rec.song_id, 90);
        INSERT INTO song_genre (song_id, genre_id)
        VALUES (song_rec.song_id, 80);
    END LOOP;
END;
/
delete from song_genre where song_id = (select song_id from songs where title='Help') 
    and genre_id = 80;

-- 10cm 4.5 장르
INSERT INTO song_genre (song_id, genre_id)
        VALUES ((select song_id from songs where title='Tight'), 80);
INSERT INTO song_genre (song_id, genre_id)
        VALUES ((select song_id from songs where title='Tight'), 90);

-- 10cm 4.4 장르
INSERT INTO song_genre (song_id, genre_id)
        VALUES ((select song_id from songs where title='방에 모기가 있어 (Do You Think Of Me)'), 80);
INSERT INTO song_genre (song_id, genre_id)
        VALUES ((select song_id from songs where title='방에 모기가 있어 (Do You Think Of Me)'), 90);

-- 10cm 4.1 장르
INSERT INTO song_genre (song_id, genre_id)
        VALUES ((select song_id from songs where title='매트리스'), 80);
INSERT INTO song_genre (song_id, genre_id)
        VALUES ((select song_id from songs where title='매트리스'), 90);

-- 10cm The 3rd ep 장르
DECLARE
    v_album_id albums.album_id%TYPE;
BEGIN
    -- 특정 앨범 타이틀의 album_id를 가져옵니다.
    SELECT album_id INTO v_album_id
    FROM albums
    WHERE album_name = 'The 3rd EP';
    -- 해당 album_id를 가진 모든 노래에 대해 song_genre 테이블에 데이터를 삽입합니다.
    FOR song_rec IN (SELECT song_id FROM songs WHERE album_id = v_album_id) LOOP
        INSERT INTO song_genre (song_id, genre_id)
        VALUES (song_rec.song_id, 10);
        INSERT INTO song_genre (song_id, genre_id)
        VALUES (song_rec.song_id, 80);
    END LOOP;
END;
/
-- 장범준 3집 장르
DECLARE
    v_album_id albums.album_id%TYPE;
BEGIN
    -- 특정 앨범 타이틀의 album_id를 가져옵니다.
    SELECT album_id INTO v_album_id
    FROM albums
    WHERE album_name = '장범준 3집';
    -- 해당 album_id를 가진 모든 노래에 대해 song_genre 테이블에 데이터를 삽입합니다.
    FOR song_rec IN (SELECT song_id FROM songs WHERE album_id = v_album_id) LOOP
        INSERT INTO song_genre (song_id, genre_id)
        VALUES (song_rec.song_id, 100);
    END LOOP;
END;
/
--------------- 노래별 아티스트 역할 추가 
-- 10cm 4.0앨범 아티스트 역할
DECLARE
    v_album_id albums.album_id%TYPE;
BEGIN
    -- 특정 앨범 타이틀의 album_id를 가져옵니다.
    SELECT album_id INTO v_album_id
    FROM albums
    WHERE album_name = '4.0';
    -- 해당 album_id를 가진 모든 노래에 대해 song_genre 테이블에 데이터를 삽입합니다.
    FOR song_rec IN (SELECT song_id FROM songs WHERE album_id = v_album_id) LOOP
        INSERT INTO artist_roles (artist_id, song_id, role_id)
        VALUES ((select artist_id from artists where artist_name = '10cm'), song_rec.song_id, 10);
        
        INSERT INTO artist_roles (artist_id, song_id, role_id)
        VALUES ((select artist_id from artists where artist_name = '10cm'), song_rec.song_id, 20);
        
        INSERT INTO artist_roles (artist_id, song_id, role_id)
        VALUES ((select artist_id from artists where artist_name = '10cm'), song_rec.song_id, 30);
        
        INSERT INTO artist_roles (artist_id, song_id, role_id)
        VALUES ((select artist_id from artists where artist_name = '10cm'), song_rec.song_id, 40);
        
        INSERT INTO artist_roles (artist_id, song_id, role_id)
        VALUES ((select artist_id from artists where artist_name = '이요한'), song_rec.song_id, 40);
        
        INSERT INTO artist_roles (artist_id, song_id, role_id)
        VALUES ((select artist_id from artists where artist_name = '성수용'), song_rec.song_id, 40);
        
        INSERT INTO artist_roles (artist_id, song_id, role_id)
        VALUES ((select artist_id from artists where artist_name = '이윤혁'), song_rec.song_id, 40);
        
    END LOOP;
END;
/

insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '박기훈'),
    (select song_id from songs where title = 'pet'),
    40);

insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '인재'),
    (select song_id from songs where title = '별자리'),
    40);

insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '인재'),
    (select song_id from songs where title = 'Help'),
    40);

insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '박준규'),
    (select song_id from songs where title = 'Hotel room'),
    40);
    
insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '인재'),
    (select song_id from songs where title = 'Island'),
    40);
    
-- 10cm 4.5앨범 아티스트 역할
insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '10cm'),
    (select song_id from songs where title = 'Tight'),
    10);
    
insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '10cm'),
    (select song_id from songs where title = 'Tight'),
    30);

insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = 'NODAY'),
    (select song_id from songs where title = 'Tight'),
    30);

insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '이아일'),
    (select song_id from songs where title = 'Tight'),
    30);
    
insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '박문치'),
    (select song_id from songs where title = 'Tight'),
    30);    
    
insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '달총 (CHEEZE)'),
    (select song_id from songs where title = 'Tight'),
    30);
    
insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '이아일'),
    (select song_id from songs where title = 'Tight'),
    20);

insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '박문치'),
    (select song_id from songs where title = 'Tight'),
    20);

insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = 'NODAY'),
    (select song_id from songs where title = 'Tight'),
    20);
    
insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '박문치'),
    (select song_id from songs where title = 'Tight'),
    40);

-- 10cm 4.4 앨범 아티스트 역할
insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '10cm'),
    (select song_id from songs where title = '방에 모기가 있어 (Do You Think Of Me)'),
    10);
    
insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '10cm'),
    (select song_id from songs where title = '방에 모기가 있어 (Do You Think Of Me)'),
    20);

insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '10cm'),
    (select song_id from songs where title = '방에 모기가 있어 (Do You Think Of Me)'),
    30);

insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '10cm'),
    (select song_id from songs where title = '방에 모기가 있어 (Do You Think Of Me)'),
    40);
    
insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '이요한'),
    (select song_id from songs where title = '방에 모기가 있어 (Do You Think Of Me)'),
    40);    
    
insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '성수용'),
    (select song_id from songs where title = '방에 모기가 있어 (Do You Think Of Me)'),
    40);
    
insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '이윤혁'),
    (select song_id from songs where title = '방에 모기가 있어 (Do You Think Of Me)'),
    40);

insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '방인재'),
    (select song_id from songs where title = '방에 모기가 있어 (Do You Think Of Me)'),
    40);

-- 10cm 4.1 앨범 아티스트 역할
insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '10cm'),
    (select song_id from songs where title = '매트리스'),
    10);
    
insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '10cm'),
    (select song_id from songs where title = '매트리스'),
    20);

insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '10cm'),
    (select song_id from songs where title = '매트리스'),
    30);

insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '10cm'),
    (select song_id from songs where title = '매트리스'),
    40);
    
insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '이요한'),
    (select song_id from songs where title = '매트리스'),
    40);    
    
insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '성수용'),
    (select song_id from songs where title = '매트리스'),
    40);
    
insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '이윤혁'),
    (select song_id from songs where title = '매트리스'),
    40);

insert into artist_roles (artist_id, song_id, role_id) 
    values ((select artist_id from artists where artist_name = '방인재'),
    (select song_id from songs where title = '매트리스'),
    40);
    

-- 10cm The 3rd ep앨범 아티스트 역할
DECLARE
    v_album_id albums.album_id%TYPE;
BEGIN
    -- 특정 앨범 타이틀의 album_id를 가져옵니다.
    SELECT album_id INTO v_album_id
    FROM albums
    WHERE album_name = 'The 3rd EP';
    -- 해당 album_id를 가진 모든 노래에 대해 song_genre 테이블에 데이터를 삽입합니다.
    FOR song_rec IN (SELECT song_id FROM songs WHERE album_id = v_album_id) LOOP
        INSERT INTO artist_roles (artist_id, song_id, role_id)
        VALUES ((select artist_id from artists where artist_name = '10cm'), song_rec.song_id, 10);
        
        INSERT INTO artist_roles (artist_id, song_id, role_id)
        VALUES ((select artist_id from artists where artist_name = '10cm'), song_rec.song_id, 20);
        
        INSERT INTO artist_roles (artist_id, song_id, role_id)
        VALUES ((select artist_id from artists where artist_name = '10cm'), song_rec.song_id, 30);
        
        INSERT INTO artist_roles (artist_id, song_id, role_id)
        VALUES ((select artist_id from artists where artist_name = '10cm'), song_rec.song_id, 40);
        
        INSERT INTO artist_roles (artist_id, song_id, role_id)
        VALUES ((select artist_id from artists where artist_name = '이요한'), song_rec.song_id, 40);
        
        INSERT INTO artist_roles (artist_id, song_id, role_id)
        VALUES ((select artist_id from artists where artist_name = '성수용'), song_rec.song_id, 40);
        
        INSERT INTO artist_roles (artist_id, song_id, role_id)
        VALUES ((select artist_id from artists where artist_name = '이윤혁'), song_rec.song_id, 40);
        
        INSERT INTO artist_roles (artist_id, song_id, role_id)
        VALUES ((select artist_id from artists where artist_name = '방인재'), song_rec.song_id, 40);
    END LOOP;
END;
/
-- 장범준 3집 앨범 아티스트 역할
DECLARE
    v_album_id albums.album_id%TYPE;
BEGIN
    -- 특정 앨범 타이틀의 album_id를 가져옵니다.
    SELECT album_id INTO v_album_id
    FROM albums
    WHERE album_name = '장범준 3집';
    -- 해당 album_id를 가진 모든 노래에 대해 song_genre 테이블에 데이터를 삽입합니다.
    FOR song_rec IN (SELECT song_id FROM songs WHERE album_id = v_album_id) LOOP
        INSERT INTO artist_roles (artist_id, song_id, role_id)
        VALUES ((select artist_id from artists where artist_name = '장범준'), song_rec.song_id, 10);
        
        INSERT INTO artist_roles (artist_id, song_id, role_id)
        VALUES ((select artist_id from artists where artist_name = '장범준'), song_rec.song_id, 20);
        
        INSERT INTO artist_roles (artist_id, song_id, role_id)
        VALUES ((select artist_id from artists where artist_name = '장범준'), song_rec.song_id, 30);
        
        INSERT INTO artist_roles (artist_id, song_id, role_id)
        VALUES ((select artist_id from artists where artist_name = '장범준'), song_rec.song_id, 40);
        
        INSERT INTO artist_roles (artist_id, song_id, role_id)
        VALUES ((select artist_id from artists where artist_name = '이규형'), song_rec.song_id, 40);
        
        INSERT INTO artist_roles (artist_id, song_id, role_id)
        VALUES ((select artist_id from artists where artist_name = '전영호'), song_rec.song_id, 40);
        
        INSERT INTO artist_roles (artist_id, song_id, role_id)
        VALUES ((select artist_id from artists where artist_name = '황인현'), song_rec.song_id, 40);
        
    END LOOP;
END;
/








commit;
    
    
    
    
    
    
