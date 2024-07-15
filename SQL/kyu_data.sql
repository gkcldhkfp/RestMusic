insert into albums (album_name, album_image, album_type, album_release_date)
values ('What Time!', 
        'what_time_album_image.png', 
        'EP',
        '2023-08-18'
        );

insert into songs (album_id, title, song_path, lyrics)
values (1,
        'What time! (Feat.DumbAss)',
        'what_time_what_time_kenzi.mp3',
        'kenzi_WhatTime_lyrics.txt');
        
insert into songs (album_id, title, song_path, lyrics)
values (1,
        '좋겠어 (feat. 현서)',
        'what_time_i_wish_kenzi.mp3',
        'kenzi_좋겠어_lyrics.txt'
        );
        
insert into songs (album_id, title, song_path, lyrics)
values (1,
        'Ice (feat. PLHN)',
        'what_time_ice_kenzi.mp3',
        'kenzi_Ice_lyrics.txt'
        );
        
insert into songs (album_id, title, song_path, lyrics)
values (1,
        'Promise (약속)',
        'what_time_promise_kenzi.mp3',
        'kenzi_약속_lyrics.txt'
        );

insert into song_genre (song_id, genre_id)
values (1, 50);

insert into song_genre (song_id, genre_id)
values (1, 80);

insert into song_genre (song_id, genre_id)
values (2, 50);
insert into song_genre (song_id, genre_id)
values (2, 80);

insert into song_genre (song_id, genre_id)
values (3, 50);
insert into song_genre (song_id, genre_id)
values (3, 80);

insert into song_genre (song_id, genre_id)
values (4, 50);
insert into song_genre (song_id, genre_id)
values (4, 80);

-- 음원의 참여 아티스트 데이터 삽입
-- 아티스트 1번
insert into artists (artist_name, artist_image, artist_description)
values ('Kenzi', '켄지아티스트이미지.jpg', 'kenzi_description.txt');

insert into artists (artist_name)
values ('PLHN');

insert into artists (artist_name)
values ('Placcebo Beats');

insert into artists (artist_name)
values ('DumbAss');

insert into artists (artist_name)
values ('현서 (HYUN SEO)');

insert into artists (artist_name)
values ('Tmlm');

insert into artists (artist_name)
values ('Wolfgang Pander');

--아티스트 7번까지

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



-- 아이유 lilac---------------------------------------------------
insert into albums (album_name, album_image, album_type, album_release_date)
values ('IU 5th Album LILAC', 
        'lilac_albumcover.png', 
        '정규',
        '2021-03-25'
        );

-- 음원 정보 5번 시작				
insert into songs (album_id, title, song_path, lyrics)
values (2,
        '라일락',
        'IU(아이유) - 라일락.mp3',
        '아이유라일락가사.txt');
insert into songs (album_id, title, song_path, lyrics)
values (2,
        'Flu',
        'Flu.mp3',
        '아이유Flu가사.txt');
insert into songs (album_id, title, song_path, lyrics)
values (2,
        'Coin',
        'IU- Coin.mp3',
        '아이유Coin가사.txt');
insert into songs (album_id, title, song_path, lyrics)
values (2,
        '봄 안녕 봄',
        '봄 안녕 봄.mp3',
        '아이유_봄안녕봄가사.txt');
insert into songs (album_id, title, song_path, lyrics)
values (2,
        'Celebrity',
        '아이유(IU) - Celebrity.mp3',
        '아이유Celebrity가사.txt');
insert into songs (album_id, title, song_path, lyrics)
values (2,
        '돌림노래 (Feat. DEAN)',
        '돌림노래 (Feat. DEAN).mp3',
        '아이유돌림노래가사.txt');
insert into songs (album_id, title, song_path, lyrics)
values (2,
        '빈 컵 (Empty Cup)',
        '빈 컵.mp3',
        '아이유빈컵가사.txt');
insert into songs (album_id, title, song_path, lyrics)
values (2,
        '아이와 나의 바다',
        '아이와 나의 바다.mp3',
        '아이유아이와나의바다가사.txt');
