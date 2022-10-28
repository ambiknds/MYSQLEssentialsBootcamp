CREATE TABLE `user`(
    `user_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(255) NOT NULL,
    `username` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `user` ADD PRIMARY KEY `user_user_id_primary`(`user_id`);
ALTER TABLE
    `user` ADD UNIQUE `user_email_unique`(`email`);
ALTER TABLE
    `user` ADD UNIQUE `user_username_unique`(`username`);
CREATE TABLE `posts`(
    `post_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `caption` TEXT NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `user_id` INT NOT NULL
);
ALTER TABLE
    `posts` ADD PRIMARY KEY `posts_post_id_primary`(`post_id`);
CREATE TABLE `messages`(
    `messages_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `messages` TEXT NOT NULL,
    `user_id` INT NOT NULL
);
ALTER TABLE
    `messages` ADD PRIMARY KEY `messages_messages_id_primary`(`messages_id`);
CREATE TABLE `stories`(
    `stories_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `stories` TEXT NOT NULL,
    `user_id` INT NOT NULL
);
ALTER TABLE
    `stories` ADD PRIMARY KEY `stories_stories_id_primary`(`stories_id`);
ALTER TABLE
    `messages` ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY(`user_id`) REFERENCES `user`(`user_id`);
ALTER TABLE
    `posts` ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY(`user_id`) REFERENCES `user`(`user_id`);
ALTER TABLE
    `stories` ADD CONSTRAINT `stories_user_id_foreign` FOREIGN KEY(`user_id`) REFERENCES `user`(`user_id`);