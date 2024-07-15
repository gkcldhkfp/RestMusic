--- 앨범---------------------------------------------------------------------------


--  (select album_id from albums where album_name = 'armageddon')
--  (select song_id from songs where title='maniac')
--  (select artist_id from artists where artist_name = 'Kenzi')

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
values ('GAXILLIC');

insert into artists (artist_name)
values ('현서 (HYUN SEO)');

insert into artists (artist_name)
values ('Tmlm');

insert into artists (artist_name)
values ('Wolfgang Pander');

--아티스트 7번까지



-- 음원의 참여 아티스트 데이터 삽입
-- 아티스트번호 8번부터
-- insert into artists (artist_name, artist_image, artist_description)
-- values ('아이유', '아이유아티스트사진.png', '아이유_설명.txt');
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
values ('볼빨간사춘기2', '볼빨간사춘기아티스트사진.png', 'bol4_설명.txt');

-- 47
insert into artists (artist_name)
values ('바닐라맨2');

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
values ('김희원2');


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

-- What time! (Feat.DumbAss)
--kenzi
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = 'Kenzi'), 1, 10);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = 'Kenzi'), 1, 20);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = 'Kenzi'), 1, 30);

--DumbAss
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = 'DumbAss'), 1, 20);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = 'DumbAss'), 1, 30);

--GAXILLIC
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = 'GAXILLIC'), 1, 20);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = 'GAXILLIC'), 1, 40);

-- 좋겠어 (Feat.HYUN SEO)
--kenzi
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = 'Kenzi'), 2, 10); 
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = 'Kenzi'), 2, 20); 
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = 'Kenzi'), 2, 30); 

--현서 (HYUN SEO)
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '현서 (HYUN SEO)'), 2, 20); 
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '현서 (HYUN SEO)'), 2, 30); 

-- Tmlm
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = 'Tmlm'), 2, 20); 
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = 'Tmlm'), 2, 40); 

-- Ice (Feat.PLHN)
-- kenzi
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = 'Kenzi'), 3, 10); 
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = 'Kenzi'), 3, 20); 
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = 'Kenzi'), 3, 30); 

-- PLHN
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = 'PLHN'), 3, 20); 

insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = 'PLHN'), 3, 30); 

-- Placcebo Beats
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = 'Placcebo Beats'), 3, 20); 
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = 'Placcebo Beats'), 3, 40); 

-- Promise (약속)
-- kenzi
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = 'Kenzi'), 4, 10); 
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = 'Kenzi'), 4, 20); 
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = 'Kenzi'), 4, 30); 

-- Wolfgang Pander
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = 'Wolfgang Pander'), 4, 20); 
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = 'Wolfgang Pander'), 4, 40); 






-- 아티스트 역할번호 부여
-- 5번 라일락
-- 8번부터
-- 8번이 아이유
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 5, 10);
insert into artist_roles (artist_id, song_id, role_id)
values (9, 5, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (10, 5, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (11, 5, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (12, 5, 20);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 5, 30);
insert into artist_roles (artist_id, song_id, role_id)
values (9, 5, 40);
insert into artist_roles (artist_id, song_id, role_id)
values (11, 5, 40);
insert into artist_roles (artist_id, song_id, role_id)
values (12, 5, 40);

-- 6번 Flu
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 6, 10);
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
values ((select artist_id from artists where artist_name = '아이유'), 7, 10);
insert into artist_roles (artist_id, song_id, role_id)
values (21, 7, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (22, 7, 20);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 7, 20);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 7, 30);
insert into artist_roles (artist_id, song_id, role_id)
values (21, 7, 40);

-- 8번 봄 안녕 봄
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 8, 10);
insert into artist_roles (artist_id, song_id, role_id)
values (23, 8, 20);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 8, 30);
insert into artist_roles (artist_id, song_id, role_id)
values (25, 8, 40);
insert into artist_roles (artist_id, song_id, role_id)
values (26, 8, 40);
insert into artist_roles (artist_id, song_id, role_id)
values (20, 8, 40);

-- 9번 Celebrity
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 9, 10);
insert into artist_roles (artist_id, song_id, role_id)
values (20, 9, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (25, 9, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (26, 9, 20);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 9, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (27, 9, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (28, 9, 20);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 9, 30);
insert into artist_roles (artist_id, song_id, role_id)
values (25, 9, 40);
insert into artist_roles (artist_id, song_id, role_id)
values (26, 9, 40);
insert into artist_roles (artist_id, song_id, role_id)
values (20, 9, 40);

-- 10번 돌림노래
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 10, 10);
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
values ((select artist_id from artists where artist_name = '아이유'), 10, 30);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 10, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (29, 10, 40);

-- 11번 빈 컵
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 11, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (33, 11, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (34, 11, 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 11, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (33, 11, 40);

-- 12번 아이와 나의 바다
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 12, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (35, 12, 20);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '김희원'), 12, 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 12, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (35, 12, 40);

-- 13번 어푸
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 13, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (37, 13, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (38, 13, 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 13, 30);
insert into artist_roles (artist_id, song_id, role_id)
values (37, 13, 30);

insert into artist_roles (artist_id, song_id, role_id)
values (38, 13, 40);

-- 14번 에필로그
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 14, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (39, 14, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (40, 14, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (41, 14, 20);
insert into artist_roles (artist_id, song_id, role_id)
values (42, 14, 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 14, 30);

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
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 17, 10);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 17, 20);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '바닐라맨'), 17, 20);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 17, 30);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '바닐라맨'), 17, 40);

-- 싸운날 18번
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 18, 10);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 18, 20);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 18, 30);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '바닐라맨'), 18, 40);

-- You(=I) 19번
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 19, 10);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 19, 20);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 19, 30);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '바닐라맨'), 19, 40);

-- 심술 20번
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 20, 10);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 20, 20);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 20, 30);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '바닐라맨'), 20, 40);

-- 나만 안되는 연애 21번
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 21, 10);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 21, 20);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 21, 30);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '바닐라맨'), 21, 40);

-- 초콜릿 22번
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 22, 10);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 22, 20);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '바닐라맨'), 22, 20);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 22, 30);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '바닐라맨'), 22, 40);

-- 프리지아 23번
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 23, 10);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 23, 20);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 23, 30);
insert into artist_roles (artist_id, song_id, role_id)
values (48, 23, 40);

-- X Song 24번
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 24, 10);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '바닐라맨'), 24, 20);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '바닐라맨'), 24, 30);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '바닐라맨'), 24, 40);

