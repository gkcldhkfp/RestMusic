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
insert into song_genre (song_id, genre_id) values ((select song_id from songs where title='슬픔이여안녕')(select song_id from songs where title='Tight'), 80);

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






