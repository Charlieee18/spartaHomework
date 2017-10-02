DROP TABLE IF EXISTS video;

CREATE TABLE video (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  description TEXT,
  url VARCHAR(255)

);

INSERT INTO video (title , description , url ) VALUES ('Title1' , 'Description text1' , 'url/loremipsum');
INSERT INTO video (title , description , url ) VALUES ('Title2' , 'Description text2' , 'url/loremipsum');
INSERT INTO video (title , description , url ) VALUES ('Title3' , 'Description text3' , 'url/loremipsum');
INSERT INTO video (title , description , url ) VALUES ('Title4' , 'Description text4' , 'url/loremipsum');