-- 반지 25번
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 25, 10);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 25, 20);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 25, 30);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '바닐라맨'), 25, 40);

-- 사랑에 빠졌을 때 26번
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 26, 10);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 26, 20);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 26, 30);
insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '바닐라맨'), 26, 40);


-- artist_roles 데이터 추가(DB 통합할때 album_id, song_id 확인 및 설정 주의!)
insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 가수(아이유)
values ((select artist_id from artists where artist_name = '아이유'), 27, 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 28, 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 29, 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 30, 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 31, 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 42, 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 33, 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '아이유'), 34, 10);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 blueming 작곡(아이유, 이종훈, 이채규)
values ((select artist_id from artists where artist_name = '아이유'), 27, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (52, 27, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (53, 27, 20);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 blueming 작사(아이유)
values ((select artist_id from artists where artist_name = '아이유'), 27, 30);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 blueming 편곡(이종훈, 이채규)
values (52, 27, 40);

insert into artist_roles (artist_id, song_id, role_id)
values (53, 27, 40);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 love poem 작곡(이종훈)
values (52, 28, 20);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 love poem 작사(아이유)
values ((select artist_id from artists where artist_name = '아이유'), 28, 30);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 love poem 편곡(적재, 홍소진)
values (54, 28, 40);

insert into artist_roles (artist_id, song_id, role_id)
values (55, 28, 40);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 unlucky 작곡(제휘)
values (56, 29, 20);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 unlucky 작사(아이유)
values ((select artist_id from artists where artist_name = '아이유'), 29, 30);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 unlucky 편곡(제휘)
values (56, 29, 40);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 그 사람 작곡(아이유)
values ((select artist_id from artists where artist_name = '아이유'), 30, 20);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 그 사람 작사(아이유)
values ((select artist_id from artists where artist_name = '아이유'), 30, 30);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 그 사람 편곡(적재)
values (54, 30, 40);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 시간의 바깥 작곡(이민수)
values (57, 31, 20);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 시간의 바깥 작사(아이유)
values ((select artist_id from artists where artist_name = '아이유'), 31, 30);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 시간의 바깥 편곡(이민수)
values (57, 31, 40);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 자장가 작곡(김희원)
values ((select artist_id from artists where artist_name = '김희원'), 32, 20);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 자장가 작사(아이유)
values ((select artist_id from artists where artist_name = '아이유'), 32, 30);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 자장가 편곡(홍소진)
values (55, 32, 40);
----------------------------------------------------------------------------------------------------------------------------
insert into artist_roles (artist_id, song_id, role_id) -- 삐삐 앨범 삐삐 작곡(이종훈)
values (52, 33, 20);

insert into artist_roles (artist_id, song_id, role_id) -- 삐삐 앨범 삐삐 작사(아이유)
values ((select artist_id from artists where artist_name = '아이유'), 33, 30);

insert into artist_roles (artist_id, song_id, role_id) -- 삐삐 앨범 삐삐 편곡(이채규)
values (53, 33, 40);
----------------------------------------------------------------------------------------------------------------------------
insert into artist_roles (artist_id, song_id, role_id) -- 밤편지 앨범 밤편지 작곡(김희원, 제휘)
values ((select artist_id from artists where artist_name = '김희원'), 34, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (56, 34, 20);

insert into artist_roles (artist_id, song_id, role_id) -- 밤편지 앨범 밤편지 작사(아이유)
values ((select artist_id from artists where artist_name = '아이유'), 34, 30);

insert into artist_roles (artist_id, song_id, role_id) -- 밤편지 앨범 밤편지 편곡(김희원, 제휘)
values ((select artist_id from artists where artist_name = '김희원'), 34, 40);

insert into artist_roles (artist_id, song_id, role_id)
values (56, 34, 40);
----------------------------------------------------------------------------------------------------------------------------
insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 가수(볼빨간사춘기)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 35, 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 36, 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 37, 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 38, 10);

insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 39, 10);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 별 보러 갈래 작곡(볼빨간사춘기, 바닐라맨)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 35, 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '바닐라맨'), 35, 20);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 별 보러 갈래 작사(볼빨간사춘기)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 35, 30);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 별 보러 갈래 편곡(바닐라맨)
values ((select artist_id from artists where artist_name = '바닐라맨'), 35, 40);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 나만 봄 작곡(볼빨간사춘기, 바닐라맨)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 36, 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '바닐라맨'), 36, 20);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 나만 봄 작사(볼빨간사춘기)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 36, 30);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 나만 봄 편곡(바닐라맨)
values ((select artist_id from artists where artist_name = '바닐라맨'), 36, 40);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 나들이 갈까 작곡(낯선아이)
values (60, 37, 20);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 나들이 갈까 작사(낯선아이)
values (60, 37, 30);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 나들이 갈까 편곡(바닐라맨)
values ((select artist_id from artists where artist_name = '바닐라맨'), 37, 40);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 mermaid 작곡(볼빨간사춘기)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 38, 20);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 mermaid 작사(볼빨간사춘기)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 38, 30);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 mermaid 편곡(바닐라맨)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 38, 40);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 Seattle Alone 작곡(볼빨간사춘기, 바닐라맨)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 39, 20);

insert into artist_roles (artist_id, song_id, role_id)
values ((select artist_id from artists where artist_name = '바닐라맨'), 39, 20);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 Seattle Alone 작사(볼빨간사춘기)
values ((select artist_id from artists where artist_name = '볼빨간사춘기'), 39, 30);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 Seattle Alone 편곡(바닐라맨)
values ((select artist_id from artists where artist_name = '바닐라맨'), 39, 40);
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



------------------------- 정윤정 데이터 (서브쿼리작성)
-- 앨범 데이터 삽입
insert into albums (album_name, album_image, album_type, album_release_date) values ('밤양갱', '밤양갱_cover.jpg', 'EP', '2024-02-13');
insert into albums (album_name, album_image, album_type, album_release_date) values ('말해주라', '말해주라_cover.jpg', 'Single', '2023-05-10');
insert into albums (album_name, album_image, album_type, album_release_date) values ('소곡집 I', '잔나비 소곡집 I_cover.jpg', 'EP', '2020-11-06');
insert into albums (album_name, album_image, album_type, album_release_date) values ('소곡집 II: 초록을 거머쥔 우리는', '잔나비 소곡집 ll.jpg', 'EP', '2022-05-10');
insert into albums (album_name, album_image, album_type, album_release_date) values ('전설', '전설.jpg', '정규', '2022-10-14');

