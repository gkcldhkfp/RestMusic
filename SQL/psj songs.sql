-- 아이유 Love poem 6곡, 삐삐 1곡, 에잇 1곡
-- 볼빨깐 사춘기 



-- 앨범 데이터 추가
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

select * from albums;
commit;



-- 음악 데이터 추가(DB 통합할때 album_id 확인 및 설정 주의!)
----------------------------------------------------------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link) -- Love poem 앨범
values (61, 'Blueming',
'Love poem_Blueming_아이유.mp3',
'Love poem_Blueming.txt',
'https://www.youtube.com/embed/D1PvIWdJ8xo?si=ceiPBphESLEJuHOw');

insert into songs (album_id, title, song_path, lyrics, video_link)
values (61, 'Love poem',
'Love poem_Love poem_아이유',
'Love poem_Love poem.txt',
'https://www.youtube.com/embed/iOKRYIMhaDk?si=GrX2NBvfwTeflTsA');

insert into songs (album_id, title, song_path, lyrics, video_link)
values (61, 'unlucky',
'Love poem_unlucky_아이유.mp3',
'Love poem_unlucky.txt',
'https://www.youtube.com/embed/l5Rb1pNre40?si=twvr-w2hpTI8UFIv');

insert into songs (album_id, title, song_path, lyrics, video_link)
values (61, '그 사람',
'Love poem_그 사람_아이유.mp3',
'Love poem_그 사람.txt',
'https://www.youtube.com/embed/y5YmTj8KDWM?si=crUeOIAWK4Htwln9');

insert into songs (album_id, title, song_path, lyrics, video_link)
values (61, '시간의 바깥',
'Love poem_시간의 바깥_아이유.mp3',
'Love poem_시간의 바깥.txt',
'https://www.youtube.com/embed/R3Fwdnij49o?si=xOzo9VwlR5zYFXAs');

insert into songs (album_id, title, song_path, lyrics, video_link)
values (61, '자장가',
'Love poem_자장가_아이유.mp3',
'Love poem_자장가.txt',
'https://www.youtube.com/embed/aepREwo5Lio?si=cmKyl_jq9DIWsmgu');
----------------------------------------------------------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link) -- 삐삐 앨범
values (62, '삐삐',
'삐삐_삐삐_아이유.mp3',
'삐삐_삐삐.txt',
'https://www.youtube.com/embed/nM0xDI5R50E?si=6Ao8ysv8-rNtrG1-');
----------------------------------------------------------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link) -- 밤편지 앨범
values (63, '밤편지',
'밤편지_밤편지_아이유.mp3',
'밤편지_밤편지.txt',
'https://www.youtube.com/embed/BzYnNdJhZQw?si=T34qb5d_rxZU_KQg');
----------------------------------------------------------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link) -- 사춘기집 앨범
values (3, '별 보러 갈래?', 
'사춘기집Ⅰ 꽃기운_별 보러 갈래?_볼빨간사춘기.mp3', 
'사춘기집Ⅰ 꽃기운_별 보러 갈래?.txt',
'https://www.youtube.com/embed/8n9wklIG9qU?si=68aDQpG5BiLWldfR');

insert into songs (album_id, title, song_path, lyrics, video_link)
values (3, '나만, 봄', 
'사춘기집Ⅰ 꽃기운_나만, 봄_볼빨간사춘기.mp3',
'사춘기집Ⅰ 꽃기운_나만, 봄.txt',
'https://www.youtube.com/embed/AsXxuIdpkWM?si=LOEOJ6weXzLYEoZU');

insert into songs (album_id, title, song_path, lyrics, video_link)
values (3, '나들이 갈까', 
'사춘기집Ⅰ 꽃기운_나들이 갈까_볼빨간사춘기.mp3', 
'사춘기집Ⅰ 꽃기운_나들이 갈까.txt',
'https://www.youtube.com/embed/nDn1T3yRT0k?si=TNvmZqqi1pkV2tx-');

insert into songs (album_id, title, song_path, lyrics, video_link)
values (3, 'Mermaid', 
'사춘기집Ⅰ 꽃기운_Mermaid_볼빨간사춘기.mp3',
'사춘기집Ⅰ 꽃기운_Mermaid.txt',
'https://www.youtube.com/embed/jDrVkH297iQ?si=QgYNC4MOBr5y_phg');

