SELECT * FROM users;

INSERT INTO users(userno, userid, userpwd, username, useraddr, userphone, useremail)
VALUES (1, 'test', '1234', '테스트이름', '주소','000-0000-0000', 'ddd@gmail.com');

ALTER TABLE users MODIFY (userno INTEGER DEFAULT USERSEQ.NEXTVAL);


commit

