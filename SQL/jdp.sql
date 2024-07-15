-- 뉴진스 노래 데이터 삽입

-- 앨범 정보 삽입
insert into albums (album_name, album_image, album_type, album_release_date) values ('GET UP', 'GET_UP_cover.jpg', 'EP', '2023-07-21');

-- 새로 생성된 album_id를 4로 가정

-- 곡 정보 삽입
insert into songs (album_id, title, song_path, lyrics) values (4, 'New Jeans', 'NewJeans - New Jeans.mp3', 'NewJeans - New Jeans.txt');
insert into songs (album_id, title, song_path, lyrics) values (4, 'Super Shy', 'NewJeans - Super Shy.mp3', 'NewJeans - Super Shy.txt');
insert into songs (album_id, title, song_path, lyrics) values (4, 'ETA', 'NewJeans - ETA.mp3', 'NewJeans - ETA.txt');
insert into songs (album_id, title, song_path, lyrics) values (4, 'Cool With You', 'NewJeans - Cool With You.mp3', 'NewJeans - Cool With You.txt');
insert into songs (album_id, title, song_path, lyrics) values (4, 'Get Up', 'NewJeans - Get Up.mp3', 'NewJeans - Get Up.txt');
insert into songs (album_id, title, song_path, lyrics) values (4, 'ASAP', 'NewJeans - ASAP.mp3', 'NewJeans - ASAP.txt');


-- 새로 생성된 song_id를 7로 가정