-- 아티스트 데이터 삽입

insert into artists (artist_name, artist_image, artist_description) values ('BIBI', 'BIBI.jpg', 'BIBI.txt');
insert into artists (artist_name, artist_image, artist_description) values ('장기하', '장기하.jpg', 'jangKiha.txt');
insert into artists (artist_name, artist_image, artist_description) values ('소수빈', '소수빈.jpg', '소수빈.txt');
insert into artists (artist_name, artist_image, artist_description) values ('잔나비', '잔나비.jpg', '잔나비.txt');
insert into artists (artist_name, artist_image, artist_description) values ('최정훈', '최정훈.jpg', '최정훈.txt');
insert into artists (artist_name, artist_image, artist_description) values ('김도형', '김도형.jpg', '김도형.txt');

-- 노래 데이터 삽입
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = '밤양갱'), '밤양갱', '밤양갱_밤양갱_BIBI.mp3', '밤양갱_밤양갱_lyrics.txt');

insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = '말해주라'), '말해주라', '말해주라_말해주라_소수빈.mp3', '말해주라_말해주라_lyrics.txt');

insert into songs (album_id, title, song_path, lyrics) 
values ((select album_id from albums where album_name = '소곡집 I'), '가을밤에 든 생각', '잔나비 소곡집 I - 01. 가을밤에 든 생각.mp3', '잔나비 소곡집 I - 01. 가을밤에 든 생각.txt');
insert into songs (album_id, title, song_path, lyrics) 
values ((select album_id from albums where album_name = '소곡집 I'), '한걸음', '잔나비 소곡집 I - 02. 한걸음.mp3', '잔나비 소곡집 I - 02. 한걸음.txt');
insert into songs (album_id, title, song_path, lyrics) 
values ((select album_id from albums where album_name = '소곡집 I'), '그 밤 그 밤', '잔나비 소곡집 I - 03. 그 밤 그 밤.mp3', '잔나비 소곡집 I - 03. 그 밤 그 밤.txt');
insert into songs (album_id, title, song_path, lyrics) 
values ((select album_id from albums where album_name = '소곡집 I'), '늙은 개', '잔나비 소곡집 I - 04. 늙은 개.mp3', '잔나비 소곡집 I - 04. 늙은 개.txt');
insert into songs (album_id, title, song_path, lyrics) 
values ((select album_id from albums where album_name = '소곡집 I'), '작전명 청춘!', '잔나비 소곡집 I - 05. 작전명 청-춘!.mp3', '잔나비 소곡집 I - 05. 작전명 청-춘!.txt');

insert into songs (album_id, title, song_path, lyrics) 
values ((select album_id from albums where album_name = '소곡집 II: 초록을 거머쥔 우리는'), '레이디버드', '레이디버드.mp3', '레이디버드.txt');
insert into songs (album_id, title, song_path, lyrics) 
values ((select album_id from albums where album_name = '소곡집 II: 초록을 거머쥔 우리는'), '초록을 거머쥔 우리는', '초록을거머쥔우리는.mp3', '초록을거머쥔우리는.txt');
insert into songs (album_id, title, song_path, lyrics) 
values ((select album_id from albums where album_name = '소곡집 II: 초록을 거머쥔 우리는'), '여름가을겨울 봄.', '여름가을겨울봄.mp3', '여름가을겨울봄.txt');
insert into songs (album_id, title, song_path, lyrics) 
values ((select album_id from albums where album_name = '소곡집 II: 초록을 거머쥔 우리는'), '슬픔이여안녕', '슬픔이여안녕.mp3', '슬픔이여안녕.txt');

insert into songs (album_id, title, song_path, lyrics) 
values ((select album_id from albums where album_name = '전설'), '나의 기쁨 나의 노래 (Intro)', '나의 기쁨 나의 노래 (Good Good Night).mp3', '나의 기쁨 나의 노래 (Good Good Night) (Intro).txt');
insert into songs (album_id, title, song_path, lyrics) 
values ((select album_id from albums where album_name = '전설'), '투게더!', '투게더! (TOGETHER!).mp3', '투게더! (TOGETHER!).txt');
insert into songs (album_id, title, song_path, lyrics) 
values ((select album_id from albums where album_name = '전설'), '조이풀 조이풀', '조이풀 조이풀 (joyful joyful).mp3', '조이풀 조이풀 (joyful joyful).txt');
insert into songs (album_id, title, song_path, lyrics) 
values ((select album_id from albums where album_name = '전설'), '거울', '거울 (mirror).mp3', '거울 (mirror).txt');
insert into songs (album_id, title, song_path, lyrics) 
values ((select album_id from albums where album_name = '전설'), '우리 애는요', '우리 애는요 (about a boy).mp3', '우리 애는요 (about a boy).txt');
insert into songs (album_id, title, song_path, lyrics) 
values ((select album_id from albums where album_name = '전설'), 'DOLMARO', 'DOLMARO.mp3', 'DOLMARO.txt');
insert into songs (album_id, title, song_path, lyrics) 
values ((select album_id from albums where album_name = '전설'), '전설', '전설 (LEGEND).mp3', '전설 (LEGEND).txt');
insert into songs (album_id, title, song_path, lyrics) 
values ((select album_id from albums where album_name = '전설'), '주저하는 연인들을 위해', '주저하는 연인들을 위해.mp3', '주저하는 연인들을 위해.txt');
insert into songs (album_id, title, song_path, lyrics) 
values ((select album_id from albums where album_name = '전설'), '신나는 잠', '신나는 잠 (geum ui hwan hyang).mp3', '신나는 잠 (geum ui hwan hyang).txt');
insert into songs (album_id, title, song_path, lyrics) 
values ((select album_id from albums where album_name = '전설'), '나쁜 꿈', '전설 - 10. 나쁜 꿈.mp3', '전설 - 10. 나쁜 꿈.txt');
insert into songs (album_id, title, song_path, lyrics) 
values ((select album_id from albums where album_name = '전설'), '새 어둠 새 눈', '새 어둠 새 눈 (land of night).mp3', '새 어둠 새 눈 (land of night).txt');
insert into songs (album_id, title, song_path, lyrics) 
values ((select album_id from albums where album_name = '전설'), '꿈과 책과 힘과 벽', '꿈과 책과 힘과 벽.mp3', '꿈과 책과 힘과 벽.txt');

-- 곡 장르 정보 삽입
--비비
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='밤양갱'), 20);

--소수빈
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='말해주라'), 10);