insert into songs (album_id, title, song_path, lyrics, video_link)
values (3, 'Seattle Alone', 
'사춘기집Ⅰ 꽃기운_Seattle Alone_볼빨간사춘기.mp3',
'사춘기집Ⅰ 꽃기운_Seattle Alone.txt',
'https://www.youtube.com/embed/soZoplDbCKg?si=395CR1DhCV1C4zP-');
----------------------------------------------------------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link) -- SUMMER EPISODE 앨범
values (64, 'DINOSAUR', 
'SUMMER EPISODE_DINOSAUR_AKMU (악뮤).mp3',
'SUMMER EPISODE_DINOSAUR.txt',
'https://www.youtube.com/embed/8Oz7DG76ibY?si=v2zM_PO9Hb2ZWCMc');

insert into songs (album_id, title, song_path, lyrics, video_link)
values (64, 'MY DARLING', 
'SUMMER EPISODE_MY DARLING_AKMU (악뮤)',
'SUMMER EPISODE_MY DARLING.txt',
'https://www.youtube.com/embed/8Oz7DG76ibY?si=v2zM_PO9Hb2ZWCMc');
----------------------------------------------------------------------------------------------------------------------------
insert into songs (album_id, title, song_path, lyrics, video_link) -- Love Lee 앨범
values (1, 'Love Lee',
'Love Lee_Love Lee_AKMU (악뮤).mp3',
'Love Lee_Love Lee.txt',
'https://www.youtube.com/embed/EIz09kLzN9k?si=Fqba3c4bHmEodWpI');

insert into songs (album_id, title, song_path, lyrics, video_link)
values (1, '후라이의 꿈',
'Love Lee_후라이의 꿈_AKMU (악뮤).mp3',
'Love Lee_후라이의 꿈.txt',
'https://www.youtube.com/embed/3kGAlp_PNUg?si=qCXf56Gns92dR7V6');

select * from songs;
commit;



-- 곡 장르 데이터 추가(DB 통합할때 album_id, song_id 확인 및 설정 주의!)
insert into song_genre (song_id, genre_id) -- Love poem 앨범
values (81, 20);

insert into song_genre (song_id, genre_id)
values (82, 20);

insert into song_genre (song_id, genre_id)
values (83, 20);

insert into song_genre (song_id, genre_id)
values (84, 20);

insert into song_genre (song_id, genre_id)
values (85, 20);

insert into song_genre (song_id, genre_id)
values (86, 20);

insert into song_genre (song_id, genre_id) -- 삐삐 앨범
values (87, 40);

insert into song_genre (song_id, genre_id) -- 밤편지 앨범
values (88, 10);

insert into song_genre (song_id, genre_id) -- 사춘기집 앨범
values (89, 80);

insert into song_genre (song_id, genre_id)
values (90, 80);

insert into song_genre (song_id, genre_id)
values (91, 80);

insert into song_genre (song_id, genre_id)
values (92, 80);

insert into song_genre (song_id, genre_id)
values (93, 80);

insert into song_genre (song_id, genre_id) -- SUMMER EPISODE 앨범
values (94, 30);

insert into song_genre (song_id, genre_id)
values (95, 30);

select * from song_genre;
commit;




-- 앨범 타이틀 곡 데이터 추가(DB 통합할때 album_id, song_id 확인 및 설정 주의!)
insert into title_songs (album_id, song_id) -- Love poem 앨범 타이틀 곡(Love poem 곡)
values (61, 82);

insert into title_songs (album_id, song_id) -- 삐삐 앨범 타이틀 곡(삐삐 곡)
values (62, 87);

insert into title_songs (album_id, song_id) -- 밤편지 앨범 타이틀 곡(밤편지 곡)
values (63, 88);

insert into title_songs (album_id, song_id) -- 사춘기집 앨범 타이틀 곡(나만, 봄 곡)
values (3, 90);

insert into title_songs (album_id, song_id) -- SUMMER EPISODE 앨범 타이틀 곡(DINOSAUR 곡)
values (64, 94);

select * from title_songs;
commit;



