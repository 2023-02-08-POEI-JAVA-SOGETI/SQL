# Correction exercice 5

1. `mysql -u root -p;`

`CREATE DATABASE test`;

2.  `CREATE USER 'glodie'@'localhost' IDENTIFIED BY 'password';
GRANT INSERT, UPDATE ON `test`.* TO 'glodie'@'localhost' WITH GRANT OPTION;

3. `CREATE USER 'tshimini'@'localhost' IDENTIFIED BY 'password';
GRANT INSERT, UDELETE ON `test`.* TO 'glodie'@'localhost';