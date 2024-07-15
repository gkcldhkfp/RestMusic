--- 앨범---------------------------------------------------------------------------

insert into albums (album_name, album_image, album_type, album_release_date)
values ('What Time!', 
        'what_time_album_image.png', 
        'EP',
        '2023-08-18'
        );

-- 아이유 lilac
insert into albums (album_name, album_image, album_type, album_release_date)
values ('IU 5th Album LILAC', 
        'lilac_albumcover.png', 
        '정규',
        '2021-03-25'
        );

-- 천천히 가 앨범
insert into albums (album_name, album_image, album_type, album_release_date)
values ('천천히가', 
        'kenzi_천천히가_albumcover.png', 
        '싱글',
        '2021-05-01'
        );				

-- 볼빨간사춘기 RED PLANET 4번앨범
insert into albums (album_name, album_image, album_type, album_release_date)
values ('RED PLANET', 
        'bol4_RED PLANET_albumcover.png', 
        '정규',
        '2016-08-29'
        );


--- 	박성준 앨범 5번 앨범 시작
insert into albums (album_name, album_image, album_type, album_release_date)
values ('Love poem', 'Love poem.jpg', '미니', '2019-11-18');
----------------------------------------------------------------------------------------------------------------------------
insert into albums (album_name, album_image, album_type, album_release_date)
values ('삐삐', '삐삐.jpg', '싱글', '2018-10-10');
----------------------------------------------------------------------------------------------------------------------------
insert into albums (album_name, album_image, album_type, album_release_date)
values ('밤편지', '밤편지.jpg', '싱글', '2017-03-24');

insert into albums (album_name, album_image, album_type, album_release_date)
values ('사춘기집Ⅰ 꽃기운', '사춘기집Ⅰ 꽃기운.jpg', '미니', '2019-04-02');

insert into albums (album_name, album_image, album_type, album_release_date)
values ('SUMMER EPISODE', 'SUMMER EPISODE.jpg', '싱글', '2017-07-20');

insert into albums (album_name, album_image, album_type, album_release_date)
values ('Love Lee', 'Love Lee.jpg', '싱글', '2023-08-21');
-- 앨범 10번까지


--- 음원 --------------------------------------------------------------------------------
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
-- 26번 까지

-- 박성준 음악 데이터 27번 시작------------
----------------------------------------------------------------------------------------------------------------------------27
insert into songs (album_id, title, song_path, lyrics, video_link) -- Love poem 앨범
values (5, 'Blueming',
'Love poem_Blueming_아이유.mp3',
'Love poem_Blueming.txt',
'https://www.youtube.com/embed/D1PvIWdJ8xo?si=ceiPBphESLEJuHOw');

--28
insert into songs (album_id, title, song_path, lyrics, video_link)
values (5, 'Love poem',
'Love poem_Love poem_아이유',
'Love poem_Love poem.txt',
'https://www.youtube.com/embed/iOKRYIMhaDk?si=GrX2NBvfwTeflTsA');

--29
insert into songs (album_id, title, song_path, lyrics, video_link)
values (5, 'unlucky',
'Love poem_unlucky_아이유.mp3',
'Love poem_unlucky.txt',
'https://www.youtube.com/embed/l5Rb1pNre40?si=twvr-w2hpTI8UFIv');

--30
insert into songs (album_id, title, song_path, lyrics, video_link)
values (5, '그 사람',
'Love poem_그 사람_아이유.mp3',
'Love poem_그 사람.txt',
'https://www.youtube.com/embed/y5YmTj8KDWM?si=crUeOIAWK4Htwln9');

--31
insert into songs (album_id, title, song_path, lyrics, video_link)
values (5, '시간의 바깥',
'Love poem_시간의 바깥_아이유.mp3',
'Love poem_시간의 바깥.txt',
'https://www.youtube.com/embed/R3Fwdnij49o?si=xOzo9VwlR5zYFXAs');

--32
insert into songs (album_id, title, song_path, lyrics, video_link)
values (5, '자장가',
'Love poem_자장가_아이유.mp3',
'Love poem_자장가.txt',
'https://www.youtube.com/embed/aepREwo5Lio?si=cmKyl_jq9DIWsmgu');
----------------------------------------------------------------------------------------------------------------------------