-- 곡 장르 정보 삽입
insert into song_genre (song_id, genre_id) values (7, 30);
insert into song_genre (song_id, genre_id) values (8, 30);
insert into song_genre (song_id, genre_id) values (9, 30);
insert into song_genre (song_id, genre_id) values (10, 30);
insert into song_genre (song_id, genre_id) values (11, 30);
insert into song_genre (song_id, genre_id) values (12, 30);

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
insert into artist_roles (artist_id, song_id, role_id) values (11, 7, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (12, 7, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (13, 7, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (14, 7, 40); -- 편곡가
insert into artist_roles (artist_id, song_id, role_id) values (11, 8, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (14, 8, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (13, 8, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (14, 8, 40); -- 편곡가
insert into artist_roles (artist_id, song_id, role_id) values (11, 9, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (15, 9, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (16, 9, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (15, 9, 40); -- 편곡가
insert into artist_roles (artist_id, song_id, role_id) values (11, 10, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (12, 10, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (13, 10, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (12, 10, 40); -- 편곡가
insert into artist_roles (artist_id, song_id, role_id) values (11, 11, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (15, 11, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (17, 11, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (15, 11, 40); -- 편곡가
insert into artist_roles (artist_id, song_id, role_id) values (11, 12, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (15, 12, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (13, 12, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (15, 12, 40); -- 편곡가

-- 타이틀 곡 정보 삽입
insert into title_songs (album_id, song_id) values (4, 8); -- album_id는 "밤양갱" 앨범의 ID, song_id는 새로 추가된 곡의 ID



-- 키오라 노래 데이터 삽입

-- 앨범 정보 삽입
-- [싱글] 댄스,알앤비
-- 수록곡 2 midas touch-댄스, nothing-알앤비

insert into albums (album_name, album_image, album_type, album_release_date) values ('midas touch', 'midas touch.jpg', '싱글', '2024-04-03');

-- 새로 생성된 album_id를 101로 가정

-- 곡 정보 삽입
insert into songs (album_id, title, song_path, lyrics) values (101, 'midas touch', 'kiss of life - midas touch.mp3', 'kiss of life - midas touch.txt');
insert into songs (album_id, title, song_path, lyrics) values (101, 'nothing', 'kiss of life - nothing.mp3', 'kiss of life - nothing.txt');


-- 새로 생성된 song_id를 101부터 가정
insert into song_genre (song_id, genre_id) values (101, 30);
insert into song_genre (song_id, genre_id) values (102, 40);

-- 아티스트 정보 삽입 (키오라와 작사가, 작곡가, 편곡가 추가)
insert into artists (artist_name, artist_image, artist_description) values ('kissOfLife', 'kissOfLife.jpg', 'kissOfLife.txt');
insert into artists (artist_name, artist_image, artist_description) values ('미아', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('조윤경', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Strawberrybananaclub', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Ayushy (THE HUB)', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('P.K (NU_BOUNCE)', 'profile.jpg', '');

-- 새로 생성된 artist_id가 101 kissOfLife, 102 미아, 103 조윤경, 104 Strawberrybananaclub, 105 Ayushy (THE HUB), 106 P.K (NU_BOUNCE)

-- 아티스트 역할 정보 삽입 songId 101부터 102
insert into artist_roles (artist_id, song_id, role_id) values (101, 101, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (102, 101, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (104, 101, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (104, 101, 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values (101, 102, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (105, 102, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (106, 102, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (106, 102, 40); -- 편곡가




-- 베이비몬스터 노래 데이터 삽입
-- 앨범 정보 삽입
-- [EP] 발라드,댄스,알앤비,힙합
-- 수록곡 7 monsters_intro-댄스, sheesh-알앤비, like that-알앤비, stuck in the middle-발라드, batter up-힙합, dream-발라드, stuck in the middle_remix-댄스

insert into albums (album_name, album_image, album_type, album_release_date) values ('babymons7er', 'babymons7er.jpg', 'EP', '2024-04-01');

-- 새로 생성된 album_id를 102로 가정

-- 곡 정보 삽입
insert into songs (album_id, title, song_path, lyrics) values (102, 'sheesh', 'babymonster - sheesh.mp3', 'babymonster - sheesh.txt');
insert into songs (album_id, title, song_path, lyrics) values (102, 'batter up', 'babymonster - batter up.mp3', 'babymonster - batter up.txt');
insert into songs (album_id, title, song_path, lyrics) values (102, 'dream', 'babymonster - dream.mp3', 'babymonster - dream.txt');
insert into songs (album_id, title, song_path, lyrics) values (102, 'like that', 'babymonster - like that.mp3', 'babymonster - like that.txt');
insert into songs (album_id, title, song_path, lyrics) values (102, 'monsters_intro', 'babymonster - monsters_intro.mp3', 'babymonster - monsters_intro.txt');
insert into songs (album_id, title, song_path, lyrics) values (102, 'stuck in the middle', 'babymonster - stuck in the middle.mp3', 'babymonster - stuck in the middle.txt');
insert into songs (album_id, title, song_path, lyrics) values (102, 'stuck in the middle_remix', 'babymonster - stuck in the middle_remix.mp3', 'babymonster - stuck in the middle_remix.txt');

-- 새로 생성된 song_id를 103부터 가정
insert into song_genre (song_id, genre_id) values (103, 40);
insert into song_genre (song_id, genre_id) values (104, 50);
insert into song_genre (song_id, genre_id) values (105, 10);
insert into song_genre (song_id, genre_id) values (106, 40);
insert into song_genre (song_id, genre_id) values (107, 30);
insert into song_genre (song_id, genre_id) values (108, 10);
insert into song_genre (song_id, genre_id) values (109, 30);

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
insert into artist_roles (artist_id, song_id, role_id) values (107, 103, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (111, 103, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (112, 103, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (110, 103, 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values (107, 104, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (108, 104, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (110, 104, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (110, 104, 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values (107, 105, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (108, 105, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (112, 105, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (114, 105, 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values (107, 106, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (113, 106, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (113, 106, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (113, 106, 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values (107, 107, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (108, 107, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (109, 107, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (110, 107, 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values (107, 108, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (108, 108, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (110, 108, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (110, 108, 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values (107, 109, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (108, 109, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (110, 109, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (114, 109, 40); -- 편곡가



-- 아일릿 노래 데이터 삽입
-- 앨범 정보 삽입
-- [EP] 댄스
-- 수록곡4 magnetic, my world, midnight fiction, lucky girl syndrome

insert into albums (album_name, album_image, album_type, album_release_date) values ('super real me', 'super real me.jpg', 'EP', '2024-03-25');

-- 새로 생성된 album_id를 103로 가정

insert into songs (album_id, title, song_path, lyrics) values (103, 'magnetic', 'illit - magnetic.mp3', 'illit - magnetic.txt');
insert into songs (album_id, title, song_path, lyrics) values (103, 'my world', 'illit - my world.mp3', 'illit - my world.txt');
insert into songs (album_id, title, song_path, lyrics) values (103, 'midnight fiction', 'illit - midnight fiction.mp3', 'illit - midnight fiction.txt');
insert into songs (album_id, title, song_path, lyrics) values (103, 'lucky girl syndrome', 'illit - lucky girl syndrome.mp3', 'illit - lucky girl syndrome.txt');

-- 새로 생성된 song_id를 110부터 가정
insert into song_genre (song_id, genre_id) values (110, 30);
insert into song_genre (song_id, genre_id) values (111, 30);
insert into song_genre (song_id, genre_id) values (112, 30);
insert into song_genre (song_id, genre_id) values (113, 30);

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
insert into artist_roles (artist_id, song_id, role_id) values (115, 110, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (118, 110, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (119, 110, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (119, 110, 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values (115, 111, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (116, 111, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (117, 111, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (117, 111, 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values (115, 112, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (120, 112, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (120, 112, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (120, 112, 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values (115, 113, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (121, 113, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (122, 113, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (122, 113, 40); -- 편곡가



-- 비비지 노래 데이터 삽입
-- 앨범 정보 삽입
-- [EP] 알앤비,댄스
-- 수록곡5 maniac, untie, overflow, 한걸음, up 2 me

insert into albums (album_name, album_image, album_type, album_release_date) values ('versus', 'versus.jpg', 'EP', '2023-11-02');

-- 새로 생성된 album_id를 104로 가정
insert into songs (album_id, title, song_path, lyrics) values (104, 'maniac', 'viviz - maniac.mp3', 'viviz - maniac.txt');
insert into songs (album_id, title, song_path, lyrics) values (104, 'untie', 'viviz - untie.mp3', 'viviz - untie.txt');
insert into songs (album_id, title, song_path, lyrics) values (104, 'overflow', 'viviz - overflow.mp3', 'viviz - overflow.txt');
insert into songs (album_id, title, song_path, lyrics) values (104, '한걸음', 'viviz - 한걸음.mp3', 'viviz - 한걸음.txt');
insert into songs (album_id, title, song_path, lyrics) values (104, 'up 2 me', 'viviz - up 2 me.mp3', 'viviz - up 2 me.txt');

-- 새로 생성된 song_id를 114부터118
insert into song_genre (song_id, genre_id) values (114, 30);
insert into song_genre (song_id, genre_id) values (115, 30);
insert into song_genre (song_id, genre_id) values (116, 30);
insert into song_genre (song_id, genre_id) values (117, 30);
insert into song_genre (song_id, genre_id) values (118, 30);

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
insert into artist_roles (artist_id, song_id, role_id) values (123, 114, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (124, 114, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (125, 114, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (126, 114, 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values (123, 115, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (127, 115, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (128, 115, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (128, 115, 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values (123, 116, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (129, 116, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (129, 116, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (129, 116, 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values (123, 117, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (130, 117, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (131, 117, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (131, 117, 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values (123, 118, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (132, 118, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (133, 118, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (133, 118, 40); -- 편곡가



-- 에스파 노래 데이터 삽입
-- 앨범 정보 삽입
-- [정규] 댄스,발라드,알앤비
-- 수록곡10 supernova, amargeddon, set the tone, mine, licorice, bahama, long chat, prologue, live my life, 목소리

insert into albums (album_name, album_image, album_type, album_release_date) values ('armageddon', 'armageddon.jpg', '정규', '2024-05-27');

-- 새로 생성된 album_id를 105로 가정
insert into songs (album_id, title, song_path, lyrics) values (105, 'supernova', 'aespa - supernova.mp3', 'aespa - supernova.txt');
insert into songs (album_id, title, song_path, lyrics) values (105, 'armageddon', 'aespa - armageddon.mp3', 'aespa - armageddon.txt');
insert into songs (album_id, title, song_path, lyrics) values (105, 'set the tone', 'aespa - set the tone.mp3', 'viviz - set the tone.txt');
insert into songs (album_id, title, song_path, lyrics) values (105, 'mine', 'aespa - mine.mp3', 'aespa - mine.txt');
insert into songs (album_id, title, song_path, lyrics) values (105, 'licorice', 'aespa - licorice.mp3', 'aespa - licorice.txt');
insert into songs (album_id, title, song_path, lyrics) values (105, 'bahama', 'aespa - bahama.mp3', 'aespa - bahama.txt');
insert into songs (album_id, title, song_path, lyrics) values (105, 'long chat', 'aespa - long chat.mp3', 'aespa - long chat.txt');
insert into songs (album_id, title, song_path, lyrics) values (105, 'prologue', 'aespa - prologue.mp3', 'aespa - prologue.txt');
insert into songs (album_id, title, song_path, lyrics) values (105, 'live my life', 'aespa - live my life.mp3', 'aespa - live my life.txt');
insert into songs (album_id, title, song_path, lyrics) values (105, '목소리', 'aespa - 목소리.mp3', 'aespa - 목소리.txt');

-- 새로 생성된 song_id를 119부터128
insert into song_genre (song_id, genre_id) values (119, 30);
insert into song_genre (song_id, genre_id) values (120, 30);
insert into song_genre (song_id, genre_id) values (121, 30);
insert into song_genre (song_id, genre_id) values (122, 30);
insert into song_genre (song_id, genre_id) values (123, 30);
insert into song_genre (song_id, genre_id) values (124, 30);
insert into song_genre (song_id, genre_id) values (125, 30);
insert into song_genre (song_id, genre_id) values (126, 40);
insert into song_genre (song_id, genre_id) values (127, 30);
insert into song_genre (song_id, genre_id) values (128, 10);

-- 아티스트 정보 삽입 (에스파와 작사가 작곡가 편곡가)
insert into artists (artist_name, artist_image, artist_description) values ('aespa', 'aespa.jpg', 'aespa.txt');
insert into artists (artist_name, artist_image, artist_description) values ('KENZIE', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Dem Jointz', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('방혜현', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('EJAE', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('No Identity', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('조윤경', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Ludwig Lindell', 'profile.jpg', '');
insert into artists (artist_name, artist_image, artist_description) values ('Caesar & Loui', 'profile.jpg', '');
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



-- 새로 생성된 artist_id가  134 aespa, 135 KENZIE, 136 Dem Jointz, 137 방혜현, 138 EJAE, 139 No Identity, 140 조윤경, 141 Ludwig Lindell, 142 Caesar & Loui, 143 이은화, 144 Mike Daley
145 강은정 146 Daniel Davidsen 147 PhD 148 문설리  149 Stian Nyhammer Olsen   150 Mola    151 Gil Lewis    152 Leslie    153 Edvard Forre Erfjord   154 이오늘   155 밍지션

-- 아티스트 역할 정보 삽입 songId 119부터 128
insert into artist_roles (artist_id, song_id, role_id) values (134, 119, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (135, 119, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (135, 119, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (136, 119, 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values (134, 120, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (137, 120, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (138, 120, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (139, 120, 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values (134, 121, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (140, 121, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (141, 121, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (142, 121, 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values (134, 122, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (143, 122, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (144, 122, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (144, 122, 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values (134, 123, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (145, 123, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (146, 123, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (147, 123, 40); -- 편곡가


insert into artist_roles (artist_id, song_id, role_id) values (134, 124, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (135, 124, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (135, 124, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (135, 124, 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values (134, 125, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (148, 125, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (149, 125, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (149, 125, 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values (134, 126, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (150, 126, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (151, 126, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (151, 126, 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values (134, 127, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (152, 127, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (153, 127, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (153, 127, 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values (134, 128, 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values (154, 128, 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values (155, 128, 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values (155, 128, 40); -- 편곡가