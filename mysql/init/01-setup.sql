-- create databases
CREATE DATABASE IF NOT EXISTS `ess_directus` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- create user and grant rights
CREATE USER IF NOT EXISTS 'ess_user'@'%' IDENTIFIED WITH mysql_native_password BY 'password';
GRANT ALL PRIVILEGES ON `ess\_%`.* TO 'ess_user'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