--33
insert into songs (album_id, title, song_path, lyrics, video_link) -- 삐삐 앨범
values (6, '삐삐',
'삐삐_삐삐_아이유.mp3',
'삐삐_삐삐.txt',
'https://www.youtube.com/embed/nM0xDI5R50E?si=6Ao8ysv8-rNtrG1-');
----------------------------------------------------------------------------------------------------------------------------

--34
insert into songs (album_id, title, song_path, lyrics, video_link) -- 밤편지 앨범
values (7, '밤편지',
'밤편지_밤편지_아이유.mp3',
'밤편지_밤편지.txt',
'https://www.youtube.com/embed/BzYnNdJhZQw?si=T34qb5d_rxZU_KQg');
----------------------------------------------------------------------------------------------------------------------------

--35
insert into songs (album_id, title, song_path, lyrics, video_link) -- 사춘기집 앨범
values (8, '별 보러 갈래?', 
'사춘기집Ⅰ 꽃기운_별 보러 갈래?_볼빨간사춘기.mp3', 
'사춘기집Ⅰ 꽃기운_별 보러 갈래?.txt',
'https://www.youtube.com/embed/8n9wklIG9qU?si=68aDQpG5BiLWldfR');


--36
insert into songs (album_id, title, song_path, lyrics, video_link)
values (8, '나만, 봄', 
'사춘기집Ⅰ 꽃기운_나만, 봄_볼빨간사춘기.mp3',
'사춘기집Ⅰ 꽃기운_나만, 봄.txt',
'https://www.youtube.com/embed/AsXxuIdpkWM?si=LOEOJ6weXzLYEoZU');

--37
insert into songs (album_id, title, song_path, lyrics, video_link)
values (8, '나들이 갈까', 
'사춘기집Ⅰ 꽃기운_나들이 갈까_볼빨간사춘기.mp3', 
'사춘기집Ⅰ 꽃기운_나들이 갈까.txt',
'https://www.youtube.com/embed/nDn1T3yRT0k?si=TNvmZqqi1pkV2tx-');


--38
insert into songs (album_id, title, song_path, lyrics, video_link)
values (8, 'Mermaid', 
'사춘기집Ⅰ 꽃기운_Mermaid_볼빨간사춘기.mp3',
'사춘기집Ⅰ 꽃기운_Mermaid.txt',
'https://www.youtube.com/embed/jDrVkH297iQ?si=QgYNC4MOBr5y_phg');

--39
insert into songs (album_id, title, song_path, lyrics, video_link)
values (8, 'Seattle Alone', 
'사춘기집Ⅰ 꽃기운_Seattle Alone_볼빨간사춘기.mp3',
'사춘기집Ⅰ 꽃기운_Seattle Alone.txt',
'https://www.youtube.com/embed/soZoplDbCKg?si=395CR1DhCV1C4zP-');
----------------------------------------------------------------------------------------------------------------------------

--40
insert into songs (album_id, title, song_path, lyrics, video_link) -- SUMMER EPISODE 앨범
values (9, 'DINOSAUR', 
'SUMMER EPISODE_DINOSAUR_AKMU (악뮤).mp3',
'SUMMER EPISODE_DINOSAUR.txt',
'https://www.youtube.com/embed/8Oz7DG76ibY?si=v2zM_PO9Hb2ZWCMc');

--41
insert into songs (album_id, title, song_path, lyrics, video_link)
values (9, 'MY DARLING', 
'SUMMER EPISODE_MY DARLING_AKMU (악뮤)',
'SUMMER EPISODE_MY DARLING.txt',
'https://www.youtube.com/embed/8Oz7DG76ibY?si=v2zM_PO9Hb2ZWCMc');
----------------------------------------------------------------------------------------------------------------------------

--42
insert into songs (album_id, title, song_path, lyrics, video_link) -- Love Lee 앨범
values (10, 'Love Lee',
'Love Lee_Love Lee_AKMU (악뮤).mp3',
'Love Lee_Love Lee.txt',
'https://www.youtube.com/embed/EIz09kLzN9k?si=Fqba3c4bHmEodWpI');


--43
insert into songs (album_id, title, song_path, lyrics, video_link)
values (10, '후라이의 꿈',
'Love Lee_후라이의 꿈_AKMU (악뮤).mp3',
'Love Lee_후라이의 꿈.txt',
'https://www.youtube.com/embed/3kGAlp_PNUg?si=qCXf56Gns92dR7V6');