-- artists 데이터 추가
insert into artists (artist_name, artist_image, artist_description)
values ('아이유', '아이유.jpg', '아이유.txt');

insert into artists (artist_name, artist_image, artist_description)
values ('볼빨간사춘기', '볼빨간사춘기.jpg', '볼빨간사춘기.txt');

insert into artists (artist_name, artist_image, artist_description)
values ('AKMU (악뮤)', 'AKMU (악뮤).jpg', 'AKMU (악뮤).txt');

insert into artists (artist_name)
values ('이종훈');

insert into artists (artist_name)
values ('이채규');

insert into artists (artist_name, artist_image, artist_description)
values ('적재', '적재.jpg', '적재.txt');

insert into artists (artist_name)
values ('홍소진');

insert into artists (artist_name, artist_description)
values ('제휘', '제휘.txt');

insert into artists (artist_name, artist_image)
values ('이민수', '이민수.jpg');

insert into artists (artist_name)
values ('김희원');

insert into artists (artist_name, artist_image, artist_description)
values ('바닐라맨', '바닐라맨.jpg', '바닐라맨.txt');

insert into artists (artist_name, artist_image, artist_description)
values ('낯선아이', '낯선아이.jpg', '낯선아이.txt');

insert into artists (artist_name)
values ('로빈(ROVIN)');

insert into artists (artist_name)
values ('MILLENNIUM');

insert into artists (artist_name, artist_image, artist_description)
values ('시황', '시황.jpg', '시황.txt');

select * from artists;
commit;



