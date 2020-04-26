SELECT * FROM users;

INSERT INTO users(userid, userpwd, username, useraddr, userphone, useremail)
VALUES ('test', '1234', '테스트이름', '주소','000-0000-0000', 'ddd@gmail.com');

ALTER TABLE users MODIFY userno DEFAULT USERSEQ.NEXTVAL;

INSERT INTO category(cateNo, cateName) VALUES (cateSeq.NEXTVAL, '사업/창업');
INSERT INTO category(cateNo, cateName) VALUES (cateSeq.NEXTVAL, '문화/예술');

ALTER TABLE users
MODIFY userAddr varchar2(100);

select count('userNo') FROM CATEGORY;

ALTER TABLE users ADD CONSTRAINT userIdUnique UNIQUE (userId);

SELECT userSeq.CURRVAL FROM DUAL;

SELECT userNo, userId, userPwd, userName, userAddr, userPhone, userEmail, userJoinDate, userStatus FROM users WHERE userId='jang';
commit