---- 장르 ----------------------------------------------------------------------------------
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

-- 장르설정 랩/힙합, 인디
insert into song_genre (song_id, genre_id)
values (15, 50);
insert into song_genre (song_id, genre_id)
values (15, 80);

insert into song_genre (song_id, genre_id)
values (16, 50);
insert into song_genre (song_id, genre_id)
values (16, 80);


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

-- 볼사 우주를줄게 장르 설정
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

-- 박성준 곡 장르 데이터 추가(DB 통합할때 album_id, song_id 확인 및 설정 주의!)
insert into song_genre (song_id, genre_id) -- Love poem 앨범
values (27, 20);

insert into song_genre (song_id, genre_id)
values (28, 20);

insert into song_genre (song_id, genre_id)
values (29, 20);

insert into song_genre (song_id, genre_id)
values (30, 20);

insert into song_genre (song_id, genre_id)
values (31, 20);

insert into song_genre (song_id, genre_id)
values (32, 20);

insert into song_genre (song_id, genre_id) -- 삐삐 앨범
values (33, 40);

insert into song_genre (song_id, genre_id) -- 밤편지 앨범
values (34, 10);

insert into song_genre (song_id, genre_id) -- 사춘기집 앨범
values (35, 80);

insert into song_genre (song_id, genre_id)
values (36, 80);

insert into song_genre (song_id, genre_id)
values (37, 80);

insert into song_genre (song_id, genre_id)
values (38, 80);

insert into song_genre (song_id, genre_id)
values (39, 80);

insert into song_genre (song_id, genre_id) -- SUMMER EPISODE 앨범
values (40, 30);

insert into song_genre (song_id, genre_id)
values (41, 30);

insert into song_genre (song_id, genre_id) -- LoveLee 앨범
values (42, 30);

insert into song_genre (song_id, genre_id)
values (43, 90);


-- 타이틀 곡 설정--------------------------------------------------------------------------------
insert into title_songs (album_id, song_id)
values (1, 1); -- what time은 타이틀곡


-- 타이틀곡 설정
--라일락(5), 코인(7)
-- 타이틀 곡 설정
insert into title_songs (album_id, song_id)
values (2, 5); 
insert into title_songs (album_id, song_id)
values (2, 7); 

-- 타이틀 곡 설정
-- 둘다 타이틀 곡임
-- 천천히가(15) 막달려가(16)
insert into title_songs (album_id, song_id)
values (3, 15); 
insert into title_songs (album_id, song_id)
values (3, 16); 


-- 타이틀 곡 설정
-- 우주를 줄게(17) 나만 안되는 연애(21)
insert into title_songs (album_id, song_id)
values (4, 17); 
insert into title_songs (album_id, song_id)
values (4, 21); 

-- 박성준 타이틀 곡 데이터 추가(DB 통합할때 album_id, song_id 확인 및 설정 주의!)
insert into title_songs (album_id, song_id) -- Love poem 앨범 타이틀 곡(Love poem 곡)
values (5, 28);

insert into title_songs (album_id, song_id) -- 삐삐 앨범 타이틀 곡(삐삐 곡)
values (6, 33);

insert into title_songs (album_id, song_id) -- 밤편지 앨범 타이틀 곡(밤편지 곡)
values (7, 34);

insert into title_songs (album_id, song_id) -- 사춘기집 앨범 타이틀 곡(나만, 봄 곡)
values (8, 36);

insert into title_songs (album_id, song_id) -- SUMMER EPISODE 앨범 타이틀 곡(DINOSAUR 곡)
values (9, 40);

insert into title_songs (album_id, song_id) -- Love Lee 앨범 타이틀 곡(Love Lee 곡)
values (10, 42);


-- 음원의 참여 아티스트 데이터 삽입----------------------------------------------------------------------
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

-- 음원의 참여 아티스트 데이터 삽입
-- 아티스트 43번 부터

insert into artists (artist_name)
values ('ST4NDARD');

insert into artists (artist_name)
values ('스카이민혁');

insert into artists (artist_name)
values ('TYRAN');
-- 아티스트 45번까지


-- 음원의 참여 아티스트 데이터 삽입
-- 아티스트 46번
insert into artists (artist_name, artist_image, artist_description)
values ('볼빨간 사춘기', '볼빨간사춘기아티스트사진.png', 'bol4_설명.txt');