--잔나비 1집
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='가을밤에 든 생각'), 80); -- 인디음악
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='한걸음'), 80);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='그 밤 그 밤'), 80);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='늙은 개'), 80);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='작전명 청춘!'), 80);

--잔나비 2집
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='레이디버드'), 80); -- 인디음악
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='초록을 거머쥔 우리는'), 80);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='여름가을겨울 봄.'), 80);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='슬픔이여안녕'), 80);

--잔나비 전설
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='나의 기쁨 나의 노래 (Intro)'), 80); -- 인디음악
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='투게더!'), 80);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='조이풀 조이풀'), 80);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='거울'), 80);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='우리 애는요'), 80);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='DOLMARO'), 80);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='전설'), 80);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='주저하는 연인들을 위해'), 80);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='신나는 잠'), 80);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='나쁜 꿈'), 80);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='새 어둠 새 눈'), 80);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='꿈과 책과 힘과 벽'), 80);

-- 타이틀 곡 정보 삽입
insert into title_songs (album_id, song_id) values ((select album_id from albums where album_name = '밤양갱'), (select song_id from songs where title='밤양갱')); -- 밤양갱 앨범의 타이틀 곡
insert into title_songs (album_id, song_id) values ((select album_id from albums where album_name = '말해주라'), (select song_id from songs where title='말해주라')); -- 말해주라 앨범의 타이틀 곡
insert into title_songs (album_id, song_id) values ((select album_id from albums where album_name = '소곡집 I'), (select song_id from songs where title= '가을밤에 든 생각')); -- 소곡집 I 앨범의 타이틀 곡
insert into title_songs (album_id, song_id) values ((select album_id from albums where album_name = '소곡집 II: 초록을 거머쥔 우리는'), (select song_id from songs where title= '초록을 거머쥔 우리는')); -- 소곡집 II: 초록을 거머쥔 우리는 앨범의 타이틀 곡
insert into title_songs (album_id, song_id) values ((select album_id from albums where album_name = '전설'), (select song_id from songs where title= '주저하는 연인들을 위해')); -- 전설 앨범의 타이틀 곡

-- 아티스트 역할 코드 등록

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'BIBI'), (select song_id from songs where title='밤양갱'), 10); -- BIBI 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '장기하'), (select song_id from songs where title='밤양갱'), 20); -- 장기하 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '장기하'), (select song_id from songs where title='밤양갱'), 30); -- 장기하 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '장기하'), (select song_id from songs where title='밤양갱'), 40); -- 장기하 편곡가

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '소수빈'), (select song_id from songs where title='말해주라'), 10); -- 소수빈 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '소수빈'), (select song_id from songs where title='말해주라'), 20); -- 소수빈 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '소수빈'), (select song_id from songs where title='말해주라'), 30); -- 소수빈 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '소수빈'), (select song_id from songs where title='말해주라'), 40); -- 소수빈 편곡가


 -- 11 잔나비 가수 (select artist_id from artists where artist_name = '잔나비')
 -- 12 최정훈 작사 (select artist_id from artists where artist_name = '최정훈')
 -- 13 김도형 작곡 (select artist_id from artists where artist_name = '김도형')
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '잔나비'), (select song_id from songs where title='가을밤에 든 생각'), 10);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='가을밤에 든 생각'), 30); 
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='가을밤에 든 생각'), 20); 
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '김도형'), (select song_id from songs where title='가을밤에 든 생각'), 20); 
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='가을밤에 든 생각'), 40);

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '잔나비'), (select song_id from songs where title='한걸음'), 10);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='한걸음'), 30);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='한걸음'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '김도형'), (select song_id from songs where title='한걸음'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='한걸음'), 40);

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '잔나비'), (select song_id from songs where title='그 밤 그 밤'), 10);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='그 밤 그 밤'), 30);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='그 밤 그 밤'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '김도형'), (select song_id from songs where title='그 밤 그 밤'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '김도형'), (select song_id from songs where title='그 밤 그 밤'), 40); 

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '잔나비'), (select song_id from songs where title='늙은 개'), 10);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='늙은 개'), 30);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='늙은 개'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '김도형'), (select song_id from songs where title='늙은 개'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '김도형'), (select song_id from songs where title='늙은 개'), 40);

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '잔나비'), (select song_id from songs where title='작전명 청춘!'), 10);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='작전명 청춘!'), 30);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='작전명 청춘!'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '김도형'), (select song_id from songs where title='작전명 청춘!'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '김도형'), (select song_id from songs where title='작전명 청춘!'), 40);

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '잔나비'), (select song_id from songs where title='레이디버드'), 10);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='레이디버드'), 30);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='레이디버드'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '김도형'), (select song_id from songs where title='레이디버드'), 20); 
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='레이디버드'), 40); 

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '잔나비'), (select song_id from songs where title='초록을 거머쥔 우리는'), 10);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='초록을 거머쥔 우리는'), 30);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='초록을 거머쥔 우리는'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '김도형'), (select song_id from songs where title='초록을 거머쥔 우리는'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='초록을 거머쥔 우리는'), 40);

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '잔나비'), (select song_id from songs where title='여름가을겨울 봄.'), 10);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='여름가을겨울 봄.'), 30);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='여름가을겨울 봄.'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '김도형'), (select song_id from songs where title='여름가을겨울 봄.'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='여름가을겨울 봄.'), 40);

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '잔나비'), (select song_id from songs where title='슬픔이여안녕'), 10);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='슬픔이여안녕'), 30);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='슬픔이여안녕'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '김도형'), (select song_id from songs where title='슬픔이여안녕'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='슬픔이여안녕'), 40);


insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '잔나비'), (select song_id from songs where title='나의 기쁨 나의 노래 (Intro)'), 10); 
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='나의 기쁨 나의 노래 (Intro)'), 30);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='나의 기쁨 나의 노래 (Intro)'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '김도형'), (select song_id from songs where title='나의 기쁨 나의 노래 (Intro)'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='나의 기쁨 나의 노래 (Intro)'), 40);

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '잔나비'), (select song_id from songs where title='투게더!'), 10);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='투게더!'), 30);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='투게더!'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '김도형'), (select song_id from songs where title='투게더!'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='투게더!'), 40);

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '잔나비'), (select song_id from songs where title='조이풀 조이풀'), 10);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='조이풀 조이풀'), 30);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='조이풀 조이풀'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '김도형'), (select song_id from songs where title='조이풀 조이풀'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='조이풀 조이풀'), 40);

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '잔나비'), (select song_id from songs where title='거울'), 10);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='거울'), 30);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='거울'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '김도형'), (select song_id from songs where title='거울'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='거울'), 40);

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '잔나비'), (select song_id from songs where title='우리 애는요'), 10);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='우리 애는요'), 30);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='우리 애는요'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '김도형'), (select song_id from songs where title='우리 애는요'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='우리 애는요'), 40);

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '잔나비'), (select song_id from songs where title='DOLMARO'), 10);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='DOLMARO'), 30);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='DOLMARO'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '김도형'), (select song_id from songs where title='DOLMARO'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='DOLMARO'), 40);

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '잔나비'), (select song_id from songs where title='전설'), 10);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='전설'), 30);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='전설'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '김도형'), (select song_id from songs where title='전설'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='전설'), 40);

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '잔나비'), (select song_id from songs where title='주저하는 연인들을 위해'), 10);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='주저하는 연인들을 위해'), 30);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='주저하는 연인들을 위해'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '김도형'), (select song_id from songs where title='주저하는 연인들을 위해'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='주저하는 연인들을 위해'), 40);

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '잔나비'), (select song_id from songs where title='신나는 잠'), 10);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='신나는 잠'), 30);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='신나는 잠'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '김도형'), (select song_id from songs where title='신나는 잠'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='신나는 잠'), 40);

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '잔나비'), (select song_id from songs where title='나쁜 꿈'), 10);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='나쁜 꿈'), 30);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='나쁜 꿈'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '김도형'), (select song_id from songs where title='나쁜 꿈'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='나쁜 꿈'), 40);

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '잔나비'), (select song_id from songs where title='새 어둠 새 눈'), 10);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='새 어둠 새 눈'), 30);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='새 어둠 새 눈'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '김도형'), (select song_id from songs where title='새 어둠 새 눈'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='새 어둠 새 눈'), 40);

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '잔나비'), (select song_id from songs where title='꿈과 책과 힘과 벽'), 10);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='꿈과 책과 힘과 벽'), 30);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='꿈과 책과 힘과 벽'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '김도형'), (select song_id from songs where title='꿈과 책과 힘과 벽'), 20);
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '최정훈'), (select song_id from songs where title='꿈과 책과 힘과 벽'), 40);

-- 뉴진스 노래 데이터 삽입

-- 앨범 정보 삽입
insert into albums (album_name, album_image, album_type, album_release_date) values ('GET UP', 'GET_UP_cover.jpg', 'EP', '2023-07-21');

-- 새로 생성된 album_id를 4로 가정

-- 곡 정보 삽입
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'GET UP'), 'New Jeans', 'NewJeans - New Jeans.mp3', 'NewJeans - New Jeans.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'GET UP'), 'Super Shy', 'NewJeans - Super Shy.mp3', 'NewJeans - Super Shy.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'GET UP'), 'ETA', 'NewJeans - ETA.mp3', 'NewJeans - ETA.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'GET UP'), 'Cool With You', 'NewJeans - Cool With You.mp3', 'NewJeans - Cool With You.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'GET UP'), 'Get Up', 'NewJeans - Get Up.mp3', 'NewJeans - Get Up.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'GET UP'), 'ASAP', 'NewJeans - ASAP.mp3', 'NewJeans - ASAP.txt');

-- 타이틀 곡 정보 삽입
-- NewJeans 뉴진스	GET UP
insert into title_songs (album_id, song_id) values ((select album_id from albums where album_name = 'GET UP'), (select song_id from songs where title='Super Shy'));
insert into title_songs (album_id, song_id) values ((select album_id from albums where album_name = 'GET UP'), (select song_id from songs where title='ETA'));
insert into title_songs (album_id, song_id) values ((select album_id from albums where album_name = 'GET UP'), (select song_id from songs where title='Cool With You'));


-- 새로 생성된 song_id를 7로 가정

-- 곡 장르 정보 삽입
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='New Jeans'), 30);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='Super Shy'), 30);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='ETA'), 30);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='Cool With You'), 30);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='Get Up'), 30);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='ASAP'), 30);

-- 아티스트 정보 삽입 (뉴진스와 작곡가, 작사가, 편곡가 추가)
insert into artists (artist_name, artist_image, artist_description) values ('NewJeans', 'NewJeans.jpg', 'NewJeans.txt');
insert into artists (artist_name, artist_image, artist_description) values ('FRNK', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Gigi', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('FrankieScoca', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('250', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('임성빈', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('freekind', 'profile.jpg', '');



-- 새로 생성된 artist_id가 11 NewJeans, 12 FRNK, 13 Gigi, 14 FrankieScoca, 15 250, 16 임성빈, 17 freekind


-- 아티스트 역할 정보 삽입
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'NewJeans'), (select song_id from songs where title='New Jeans'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'FRNK'), (select song_id from songs where title='New Jeans'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Gigi'), (select song_id from songs where title='New Jeans'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'FrankieScoca'), (select song_id from songs where title='New Jeans'), 40); -- 편곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'NewJeans'), (select song_id from songs where title='Super Shy'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'FrankieScoca'), (select song_id from songs where title='Super Shy'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Gigi'), (select song_id from songs where title='Super Shy'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'FrankieScoca'), (select song_id from songs where title='Super Shy'), 40); -- 편곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'NewJeans'), (select song_id from songs where title='ETA'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '250'), (select song_id from songs where title='ETA'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '임성빈'), (select song_id from songs where title='ETA'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '250'), (select song_id from songs where title='ETA'), 40); -- 편곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'NewJeans'), (select song_id from songs where title='Cool With You'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'FRNK'), (select song_id from songs where title='Cool With You'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Gigi'), (select song_id from songs where title='Cool With You'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'FRNK'), (select song_id from songs where title='Cool With You'), 40); -- 편곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'NewJeans'), (select song_id from songs where title='Get Up'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '250'), (select song_id from songs where title='Get Up'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'freekind'), (select song_id from songs where title='Get Up'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '250'), (select song_id from songs where title='Get Up'), 40); -- 편곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'NewJeans'), (select song_id from songs where title='ASAP'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '250'), (select song_id from songs where title='ASAP'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Gigi'), (select song_id from songs where title='ASAP'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '250'), (select song_id from songs where title='ASAP'), 40); -- 편곡가




-- 키오라 노래 데이터 삽입

-- 앨범 정보 삽입
-- [싱글] 댄스,알앤비
-- 수록곡 2 midas touch-댄스, nothing-알앤비



