CREATE TABLE users (
  id_user INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(32) NOT NULL,
  password CHAR(32) NOT NULL,
  type ENUM(admin, student, teacher, alumni) NOT NULL,
  email VARCHAR(64) NOT NULL,
  bio TEXT,
  course TINYINT NOT NULL,
  degree VARCHAR(32) NOT NULL,
  profile_picture VARCHAR(48)
);

CREATE TABLE games (
  id_game INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(128) NOT NULL,
  description TEXT,
  rating INT,
  build VARCHAR(48),
  download_amount INT UNSIGNED NOT NULL,
  release_date DATE NOT NULL
);

CREATE TABLE posts (
  id_post INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  text_content TEXT,
  image VARCHAR(48),
  date DATE NOT NULL
);

CREATE TABLE commentaries (
  id_comment INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  text_content TEXT,
  date DATE NOT NULL
);

CREATE TABLE user_games (
  id_user_game INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  id_user INT UNSIGNED,
  id_game INT UNSIGNED,
  FOREIGN KEY (id_user) REFERENCES users(id_user),
  FOREIGN KEY (id_game) REFERENCES games(id_game)
);

CREATE TABLE user_commentaries (
  id_user_comment INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  id_user INT UNSIGNED,
  id_comment INT UNSIGNED,
  FOREIGN KEY (id_user) REFERENCES users(id_user),
  FOREIGN KEY (id_comment) REFERENCES commentaries(id_comment)
);

CREATE TABLE post_commentaries (
  id_post_comment INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  id_post INT UNSIGNED,
  id_comment INT UNSIGNED,
  FOREIGN KEY (id_post) REFERENCES posts(id_post),
  FOREIGN KEY (id_comment) REFERENCES commentaries(id_comment)
);