insert into artists (artist_name)
values ('바닐라맨');

insert into artists (artist_name)
values ('황종하');
-- 아티스트 48번 까지

-- 박성준 artists 데이터 추가

--49
insert into artists (artist_name, artist_image, artist_description)
values ('아이유', '아이유.jpg', '아이유.txt');

--50
insert into artists (artist_name, artist_image, artist_description)
values ('볼빨간사춘기', '볼빨간사춘기.jpg', '볼빨간사춘기.txt');

-- 51
insert into artists (artist_name, artist_image, artist_description)
values ('AKMU (악뮤)', 'AKMU (악뮤).jpg', 'AKMU (악뮤).txt');

--52
insert into artists (artist_name)
values ('이종훈');


--53
insert into artists (artist_name)
values ('이채규');


--54
insert into artists (artist_name, artist_image, artist_description)
values ('적재', '적재.jpg', '적재.txt');

--55
insert into artists (artist_name)
values ('홍소진');


--56
insert into artists (artist_name, artist_description)
values ('제휘', '제휘.txt');

--57
insert into artists (artist_name, artist_image)
values ('이민수', '이민수.jpg');

--58
insert into artists (artist_name)
values ('김희원');


--59
insert into artists (artist_name, artist_image, artist_description)
values ('바닐라맨', '바닐라맨.jpg', '바닐라맨.txt');

--60
insert into artists (artist_name, artist_image, artist_description)
values ('낯선아이', '낯선아이.jpg', '낯선아이.txt');

--61
insert into artists (artist_name)
values ('로빈(ROVIN)');

--62
insert into artists (artist_name)
values ('MILLENNIUM');

--63
insert into artists (artist_name, artist_image, artist_description)
values ('시황', '시황.jpg', '시황.txt');


-- 아티스트 역할코드 등록-----------------------------------------------------
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

-- 천천히가 역할 코드 등록
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

-- 볼사 Red Planet
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


