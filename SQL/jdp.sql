-- 뉴진스(NewJeans) 노래 데이터 삽입

-- 앨범 정보 삽입
-- [EP] 댄스
-- 수록곡6 New Jeans, Super Shy, ETA, Cool With You, Get Up, ASAP

insert into albums (album_name, album_image, album_type, album_release_date) values ('GET UP', 'GET_UP_cover.jpg', 'EP', '2023-07-21');

-- 새로 생성된 album_id를 4로 가정

-- 곡 정보 삽입
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'GET UP'), 'New Jeans', 'NewJeans - New Jeans.mp3', 'NewJeans - New Jeans.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'GET UP'), 'Super Shy', 'NewJeans - Super Shy.mp3', 'NewJeans - Super Shy.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'GET UP'), 'ETA', 'NewJeans - ETA.mp3', 'NewJeans - ETA.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'GET UP'), 'Cool With You', 'NewJeans - Cool With You.mp3', 'NewJeans - Cool With You.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'GET UP'), 'Get Up', 'NewJeans - Get Up.mp3', 'NewJeans - Get Up.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'GET UP'), 'ASAP', 'NewJeans - ASAP.mp3', 'NewJeans - ASAP.txt');

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

-- 타이틀 곡 정보 삽입

-- NewJeans 뉴진스	GET UP
insert into title_songs (album_id, song_id) values ((select album_id from albums where album_name = 'GET UP'), (select song_id from songs where title='Super Shy'));
insert into title_songs (album_id, song_id) values ((select album_id from albums where album_name = 'GET UP'), (select song_id from songs where title='ETA'));
insert into title_songs (album_id, song_id) values ((select album_id from albums where album_name = 'GET UP'), (select song_id from songs where title='Cool With You'));






-- 키오라(kissOfLife) 노래 데이터 삽입

-- 앨범 정보 삽입
-- [싱글] 댄스,알앤비
-- 수록곡2 midas touch_댄스, nothing_알앤비

insert into albums (album_name, album_image, album_type, album_release_date) values ('midas touch', 'midas touch.jpg', '싱글', '2024-04-03');

-- 새로 생성된 album_id를 101로 가정

-- 곡 정보 삽입
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'midas touch'), 'midas touch', 'kiss of life - midas touch.mp3', 'kiss of life - midas touch.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'midas touch'), 'nothing', 'kiss of life - nothing.mp3', 'kiss of life - nothing.txt');


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

-- 타이틀 곡 정보 삽입

-- kissOfLife 키스오브라이프	midas touch
insert into title_songs (album_id, song_id) values ((select album_id from albums where album_name = 'midas touch'), (select song_id from songs where title='midas touch'));






-- 베이비몬스터(babymonster) 노래 데이터 삽입
-- 앨범 정보 삽입
-- [EP] 발라드,댄스,알앤비,힙합
-- 수록곡 7 monsters_intro_댄스, sheesh_알앤비, like that_알앤비, stuck in the middle_발라드, batter up_힙합, dream_발라드, stuck in the middle_remix_댄스

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

-- 타이틀 곡 정보 삽입

-- babymonster 베이비몬스터	babymons7er
insert into title_songs (album_id, song_id) values ((select album_id from albums where album_name = 'babymons7er'), (select song_id from songs where title='sheesh'));








-- 아일릿(illit) 노래 데이터 삽입
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

-- 타이틀 곡 정보 삽입

-- illit 아일릿 	super real me
insert into title_songs (album_id, song_id) values ((select album_id from albums where album_name = 'super real me'), (select song_id from songs where title='magnetic'));






-- 비비지(viviz) 노래 데이터 삽입
-- 앨범 정보 삽입
-- [EP] 알앤비,댄스
-- 수록곡5 maniac_댄스, untie_알앤비, overflow_알앤비, 한걸음_알앤비, up 2 me_댄스

insert into albums (album_name, album_image, album_type, album_release_date) values ('versus', 'versus.jpg', 'EP', '2023-11-02');

-- 새로 생성된 album_id를 104로 가정
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'versus'), 'maniac', 'viviz - maniac.mp3', 'viviz - maniac.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'versus'), 'untie', 'viviz - untie.mp3', 'viviz - untie.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'versus'), 'overflow', 'viviz - overflow.mp3', 'viviz - overflow.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'versus'), '한걸음', 'viviz - 한걸음.mp3', 'viviz - 한걸음.txt');
insert into songs (album_id, title, song_path, lyrics) values ((select album_id from albums where album_name = 'versus'), 'up 2 me', 'viviz - up 2 me.mp3', 'viviz - up 2 me.txt');

-- 새로 생성된 song_id를 114부터118
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='maniac'), 30);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='untie'), 40);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='overflow'), 40);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='한걸음'), 40);
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='up 2 me'), 30);


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

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'viviz'), (select song_id from songs where title='한걸음'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = '정하리'), (select song_id from songs where title='한걸음'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Freek Mulder'), (select song_id from songs where title='한걸음'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'Freek Mulder'), (select song_id from songs where title='한걸음'), 40); -- 편곡가

insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'viviz'), (select song_id from songs where title='up 2 me'), 10); -- 가수
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'danke'), (select song_id from songs where title='up 2 me'), 30); -- 작사가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'YOUNGWOO'), (select song_id from songs where title='up 2 me'), 20); -- 작곡가
insert into artist_roles (artist_id, song_id, role_id) values ((select artist_id from artists where artist_name = 'YOUNGWOO'), (select song_id from songs where title='up 2 me'), 40); -- 편곡가

-- 타이틀 곡 정보 삽입

-- viviz 비비지		versus
insert into title_songs (album_id, song_id) values ((select album_id from albums where album_name = 'versus'), (select song_id from songs where title='maniac'));







-- 에스파(aespa) 노래 데이터 삽입
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
insert into artists (artist_name, artist_image, artist_description) values ('조윤경', 'profile.jpg', '');
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

--  (select artist_id from artists where artist_name = '밍지션')

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


-- 타이틀 곡 정보 삽입

-- aespa 에스파		armageddon
insert into title_songs (album_id, song_id) values ((select album_id from albums where album_name = 'armageddon'), (select song_id from songs where title='supernova'));
insert into title_songs (album_id, song_id) values ((select album_id from albums where album_name = 'armageddon'), (select song_id from songs where title='armageddon'));




