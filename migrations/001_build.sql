PRAGMA foreign_keys = ON;

CREATE TABLE authors (
  id    INTEGER PRIMARY KEY,
  name  TEXT  NOT NULL
);

CREATE TABLE genres (
  id    INTEGER PRIMARY KEY,
  name  TEXT NOT NULL
);

CREATE TABLE books (
  id          INTEGER PRIMARY KEY,
  title       TEXT NOT NULL,
  author      INTEGER NOT NULL,
  finished_at TEXT,
  FOREIGN KEY (author)
    REFERENCES authors (id)
);

CREATE TABLE book_genres (
  book_id   INTEGER NOT NULL,
  genre_id  INTEGER NOT NULL,
  FOREIGN KEY (book_id)
    REFERENCES books (id),
  FOREIGN KEY (genre_id)
    REFERENCES genres (id)
);

CREATE TABLE db_version (
  version INTEGER NOT NULL
);

INSERT INTO db_version (version) VALUES (1);