-- artist_roles 데이터 추가(DB 통합할때 album_id, song_id 확인 및 설정 주의!)
insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 가수(아이유)
values (49, 27, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (49, 28, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (49, 29, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (49, 30, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (49, 31, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (49, 42, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (49, 33, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (49, 34, 10);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 blueming 작곡(아이유, 이종훈, 이채규)
values (49, 27, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (52, 27, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (53, 27, 20);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 blueming 작사(아이유)
values (49, 27, 30);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 blueming 편곡(이종훈, 이채규)
values (52, 27, 40);

insert into artist_roles (artist_id, song_id, role_id)
values (53, 27, 40);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 love poem 작곡(이종훈)
values (52, 28, 20);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 love poem 작사(아이유)
values (49, 28, 30);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 love poem 편곡(적재, 홍소진)
values (54, 28, 40);

insert into artist_roles (artist_id, song_id, role_id)
values (55, 28, 40);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 unlucky 작곡(제휘)
values (56, 29, 20);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 unlucky 작사(아이유)
values (49, 29, 30);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 unlucky 편곡(제휘)
values (56, 29, 40);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 그 사람 작곡(아이유)
values (49, 30, 20);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 그 사람 작사(아이유)
values (49, 30, 30);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 그 사람 편곡(적재)
values (54, 30, 40);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 시간의 바깥 작곡(이민수)
values (57, 31, 20);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 시간의 바깥 작사(아이유)
values (49, 31, 30);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 시간의 바깥 편곡(이민수)
values (57, 31, 40);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 자장가 작곡(김희원)
values (58, 32, 20);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 자장가 작사(아이유)
values (49, 32, 30);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 자장가 편곡(홍소진)
values (55, 32, 40);
----------------------------------------------------------------------------------------------------------------------------
insert into artist_roles (artist_id, song_id, role_id) -- 삐삐 앨범 삐삐 작곡(이종훈)
values (52, 33, 20);

insert into artist_roles (artist_id, song_id, role_id) -- 삐삐 앨범 삐삐 작사(아이유)
values (49, 33, 30);

insert into artist_roles (artist_id, song_id, role_id) -- 삐삐 앨범 삐삐 편곡(이채규)
values (53, 33, 40);
----------------------------------------------------------------------------------------------------------------------------
insert into artist_roles (artist_id, song_id, role_id) -- 밤편지 앨범 밤편지 작곡(김희원, 제휘)
values (58, 34, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (56, 34, 20);

insert into artist_roles (artist_id, song_id, role_id) -- 밤편지 앨범 밤편지 작사(아이유)
values (49, 34, 30);

insert into artist_roles (artist_id, song_id, role_id) -- 밤편지 앨범 밤편지 편곡(김희원, 제휘)
values (58, 34, 40);

insert into artist_roles (artist_id, song_id, role_id)
values (56, 34, 40);
----------------------------------------------------------------------------------------------------------------------------
insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 가수(볼빨간사춘기)
values (50, 35, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (50, 36, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (50, 37, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (50, 38, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (50, 39, 10);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 별 보러 갈래 작곡(볼빨간사춘기, 바닐라맨)
values (50, 35, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (59, 35, 20);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 별 보러 갈래 작사(볼빨간사춘기)
values (50, 35, 30);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 별 보러 갈래 편곡(바닐라맨)
values (59, 35, 40);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 나만 봄 작곡(볼빨간사춘기, 바닐라맨)
values (50, 36, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (59, 36, 20);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 나만 봄 작사(볼빨간사춘기)
values (50, 36, 30);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 나만 봄 편곡(바닐라맨)
values (59, 36, 40);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 나들이 갈까 작곡(낯선아이)
values (60, 37, 20);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 나들이 갈까 작사(낯선아이)
values (60, 37, 30);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 나들이 갈까 편곡(바닐라맨)
values (59, 37, 40);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 mermaid 작곡(볼빨간사춘기)
values (50, 38, 20);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 mermaid 작사(볼빨간사춘기)
values (50, 38, 30);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 mermaid 편곡(바닐라맨)
values (50, 38, 40);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 Seattle Alone 작곡(볼빨간사춘기, 바닐라맨)
values (50, 39, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (59, 39, 20);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 Seattle Alone 작사(볼빨간사춘기)
values (50, 39, 30);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 Seattle Alone 편곡(바닐라맨)
values (59, 39, 40);
----------------------------------------------------------------------------------------------------------------------------
insert into artist_roles (artist_id, song_id, role_id) -- SUMMER EPISODE 앨범 가수(AKMU악뮤)
values (51, 40, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (51, 41, 10);

insert into artist_roles (artist_id, song_id, role_id) -- SUMMER EPISODE 앨범 DINOSAUR 작곡(AKMU악뮤)
values (51, 40, 20);

insert into artist_roles (artist_id, song_id, role_id) -- SUMMER EPISODE 앨범 DINOSAUR 작사(AKMU악뮤)
values (51, 40, 30);

insert into artist_roles (artist_id, song_id, role_id) -- SUMMER EPISODE 앨범 DINOSAUR 편곡(로빈)
values (61, 40, 40);

insert into artist_roles (artist_id, song_id, role_id) -- SUMMER EPISODE 앨범 MY DARLING 작곡(AKMU악뮤)
values (51, 41, 20);

insert into artist_roles (artist_id, song_id, role_id) -- SUMMER EPISODE 앨범 MY DARLING 작사(AKMU악뮤)
values (51, 41, 30);

insert into artist_roles (artist_id, song_id, role_id) -- SUMMER EPISODE 앨범 MY DARLING 편곡(로빈)
values (61, 41, 40);
----------------------------------------------------------------------------------------------------------------------------
insert into artist_roles (artist_id, song_id, role_id) -- Love Lee 앨범 가수(AKMU악뮤)
values (51, 42, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (51, 43, 10);

insert into artist_roles (artist_id, song_id, role_id) -- Love Lee 앨범 Love Lee 작곡(AKMU악뮤, MILLENNIUM, 시황)
values (51, 42, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (62, 42, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (63, 42, 20);

insert into artist_roles (artist_id, song_id, role_id) -- Love Lee 앨범 Love Lee 작사(AKMU악뮤)
values (51, 42, 30);

insert into artist_roles (artist_id, song_id, role_id) -- Love Lee 앨범 후라이의 꿈 작곡(AKMU악뮤)
values (51, 43, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (61, 43, 20);

insert into artist_roles (artist_id, song_id, role_id) -- Love Lee 앨범 후라이의 꿈 작사(AKMU악뮤)
values (51, 43, 30);