insert into albums (album_name, album_image, album_type, album_release_date) values ('midas touch', 'midas touch.jpg', '싱글', '2024-04-03');

-- 새로 생성된 album_id를 101로 가정

-- 곡 정보 삽입
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'midas touch'), 'midas touch', 'kiss of life - midas touch.mp3', 'kiss of life - midas touch.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'midas touch'), 'nothing', 'kiss of life - nothing.mp3', 'kiss of life - nothing.txt');

-- 타이틀 곡 정보 삽입

-- kissOfLife 키스오브라이프	midas touch
insert into title_songs (album_id, song_id) values ((select album_id from albums where album_name = 'midas touch'), (select song_id from songs where title='midas touch'));



-- 새로 생성된 song_id를 101부터 가정
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='midas touch'), 30);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='nothing'), 40);

-- 아티스트 정보 삽입 (키오라와 작사가, 작곡가, 편곡가 추가)
insert into artists (artist_name, artist_image, artist_description) values ('kissOfLife', 'kissOfLife.jpg', 'kissOfLife.txt');
insert into artists (artist_name, artist_image, artist_description) values ('미아', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('조윤경', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Strawberrybananaclub', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Ayushy (THE HUB)', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('P.K (NU_BOUNCE)', 'profile.jpg', '');




-- 새로 생성된 artist_id가 101 kissOfLife, 102 미아, 103 조윤경, 104 Strawberrybananaclub, 105 Ayushy (THE HUB), 106 P.K (NU_BOUNCE)

-- 아티스트 역할 정보 삽입 songId 101부터 102
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'kissOfLife'), (select song_id from songs where title='midas touch'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '미아'), (select song_id from songs where title='midas touch'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Strawberrybananaclub'), (select song_id from songs where title='midas touch'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Strawberrybananaclub'), (select song_id from songs where title='midas touch'), 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'kissOfLife'), (select song_id from songs where title='nothing'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Ayushy (THE HUB)'), (select song_id from songs where title='nothing'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'P.K (NU_BOUNCE)'), (select song_id from songs where title='nothing'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'P.K (NU_BOUNCE)'), (select song_id from songs where title='nothing'), 40); -- 편곡가




-- 베이비몬스터 노래 데이터 삽입
-- 앨범 정보 삽입
-- [EP] 발라드,댄스,알앤비,힙합
-- 수록곡 7 monsters_intro-댄스, sheesh-알앤비, like that-알앤비, stuck in the middle-발라드, batter up-힙합, dream-발라드, stuck in the middle_remix-댄스

insert into albums (album_name, album_image, album_type, album_release_date) values ('babymons7er', 'babymons7er.jpg', 'EP', '2024-04-01');

-- 새로 생성된 album_id를 102로 가정

-- 곡 정보 삽입
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'babymons7er'), 'sheesh', 'babymonster - sheesh.mp3', 'babymonster - sheesh.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'babymons7er'), 'batter up', 'babymonster - batter up.mp3', 'babymonster - batter up.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'babymons7er'), 'dream', 'babymonster - dream.mp3', 'babymonster - dream.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'babymons7er'), 'like that', 'babymonster - like that.mp3', 'babymonster - like that.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'babymons7er'), 'monsters_intro', 'babymonster - monsters_intro.mp3', 'babymonster - monsters_intro.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'babymons7er'), 'stuck in the middle', 'babymonster - stuck in the middle.mp3', 'babymonster - stuck in the middle.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'babymons7er'), 'stuck in the middle_remix', 'babymonster - stuck in the middle_remix.mp3', 'babymonster - stuck in the middle_remix.txt');


-- 새로 생성된 song_id를 103부터 가정
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='sheesh'), 40);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='batter up'), 50);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='dream'), 10);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='like that'), 40);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='monsters_intro'), 30);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='stuck in the middle'), 10);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='stuck in the middle_remix'), 30);

-- 타이틀 곡 정보 삽입

-- babymonster 베이비몬스터	babymons7er
insert into title_songs (album_id, song_id) values ((select album_id from albums where album_name = 'babymons7er'), (select song_id from songs where title='sheesh'));

-- 아티스트 정보 삽입 (베이비몬스터와 작사가 작곡가 편곡가)
insert into artists (artist_name, artist_image, artist_description) values ('babymonster', 'babymonster.jpg', 'babymonster.txt');
insert into artists (artist_name, artist_image, artist_description) values ('Jared Lee', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('ICE', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('DEE.P', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('CHOICE37', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('LIL G', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Charlie Puth', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Dan Whittemore', 'profile.jpg', '');

-- 새로 생성된 artist_id가  107 babymonster, 108 Jared Lee, 109 ICE, 110 DEE.P, 111 CHOICE37, 112 LIL G, 113 Charlie Puth, 114 Dan Whittemore


-- 아티스트 역할 정보 삽입 songId 103부터 109
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'babymonster'), (select song_id from songs where title='sheesh'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'CHOICE37'), (select song_id from songs where title='sheesh'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'LIL G'), (select song_id from songs where title='sheesh'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'DEE.P'), (select song_id from songs where title='sheesh'), 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'babymonster'), (select song_id from songs where title='batter up'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Jared Lee'), (select song_id from songs where title='batter up'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'DEE.P'), (select song_id from songs where title='batter up'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'DEE.P'), (select song_id from songs where title='batter up'), 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'babymonster'), (select song_id from songs where title='dream'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Jared Lee'), (select song_id from songs where title='dream'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'LIL G'), (select song_id from songs where title='dream'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Dan Whittemore'), (select song_id from songs where title='dream'), 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'babymonster'), (select song_id from songs where title='like that'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Charlie Puth'), (select song_id from songs where title='like that'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Charlie Puth'), (select song_id from songs where title='like that'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Charlie Puth'), (select song_id from songs where title='like that'), 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'babymonster'), (select song_id from songs where title='monsters_intro'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Jared Lee'), (select song_id from songs where title='monsters_intro'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'ICE'), (select song_id from songs where title='monsters_intro'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'DEE.P'), (select song_id from songs where title='monsters_intro'), 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'babymonster'), (select song_id from songs where title='stuck in the middle'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Jared Lee'), (select song_id from songs where title='stuck in the middle'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'DEE.P'), (select song_id from songs where title='stuck in the middle'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'DEE.P'), (select song_id from songs where title='stuck in the middle'), 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'babymonster'), (select song_id from songs where title='stuck in the middle_remix'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Jared Lee'), (select song_id from songs where title='stuck in the middle_remix'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'DEE.P'), (select song_id from songs where title='stuck in the middle_remix'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Dan Whittemore'), (select song_id from songs where title='stuck in the middle_remix'), 40); -- 편곡가