insert into songs (album_id, title, song_path, lyrics)
values (2,
        '어푸 (Ah puh)',
        'IU 어푸.mp3',
        '아이유어푸가사.txt');
insert into songs (album_id, title, song_path, lyrics)
values (2,
        '에필로그',
        'IU - 에필로그.mp3',
        '아이유에필로그가사.txt');
-- 음원번호 14번까지

-- 타이틀곡 설정
--라일락(5), 코인(7)
-- 타이틀 곡 설정
insert into title_songs (album_id, song_id)
values (2, 5); 
insert into title_songs (album_id, song_id)
values (2, 7); 
-- 아이유 lilac장르 설정
insert into song_genre (song_id, genre_id)
values (5, 30);
insert into song_genre (song_id, genre_id)
values (6, 30);
insert into song_genre (song_id, genre_id)
values (7, 40);
insert into song_genre (song_id, genre_id)
values (8, 10);
insert into song_genre (song_id, genre_id)
values (9, 30);
insert into song_genre (song_id, genre_id)
values (10, 40);
insert into song_genre (song_id, genre_id)
values (11, 40);
insert into song_genre (song_id, genre_id)
values (12, 10);
insert into song_genre (song_id, genre_id)
values (13, 30);
insert into song_genre (song_id, genre_id)
values (14, 10);

-- 음원의 참여 아티스트 데이터 삽입
-- 아티스트번호 8번부터
insert into artists (artist_name, artist_image, artist_description)
values ('아이유', '아이유아티스트사진.png', '아이유_설명.txt');
insert into artists (artist_name)
values ('임수호');
insert into artists (artist_name)
values ('Dr.JO');
insert into artists (artist_name)
values ('웅킴');
insert into artists (artist_name)
values ('N!ko');
insert into artists (artist_name)
values ('Ryan S. Jhun');
insert into artists (artist_name)
values ('Martin Coogan');
insert into artists (artist_name)
values ('Madilyn Bailey');
insert into artists (artist_name)
values ('Zacchariah Palmer');
insert into artists (artist_name)
values ('London Jackson');
insert into artists (artist_name)
values ('Jacob Chatelain');
insert into artists (artist_name)
values ('London Jackson');
insert into artists (artist_name)
values ('Ryan S. Jhun');
insert into artists (artist_name)
values ('Poptime');
insert into artists (artist_name)
values ('Kako');
insert into artists (artist_name)
values ('나얼');
insert into artists (artist_name)
values ('강화성');
insert into artists (artist_name)
values ('Jeppe London Bilsby');
insert into artists (artist_name)
values ('Lauritz Emil Christiansen');
insert into artists (artist_name)
values ('Chloe Latimer');
insert into artists (artist_name)
values ('Celine Svanback');
insert into artists (artist_name)
values ('박우상');
insert into artists (artist_name)
values ('JUNNY');
insert into artists (artist_name)
values ('DEAN');
insert into artists (artist_name)
values ('jane');
insert into artists (artist_name)
values ('WOOGIE');
insert into artists (artist_name)
values ('PENOMECO');
insert into artists (artist_name)
values ('제휘');
insert into artists (artist_name)
values ('김희원');
insert into artists (artist_name)
values ('이찬혁');
insert into artists (artist_name)
values ('PEEJAY');
insert into artists (artist_name)
values ('심은지');
insert into artists (artist_name)
values ('SUMIN');
insert into artists (artist_name)
values ('김수영');
insert into artists (artist_name)
values ('임금비');

