CREATE TABLE users (
  id_user INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(32) NOT NULL,
  password CHAR(32) NOT NULL,
  type ENUM("admin", "student", "teacher", "alumni") NOT NULL,
  email VARCHAR(64) NOT NULL,
  bio TEXT,
  course TINYINT NOT NULL,
  degree VARCHAR(32) NOT NULL,
  profile_picture VARCHAR(48)
);

CREATE TABLE games (
  id_game INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(128) NOT NULL,
  description TEXT,
  rating INT,
  build VARCHAR(48),
  download_amount INT UNSIGNED NOT NULL,
  release_date DATETIME NOT NULL
);

CREATE TABLE posts (
  id_post INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  text_content TEXT,
  image VARCHAR(48),
  posted DATETIME NOT NULL,
  id_user INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_user) REFERENCES users(id_user)
);

CREATE TABLE commentaries (
  id_comment INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  text_content TEXT,
  commented DATETIME NOT NULL,
  id_user INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_user) REFERENCES users(id_user)
);

CREATE TABLE users_games (
  id_user_game INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  id_user INT UNSIGNED NOT NULL,
  id_game INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_user) REFERENCES users(id_user),
  FOREIGN KEY (id_game) REFERENCES games(id_game)
);



CREATE TABLE posts_commentaries (
  id_post_comment INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  id_post INT UNSIGNED NOT NULL,
  id_comment INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_post) REFERENCES posts(id_post),
  FOREIGN KEY (id_comment) REFERENCES commentaries(id_comment)
);