-- 아일릿 노래 데이터 삽입
-- 앨범 정보 삽입
-- [EP] 댄스
-- 수록곡4 magnetic, my world, midnight fiction, lucky girl syndrome

insert into albums (album_name, album_image, album_type, album_release_date) values ('super real me', 'super real me.jpg', 'EP', '2024-03-25');

-- 새로 생성된 album_id를 103로 가정

insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'super real me'), 'magnetic', 'illit - magnetic.mp3', 'illit - magnetic.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'super real me'), 'my world', 'illit - my world.mp3', 'illit - my world.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'super real me'), 'midnight fiction', 'illit - midnight fiction.mp3', 'illit - midnight fiction.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'super real me'), 'lucky girl syndrome', 'illit - lucky girl syndrome.mp3', 'illit - lucky girl syndrome.txt');

-- 새로 생성된 song_id를 110부터 가정
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='magnetic'), 30);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='my world'), 30);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='midnight fiction'), 30);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='lucky girl syndrome'), 30);

-- 타이틀 곡 정보 삽입

-- illit 아일릿 	super real me
insert into title_songs (album_id, song_id) values ((select album_id from albums where album_name = 'super real me'), (select song_id from songs where title='magnetic'));


-- 아티스트 정보 삽입 (아일릿과 작사가 작곡가 편곡가)
insert into artists (artist_name, artist_image, artist_description) values ('illit', 'illit.jpg', 'illit.txt');
insert into artists (artist_name, artist_image, artist_description) values (' Albin Tengblad', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Lara Andersson', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Slow Rabbit', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('salem ilese', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('노주환', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Stint', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Alna Hofmeyr', 'profile.jpg', '');

-- 새로 생성된 artist_id가  115 illit, 116 Albin Tengblad, 117 Lara Andersson, 118 Slow Rabbit, 119 salem ilese, 120 노주환, 121 Stint, 122 Alna Hofmeyr





-- 아티스트 역할 정보 삽입 songId 110부터 113
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'illit'), (select song_id from songs where title='magnetic'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Slow Rabbit'), (select song_id from songs where title='magnetic'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'salem ilese'), (select song_id from songs where title='magnetic'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'salem ilese'), (select song_id from songs where title='magnetic'), 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'illit'), (select song_id from songs where title='my world'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Albin Tengblad'), (select song_id from songs where title='my world'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Lara Andersson'), (select song_id from songs where title='my world'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Lara Andersson'), (select song_id from songs where title='my world'), 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'illit'), (select song_id from songs where title='midnight fiction'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '노주환'), (select song_id from songs where title='midnight fiction'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '노주환'), (select song_id from songs where title='midnight fiction'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '노주환'), (select song_id from songs where title='midnight fiction'), 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'illit'), (select song_id from songs where title='lucky girl syndrome'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Stint'), (select song_id from songs where title='lucky girl syndrome'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Alna Hofmeyr'), (select song_id from songs where title='lucky girl syndrome'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Alna Hofmeyr'), (select song_id from songs where title='lucky girl syndrome'), 40); -- 편곡가



-- 비비지 노래 데이터 삽입
-- 앨범 정보 삽입
-- [EP] 알앤비,댄스
-- 수록곡5 maniac, untie, overflow, 한걸음, up 2 me

insert into albums (album_name, album_image, album_type, album_release_date) values ('versus', 'versus.jpg', 'EP', '2023-11-02');

-- 새로 생성된 album_id를 104로 가정
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'versus'), 'maniac', 'viviz - maniac.mp3', 'viviz - maniac.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'versus'), 'untie', 'viviz - untie.mp3', 'viviz - untie.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'versus'), 'overflow', 'viviz - overflow.mp3', 'viviz - overflow.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'versus'), 'viviz - 한걸음', 'viviz - 한걸음.mp3', 'viviz - 한걸음.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'versus'), 'up 2 me', 'viviz - up 2 me.mp3', 'viviz - up 2 me.txt');

-- 새로 생성된 song_id를 114부터118
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='maniac'), 30);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='untie'), 30);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='overflow'), 30);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='viviz - 한걸음'), 30);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='up 2 me'), 30);

-- 타이틀 곡 정보 삽입

-- viviz 비비지		versus
insert into title_songs (album_id, song_id) values ((select album_id from albums where album_name = 'versus'), (select song_id from songs where title='maniac'));


-- 아티스트 정보 삽입 (비비지와 작사가 작곡가 편곡가)
insert into artists (artist_name, artist_image, artist_description) values ('viviz', 'viviz.jpg', 'viviz.txt');
insert into artists (artist_name, artist_image, artist_description) values ('구여름', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Jack Brady', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('The Wavys', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Ellie Suh', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('라이언 전', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('BYMORE', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('정하리', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Freek Mulder', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('danke', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('YOUNGWOO', 'profile.jpg', '');

-- 새로 생성된 artist_id가  123 viviz, 124 구여름, 125 Jack Brady, 126 The Wavys, 127 Ellie Suh, 128 라이언 전, 129 BYMORE, 130 정하리, 131 Freek Mulder, 132 danke, 133 YOUNGWOO


-- 아티스트 역할 정보 삽입 songId 114부터 118
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'viviz'), (select song_id from songs where title='maniac'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '구여름'), (select song_id from songs where title='maniac'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Jack Brady'), (select song_id from songs where title='maniac'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'The Wavys'), (select song_id from songs where title='maniac'), 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'viviz'), (select song_id from songs where title='untie'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Ellie Suh'), (select song_id from songs where title='untie'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '라이언 전'), (select song_id from songs where title='untie'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '라이언 전'), (select song_id from songs where title='untie'), 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'viviz'), (select song_id from songs where title='overflow'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'BYMORE'), (select song_id from songs where title='overflow'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'BYMORE'), (select song_id from songs where title='overflow'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'BYMORE'), (select song_id from songs where title='overflow'), 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'viviz'), (select song_id from songs where title='viviz - 한걸음'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '정하리'), (select song_id from songs where title='viviz - 한걸음'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Freek Mulder'), (select song_id from songs where title='viviz - 한걸음'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Freek Mulder'), (select song_id from songs where title='viviz - 한걸음'), 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'viviz'), (select song_id from songs where title='up 2 me'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'danke'), (select song_id from songs where title='up 2 me'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'YOUNGWOO'), (select song_id from songs where title='up 2 me'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'YOUNGWOO'), (select song_id from songs where title='up 2 me'), 40); -- 편곡가