-- 아티스트 역할번호 부여
-- 5번 라일락
-- 8번부터
-- 8번이 아이유
insert into artist_roles (artist_id, song_id, role_id)
values (8, 5, 10);
insert into artist_roles (artist_id, song_id, role_id)
values (9, 5, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (10, 5, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (11, 5, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (12, 5, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (8, 5, 30);
insert into artist_roles (artist_id, song_id, role_id)
values (9, 5, 40);
insert into artist_roles (artist_id, song_id, role_id)
values (11, 5, 40);
insert into artist_roles (artist_id, song_id, role_id)
values (12, 5, 40);

-- 6번 Flu
insert into artist_roles (artist_id, song_id, role_id)
values (8, 6, 10);
insert into artist_roles (artist_id, song_id, role_id)
values (13, 6, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (14, 6, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (15, 6, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (16, 6, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (17, 6, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (18, 6, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (8, 6, 30);
insert into artist_roles (artist_id, song_id, role_id)
values (18, 6, 40);
insert into artist_roles (artist_id, song_id, role_id)
values (17, 6, 40);
insert into artist_roles (artist_id, song_id, role_id)
values (13, 6, 40);

-- 7번 Coin
insert into artist_roles (artist_id, song_id, role_id)
values (8, 7, 10);
insert into artist_roles (artist_id, song_id, role_id)
values (21, 7, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (22, 7, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (8, 7, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (8, 7, 30);
insert into artist_roles (artist_id, song_id, role_id)
values (21, 7, 40);

-- 8번 봄 안녕 봄
insert into artist_roles (artist_id, song_id, role_id)
values (8, 8, 10);
insert into artist_roles (artist_id, song_id, role_id)
values (23, 8, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (8, 8, 30);
insert into artist_roles (artist_id, song_id, role_id)
values (25, 8, 40);
insert into artist_roles (artist_id, song_id, role_id)
values (26, 8, 40);
insert into artist_roles (artist_id, song_id, role_id)
values (20, 8, 40);

-- 9번 Celebrity
insert into artist_roles (artist_id, song_id, role_id)
values (8, 9, 10);
insert into artist_roles (artist_id, song_id, role_id)
values (20, 9, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (25, 9, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (26, 9, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (8, 9, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (27, 9, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (28, 9, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (8, 9, 30);
insert into artist_roles (artist_id, song_id, role_id)
values (25, 9, 40);
insert into artist_roles (artist_id, song_id, role_id)
values (26, 9, 40);
insert into artist_roles (artist_id, song_id, role_id)
values (20, 9, 40);

-- 10번 돌림노래
insert into artist_roles (artist_id, song_id, role_id)
values (8, 10, 10);
insert into artist_roles (artist_id, song_id, role_id)
values (31, 10, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (29, 10, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (30, 10, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (31, 10, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (32, 10, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (8, 10, 30);
insert into artist_roles (artist_id, song_id, role_id)
values (8, 10, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (29, 10, 40);

-- 11번 빈 컵
insert into artist_roles (artist_id, song_id, role_id)
values (8, 11, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (33, 11, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (34, 11, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (8, 11, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (33, 11, 40);

-- 12번 아이와 나의 바다
insert into artist_roles (artist_id, song_id, role_id)
values (8, 12, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (35, 12, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (36, 12, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (8, 12, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (35, 12, 40);

-- 13번 어푸
insert into artist_roles (artist_id, song_id, role_id)
values (8, 13, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (37, 13, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (38, 13, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (8, 13, 30);
insert into artist_roles (artist_id, song_id, role_id)
values (37, 13, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (38, 13, 40);

-- 14번 에필로그
insert into artist_roles (artist_id, song_id, role_id)
values (8, 14, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (39, 14, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (40, 14, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (41, 14, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (42, 14, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (8, 14, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (39, 14, 40);
insert into artist_roles (artist_id, song_id, role_id)
values (41, 14, 40);
-- 아티스트번호 42번 까지

-- 천천히 가 앨범
insert into albums (album_name, album_image, album_type, album_release_date)
values ('천천히가', 
        'kenzi_천천히가_albumcover.png', 
        '싱글',
        '2021-05-01'
        );

-- 15번
insert into songs (album_id, title, song_path, lyrics)
values (3,
        '천천히 가',
        'Kenzi-천천히가.mp3',
        'kenzi_천천히가_lyrics.txt');
        
-- 16번
insert into songs (album_id, title, song_path, lyrics)
values (3,
        '막달려가 (feat.스카이민혁)',
        'Kenzi - 막달려가 (feat.스카이민혁).mp3',
        'kenzi_막달려가_lyrics.txt'
        );

-- 타이틀 곡 설정
-- 둘다 타이틀 곡임
-- 천천히가(15) 막달려가(16)
insert into title_songs (album_id, song_id)
values (3, 15); 
insert into title_songs (album_id, song_id)
values (3, 16); 

-- 장르설정 랩/힙합, 인디
insert into song_genre (song_id, genre_id)
values (15, 50);
insert into song_genre (song_id, genre_id)
values (15, 80);

insert into song_genre (song_id, genre_id)
values (16, 50);
insert into song_genre (song_id, genre_id)
values (16, 80);



-- 음원의 참여 아티스트 데이터 삽입
-- 아티스트 43번 부터

insert into artists (artist_name)
values ('ST4NDARD');

insert into artists (artist_name)
values ('스카이민혁');

insert into artists (artist_name)
values ('TYRAN');
-- 아티스트 45번까지

-- 천천히가 15번
insert into artist_roles (artist_id, song_id, role_id)
values (1, 15, 10);
insert into artist_roles (artist_id, song_id, role_id)
values (43, 15, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (1, 15, 30);
insert into artist_roles (artist_id, song_id, role_id)
values (43, 15, 40);

-- 막달려가 16번
insert into artist_roles (artist_id, song_id, role_id)
values (1, 16, 10);
insert into artist_roles (artist_id, song_id, role_id)
values (44, 16, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (45, 16, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (1, 16, 30);
insert into artist_roles (artist_id, song_id, role_id)
values (44, 16, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (45, 16, 40);
insert into artist_roles (artist_id, song_id, role_id)
values (1, 16, 40);

-- 볼빨간사춘기 RED PLANET 4번앨범
insert into albums (album_name, album_image, album_type, album_release_date)
values ('RED PLANET', 
        'bol4_RED PLANET_albumcover.png', 
        '정규',
        '2016-08-29'
        );
-- 음원데이터 17번 부터
insert into songs (album_id, title, song_path, lyrics)
values (4,
        '우주를 줄게',
        'BOL4 - Galaxy(우주를 줄게).mp3',
        'bol4우주를 줄게.txt');
insert into songs (album_id, title, song_path, lyrics)
values (4,
        '싸운날',
        'BOL4 - 싸운날.mp3',
        'bol4싸운날.txt');
insert into songs (album_id, title, song_path, lyrics)
values (4,
        'You(=I)',
        'BOL4 - You(=I).mp3',
        'bol4You(=I).txt');
insert into songs (album_id, title, song_path, lyrics)
values (4,
        '심술',
        'BOL4 - Mean(심술).mp3',
        'bol4심술.txt');
insert into songs (album_id, title, song_path, lyrics)
values (4,
        '나만 안되는 연애',
        'BOL4 - 나만 안되는 연애.mp3',
        'bol4나만 안되는 연애.txt');
insert into songs (album_id, title, song_path, lyrics)
values (4,
        '초콜릿',
        'BOL4 - Chocolate Drive(초콜릿).mp3',
        'bol4초콜릿.txt');
insert into songs (album_id, title, song_path, lyrics)
values (4,
        '프리지아',
        'BOL4 - 프리지아.mp3',
        'bol4프리지아.txt');
insert into songs (album_id, title, song_path, lyrics)
values (4,
        'X Song',
        'BOL4 - X Song.mp3',
        'bol4X Song.txt');
insert into songs (album_id, title, song_path, lyrics)
values (4,
        '반지',
        'BOL4 - 반지.mp3',
        'bol4반지.txt');
insert into songs (album_id, title, song_path, lyrics)
values (4,
        '사랑에 빠졌을 때',
        'BOL4 - 사랑에 빠졌을 때.mp3',
        'bol4사랑에 빠졌을 때.txt');


insert into song_genre (song_id, genre_id)
values (17, 80);
insert into song_genre (song_id, genre_id)
values (18, 80);
insert into song_genre (song_id, genre_id)
values (19, 80);
insert into song_genre (song_id, genre_id)
values (20, 80);
insert into song_genre (song_id, genre_id)
values (21, 80);
insert into song_genre (song_id, genre_id)
values (22, 80);
insert into song_genre (song_id, genre_id)
values (23, 80);
insert into song_genre (song_id, genre_id)
values (24, 80);
insert into song_genre (song_id, genre_id)
values (25, 80);
insert into song_genre (song_id, genre_id)
values (26, 80);

-- 타이틀 곡 설정
-- 우주를 줄게(17) 나만 안되는 연애(21)
insert into title_songs (album_id, song_id)
values (4, 17); 
insert into title_songs (album_id, song_id)
values (4, 21); 


-- 음원의 참여 아티스트 데이터 삽입
-- 아티스트 46번
insert into artists (artist_name, artist_image, artist_description)
values ('볼빨간 사춘기', '볼빨간사춘기아티스트사진.png', 'bol4_설명.txt');

insert into artists (artist_name)
values ('바닐라맨');

insert into artists (artist_name)
values ('황종하');
-- 아티스트 48번 까지

-- 우주를 줄게 17번
insert into artist_roles (artist_id, song_id, role_id)
values (46, 17, 10);
insert into artist_roles (artist_id, song_id, role_id)
values (46, 17, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (47, 17, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (46, 17, 30);
insert into artist_roles (artist_id, song_id, role_id)
values (47, 17, 40);

-- 싸운날 18번
insert into artist_roles (artist_id, song_id, role_id)
values (46, 18, 10);
insert into artist_roles (artist_id, song_id, role_id)
values (46, 18, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (46, 18, 30);
insert into artist_roles (artist_id, song_id, role_id)
values (47, 18, 40);

-- You(=I) 19번
insert into artist_roles (artist_id, song_id, role_id)
values (46, 19, 10);
insert into artist_roles (artist_id, song_id, role_id)
values (46, 19, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (46, 19, 30);
insert into artist_roles (artist_id, song_id, role_id)
values (47, 19, 40);

-- 심술 20번
insert into artist_roles (artist_id, song_id, role_id)
values (46, 20, 10);
insert into artist_roles (artist_id, song_id, role_id)
values (46, 20, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (46, 20, 30);
insert into artist_roles (artist_id, song_id, role_id)
values (47, 20, 40);

-- 나만 안되는 연애 21번
insert into artist_roles (artist_id, song_id, role_id)
values (46, 21, 10);
insert into artist_roles (artist_id, song_id, role_id)
values (46, 21, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (46, 21, 30);
insert into artist_roles (artist_id, song_id, role_id)
values (47, 21, 40);

-- 초콜릿 22번
insert into artist_roles (artist_id, song_id, role_id)
values (46, 22, 10);
insert into artist_roles (artist_id, song_id, role_id)
values (46, 22, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (47, 22, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (46, 22, 30);
insert into artist_roles (artist_id, song_id, role_id)
values (47, 22, 40);

-- 프리지아 23번
insert into artist_roles (artist_id, song_id, role_id)
values (46, 23, 10);
insert into artist_roles (artist_id, song_id, role_id)
values (46, 23, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (46, 23, 30);
insert into artist_roles (artist_id, song_id, role_id)
values (48, 23, 40);

-- X Song 24번
insert into artist_roles (artist_id, song_id, role_id)
values (46, 24, 10);
insert into artist_roles (artist_id, song_id, role_id)
values (47, 24, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (47, 24, 30);
insert into artist_roles (artist_id, song_id, role_id)
values (47, 24, 40);

-- 반지 25번
insert into artist_roles (artist_id, song_id, role_id)
values (46, 25, 10);
insert into artist_roles (artist_id, song_id, role_id)
values (46, 25, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (46, 25, 30);
insert into artist_roles (artist_id, song_id, role_id)
values (47, 25, 40);

-- 사랑에 빠졌을 때 26번
insert into artist_roles (artist_id, song_id, role_id)
values (46, 26, 10);
insert into artist_roles (artist_id, song_id, role_id)
values (46, 26, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (46, 26, 30);
insert into artist_roles (artist_id, song_id, role_id)
values (47, 26, 40);

commit;