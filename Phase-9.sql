-- Phase 09

create user 'john_doe'@'localhost' IDENTIFIED BY 'johndoe2000johndoe';
show grants for 'john_doe'@'localhost';
flush privileges;

REVOKE all privileges ON *.* FROM 'john_doe'@'localhost';

GRANT select ON *.* TO 'john_doe'@'localhost';