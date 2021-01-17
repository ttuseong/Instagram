--사용자
create table users(
    userNo INT not null primary key,
    userId VARCHAR2(20) not null,
    userPw VARCHAR2(20) not null,
    userPhone VARCHAR2(20),
    userGender VARCHAR2(20),
    userIntro VARCHAR2(20),
    userLink VARCHAR2(20),
    userEmail varchar2(20) not null,
    userName varchar2(20) not null,
    userImg varchar2(300)
);

delete from users;

alter table users add (userEmail varchar2(20) not null);
alter table users add (userName varchar2(20) not null);
alter table users add (userImg varchar2(300));
alter table users rename column useremaul to userEmail;


CREATE SEQUENCE sq_users
START WITH 1
INCREMENT BY 1
MAXVALUE 10000
MINVALUE 1
NOCYCLE;

drop table users;
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME = "tabnam";

--게시글
create table post(
    postNo INT not null primary key,
    userNo INT not null,
    postContent VARCHAR2(20),
    postPos VARCHAR(20),
    constraint fk_post_userNo foreign key(userNo)
    references users(userNo) on delete set null
);

CREATE SEQUENCE sq_post
START WITH 1
INCREMENT BY 1
MAXVALUE 10000
MINVALUE 1
NOCYCLE;

--게시글 좋아요
create table postLiked(
    userNo int,
    postNo int,
    constraint fk_postLiked_userNo foreign key(userNo)
    references users(userNo) on delete set null,
    constraint fk_postLiked_postNo foreign key(postNo)
    references post(postNo) on delete set null
);

--게시글 저장
create table savePost(
    userNo INT,
    postNo INT,
    constraint fk_savePost_userNo foreign key(userNo)
    references users(userNo) on delete set null,
    constraint fk_savePost_postNo foreign key(postNo)
    references post(postNo) on delete set null
);

--댓글
create table comments(
    commentNo int primary key,
    postNo int,
    commentContent VARCHAR2(20),
    commentParent int not null,
    commentDepth int not null,
    commentDate date not null,
    constraint fk_comments_postNo foreign key(postNo)
    references post(postNo) on delete set null
);

CREATE SEQUENCE sq_comments
START WITH 1
INCREMENT BY 1
MAXVALUE 10000
MINVALUE 1
NOCYCLE;

--댓글 좋아요
create table commentLiked(
    userNo int,
    commentNo int,
    constraint fk_commentLiked_userNo foreign key(userNo)
    references users(userNo) on delete set null,
    constraint fk_commentLiked_commentNo foreign key(commentNo)
    references comments(commentNo) on delete set null
);

--이미지
create table image(
    imgNo int primary key,
    postNo int,
    imgIndex int not null,
    imgName VARCHAR2(20) not null,
    constraint fk_image_postNo foreign key(postNo)
    references post(postNo) on delete set null
);

CREATE SEQUENCE sq_image
START WITH 1
INCREMENT BY 1
MAXVALUE 10000
MINVALUE 1
NOCYCLE;

--해시태그
create table hashtag(
    hashtagNo int primary key,
    postNo int,
    hashtagName VARCHAR2(20) not null,
    constraint fk_hashtag_postNo foreign key(postNo)
    references post(postNo) on delete set null
);

CREATE SEQUENCE sq_hashtag
START WITH 1
INCREMENT BY 1
MAXVALUE 10000
MINVALUE 1
NOCYCLE;

create table follow(
    fromNo INT not null,
    toNo INT not null,
    constraint fk_follow_fromNo foreign key(fromNo)
    references users(userNo),
    constraint fk_follow_toNo foreign key(toNo)
    references users(userNo)
);

create table message_user(
    messageNo INT not null primary key,
    fromNo INT not null,
    toNo INT not null,
    constraint fk_message_user_fromNo foreign key(fromNo)
    references users(userNo),
    constraint fk_message_user_toNo foreign key(toNo)
    references users(userNo)
);

CREATE SEQUENCE sq_message_user
START WITH 1
INCREMENT BY 1
MAXVALUE 10000
MINVALUE 1
NOCYCLE;

create table message_content(
    messageNo INT not null,
    message VARCHAR2(20) not null,
    regDate date not null,
    constraint fk_message_content_messageNo foreign key(messageNo)
    references message_user(messageNo)
);

--삭제 쿼리

drop table post;
drop table follow;
drop table message_user;
drop table comments;
drop table image;
drop table hashtag;

--추가 쿼리
insert into users
values(sq_users.nextval, 'test1', 'test2', '', '', '', '', 'test3', '', 'test4');

--검색
SELECT
    *
FROM
    users;