-- artist_roles 데이터 추가(DB 통합할때 album_id, song_id 확인 및 설정 주의!)
insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 가수(아이유)
values (61, 81, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (61, 82, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (61, 83, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (61, 84, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (61, 85, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (61, 86, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (61, 87, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (61, 88, 10);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 blueming 작곡(아이유, 이종훈, 이채규)
values (61, 81, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (62, 81, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (63, 81, 20);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 blueming 작사(아이유)
values (61, 81, 30);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 blueming 편곡(이종훈, 이채규)
values (62, 81, 40);

insert into artist_roles (artist_id, song_id, role_id)
values (63, 81, 40);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 love poem 작곡(이종훈)
values (62, 82, 20);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 love poem 작사(아이유)
values (61, 82, 30);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 love poem 편곡(적재, 홍소진)
values (64, 82, 40);

insert into artist_roles (artist_id, song_id, role_id)
values (65, 82, 40);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 unlucky 작곡(제휘)
values (66, 83, 20);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 unlucky 작사(아이유)
values (61, 83, 30);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 unlucky 편곡(제휘)
values (66, 83, 40);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 그 사람 작곡(아이유)
values (61, 84, 20);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 그 사람 작사(아이유)
values (61, 84, 30);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 그 사람 편곡(적재)
values (64, 84, 40);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 시간의 바깥 작곡(이민수)
values (67, 85, 20);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 시간의 바깥 작사(아이유)
values (61, 85, 30);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 시간의 바깥 편곡(이민수)
values (67, 85, 40);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 자장가 작곡(김희원)
values (68, 86, 20);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 자장가 작사(아이유)
values (61, 86, 30);

insert into artist_roles (artist_id, song_id, role_id) -- Love poem 앨범 자장가 편곡(홍소진)
values (65, 86, 40);
----------------------------------------------------------------------------------------------------------------------------
insert into artist_roles (artist_id, song_id, role_id) -- 삐삐 앨범 삐삐 작곡(이종훈)
values (62, 87, 20);

insert into artist_roles (artist_id, song_id, role_id) -- 삐삐 앨범 삐삐 작사(아이유)
values (61, 87, 30);

insert into artist_roles (artist_id, song_id, role_id) -- 삐삐 앨범 삐삐 편곡(이채규)
values (63, 87, 40);
----------------------------------------------------------------------------------------------------------------------------
insert into artist_roles (artist_id, song_id, role_id) -- 밤편지 앨범 밤편지 작곡(김희원, 제휘)
values (68, 88, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (66, 88, 20);

insert into artist_roles (artist_id, song_id, role_id) -- 밤편지 앨범 밤편지 작사(아이유)
values (61, 88, 30);

insert into artist_roles (artist_id, song_id, role_id) -- 밤편지 앨범 밤편지 편곡(김희원, 제휘)
values (68, 88, 40);

insert into artist_roles (artist_id, song_id, role_id)
values (66, 88, 40);
----------------------------------------------------------------------------------------------------------------------------
insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 가수(볼빨간사춘기)
values (21, 89, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (21, 90, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (21, 91, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (21, 92, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (21, 93, 10);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 별 보러 갈래 작곡(볼빨간사춘기, 바닐라맨)
values (21, 89, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (69, 89, 20);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 별 보러 갈래 작사(볼빨간사춘기)
values (21, 89, 30);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 별 보러 갈래 편곡(바닐라맨)
values (69, 89, 40);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 나만 봄 작곡(볼빨간사춘기, 바닐라맨)
values (21, 90, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (69, 90, 20);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 나만 봄 작사(볼빨간사춘기)
values (21, 90, 30);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 나만 봄 편곡(바닐라맨)
values (69, 90, 40);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 나들이 갈까 작곡(낯선아이)
values (70, 91, 20);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 나들이 갈까 작사(낯선아이)
values (70, 91, 30);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 나들이 갈까 편곡(바닐라맨)
values (69, 91, 40);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 mermaid 작곡(볼빨간사춘기)
values (21, 92, 20);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 mermaid 작사(볼빨간사춘기)
values (21, 92, 30);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 mermaid 편곡(바닐라맨)
values (21, 92, 40);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 Seattle Alone 작곡(볼빨간사춘기, 바닐라맨)
values (21, 93, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (69, 93, 20);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 Seattle Alone 작사(볼빨간사춘기)
values (21, 93, 30);

insert into artist_roles (artist_id, song_id, role_id) -- 사춘기집Ⅰ 꽃기운 앨범 Seattle Alone 편곡(바닐라맨)
values (21, 93, 40);
----------------------------------------------------------------------------------------------------------------------------
insert into artist_roles (artist_id, song_id, role_id) -- SUMMER EPISODE 앨범 가수(AKMU악뮤)
values (1, 94, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (1, 95, 10);

insert into artist_roles (artist_id, song_id, role_id) -- SUMMER EPISODE 앨범 DINOSAUR 작곡(AKMU악뮤)
values (1, 94, 20);

insert into artist_roles (artist_id, song_id, role_id) -- SUMMER EPISODE 앨범 DINOSAUR 작사(AKMU악뮤)
values (1, 94, 30);

insert into artist_roles (artist_id, song_id, role_id) -- SUMMER EPISODE 앨범 DINOSAUR 편곡(로빈)
values (71, 94, 40);

insert into artist_roles (artist_id, song_id, role_id) -- SUMMER EPISODE 앨범 MY DARLING 작곡(AKMU악뮤)
values (1, 95, 20);

insert into artist_roles (artist_id, song_id, role_id) -- SUMMER EPISODE 앨범 MY DARLING 작사(AKMU악뮤)
values (1, 95, 30);

insert into artist_roles (artist_id, song_id, role_id) -- SUMMER EPISODE 앨범 MY DARLING 편곡(로빈)
values (71, 95, 40);
----------------------------------------------------------------------------------------------------------------------------
insert into artist_roles (artist_id, song_id, role_id) -- Love Lee 앨범 가수(AKMU악뮤)
values (1, 1, 10);

insert into artist_roles (artist_id, song_id, role_id)
values (1, 2, 10);

insert into artist_roles (artist_id, song_id, role_id) -- Love Lee 앨범 Love Lee 작곡(AKMU악뮤, MILLENNIUM, 시황)
values (1, 1, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (72, 1, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (73, 1, 20);

insert into artist_roles (artist_id, song_id, role_id) -- Love Lee 앨범 Love Lee 작사(AKMU악뮤)
values (1, 1, 30);

insert into artist_roles (artist_id, song_id, role_id) -- Love Lee 앨범 후라이의 꿈 작곡(AKMU악뮤)
values (1, 2, 20);

insert into artist_roles (artist_id, song_id, role_id)
values (71, 2, 20);

insert into artist_roles (artist_id, song_id, role_id) -- Love Lee 앨범 후라이의 꿈 작사(AKMU악뮤)
values (1, 2, 30);


select * from artist_roles;
commit;