-- 에스파 노래 데이터 삽입
-- 앨범 정보 삽입
-- [정규] 댄스,발라드,알앤비
-- 수록곡10 supernova, amargeddon, set the tone, mine, licorice, bahama, long chat, prologue, live my life, 목소리

insert into albums (album_name, album_image, album_type, album_release_date) values ('armageddon', 'armageddon.jpg', '정규', '2024-05-27');

-- 새로 생성된 album_id를 105로 가정
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'armageddon'), 'supernova', 'aespa - supernova.mp3', 'aespa - supernova.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'armageddon'), 'armageddon', 'aespa - armageddon.mp3', 'aespa - armageddon.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'armageddon'), 'set the tone', 'aespa - set the tone.mp3', 'viviz - set the tone.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'armageddon'), 'mine', 'aespa - mine.mp3', 'aespa - mine.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'armageddon'), 'licorice', 'aespa - licorice.mp3', 'aespa - licorice.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'armageddon'), 'bahama', 'aespa - bahama.mp3', 'aespa - bahama.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'armageddon'), 'long chat', 'aespa - long chat.mp3', 'aespa - long chat.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'armageddon'), 'prologue', 'aespa - prologue.mp3', 'aespa - prologue.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'armageddon'), 'live my life', 'aespa - live my life.mp3', 'aespa - live my life.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'armageddon'), '목소리', 'aespa - 목소리.mp3', 'aespa - 목소리.txt');

-- 타이틀 곡 정보 삽입

-- aespa 에스파		armageddon
insert into title_songs (album_id, song_id) values ((select album_id from albums where album_name = 'armageddon'), (select song_id from songs where title='supernova'));
insert into title_songs (album_id, song_id) values ((select album_id from albums where album_name = 'armageddon'), (select song_id from songs where title='armageddon'));

-- 새로 생성된 song_id를 119부터128
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='supernova'), 30);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='armageddon'), 30);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='set the tone'), 30);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='mine'), 30);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='licorice'), 30);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='bahama'), 30);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='long chat'), 30);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='prologue'), 40);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='live my life'), 30);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='목소리'), 10);

-- 아티스트 정보 삽입 (에스파와 작사가 작곡가 편곡가)
insert into artists (artist_name, artist_image, artist_description) values ('aespa', 'aespa.jpg', 'aespa.txt');
insert into artists (artist_name, artist_image, artist_description) values ('KENZIE', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Dem Jointz', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('방혜현', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('EJAE', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('No Identity', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('조윤경2', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Ludwig Lindell', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Caesar, Loui', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('이은화', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Mike Daley', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('강은정', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Daniel Davidsen', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('PhD', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('문설리', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Stian Nyhammer Olsen', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Mola', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Gil Lewis', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Leslie', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Edvard Forre Erfjord', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('이오늘', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('밍지션', 'profile.jpg', '');


--  (select album_id from albums where album_name = 'armageddon')
--  (select song_id from songs where title='maniac')

--  (select artist_id from artists where artist_name = '조윤경')

-- 새로 생성된 artist_id가  134 aespa, 135 KENZIE, 136 Dem Jointz, 137 방혜현, 138 EJAE, 139 No Identity, 140 조윤경, 141 Ludwig Lindell, 142 Caesar, Loui, 143 이은화, 144 Mike Daley
-- 145 강은정 146 Daniel Davidsen 147 PhD 148 문설리  149 Stian Nyhammer Olsen   150 Mola    151 Gil Lewis    152 Leslie    153 Edvard Forre Erfjord   154 이오늘   155 밍지션



-- 아티스트 역할 정보 삽입 songId 119부터 128
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'aespa'), (select song_id from songs where title='supernova'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'KENZIE'), (select song_id from songs where title='supernova'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'KENZIE'), (select song_id from songs where title='supernova'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Dem Jointz'), (select song_id from songs where title='supernova'), 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'aespa'), (select song_id from songs where title='armageddon'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '방혜현'), (select song_id from songs where title='armageddon'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'EJAE'), (select song_id from songs where title='armageddon'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'No Identity'), (select song_id from songs where title='armageddon'), 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'aespa'), (select song_id from songs where title='set the tone'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '조윤경'), (select song_id from songs where title='set the tone'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Ludwig Lindell'), (select song_id from songs where title='set the tone'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Caesar, Loui'), (select song_id from songs where title='set the tone'), 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'aespa'), (select song_id from songs where title='mine'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '이은화'), (select song_id from songs where title='mine'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Mike Daley'), (select song_id from songs where title='mine'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Mike Daley'), (select song_id from songs where title='mine'), 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'aespa'), (select song_id from songs where title='licorice'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '강은정'), (select song_id from songs where title='licorice'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Daniel Davidsen'), (select song_id from songs where title='licorice'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'PhD'), (select song_id from songs where title='licorice'), 40); -- 편곡가


insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'aespa'), (select song_id from songs where title='bahama'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'KENZIE'), (select song_id from songs where title='bahama'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'KENZIE'), (select song_id from songs where title='bahama'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'KENZIE'), (select song_id from songs where title='bahama'), 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'aespa'), (select song_id from songs where title='long chat'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '문설리'), (select song_id from songs where title='long chat'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Stian Nyhammer Olsen'), (select song_id from songs where title='long chat'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Stian Nyhammer Olsen'), (select song_id from songs where title='long chat'), 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'aespa'), (select song_id from songs where title='prologue'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Mola'), (select song_id from songs where title='prologue'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Gil Lewis'), (select song_id from songs where title='prologue'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Gil Lewis'), (select song_id from songs where title='prologue'), 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'aespa'), (select song_id from songs where title='live my life'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Leslie'), (select song_id from songs where title='live my life'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Edvard Forre Erfjord'), (select song_id from songs where title='live my life'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Edvard Forre Erfjord'), (select song_id from songs where title='live my life'), 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'aespa'), (select song_id from songs where title='목소리'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '이오늘'), (select song_id from songs where title='목소리'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '밍지션'), (select song_id from songs where title='목소리'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '밍지션'), (select song_id from songs where title='목소리'), 40); -- 편곡가


--------- 동환이꺼

--------------- 아티스트
insert into artists (artist_image, artist_name, artist_description) 
    values ('권정열.jpg', '10cm', '권정열.txt');
    
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
    values ((select album_id from albums where album_name = '4.1'),
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
    
    
    
    
    
    
