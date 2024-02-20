Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 24
Server version: 8.0.36 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
6 rows in set (2.77 sec)

mysql> create database ISGI ;
Query OK, 1 row affected (1.57 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| isgi               |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
7 rows in set (0.01 sec)

mysql> use ISGI ;
Database changed
mysql> show tables;
Empty set (1.23 sec)

mysql> create  table stagiaire(
    -> code int,
    -> full_name varchar(30),
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 4
mysql> create table (code int  , full_name varchar(30));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(code int  , full_name varchar(30))' at line 1
mysql> create table (code int, full_name varchar(30));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(code int, full_name varchar(30))' at line 1
mysql> create table stagiare(code int  , full_name varchar(30));
Query OK, 0 rows affected (2.45 sec)

mysql> show tables;
+----------------+
| Tables_in_isgi |
+----------------+
| stagiare       |
+----------------+
1 row in set (0.05 sec)

mysql> desc stagiare;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| code      | int         | YES  |     | NULL    |       |
| full_name | varchar(30) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.35 sec)

mysql> insert into stagiare
    -> values(1,"madani kabour");
Query OK, 1 row affected (0.52 sec)

mysql> select * from stagiare ;
+------+---------------+
| code | full_name     |
+------+---------------+
|    1 | madani kabour |
+------+---------------+
1 row in set (0.04 sec)

mysql> insert into stagiare
    -> values (2,"fatmi hassan");
Query OK, 1 row affected (0.22 sec)

mysql> select*from stagiare;
+------+---------------+
| code | full_name     |
+------+---------------+
|    1 | madani kabour |
|    2 | fatmi hassan  |
+------+---------------+
2 rows in set (0.00 sec)

mysql> alter table stagiare
    -> add column cin varchar(10)
    -> after  code;
Query OK, 0 rows affected (1.40 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc stagiare;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| code      | int         | YES  |     | NULL    |       |
| cin       | varchar(10) | YES  |     | NULL    |       |
| full_name | varchar(30) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.03 sec)

mysql> alter table stagiare
    -> add column first_name  varchar(10);
Query OK, 0 rows affected (1.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc stagiare;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| code       | int         | YES  |     | NULL    |       |
| cin        | varchar(10) | YES  |     | NULL    |       |
| full_name  | varchar(30) | YES  |     | NULL    |       |
| first_name | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.03 sec)

mysql> alter table stagiare
    -> drop column  cin  ;
Query OK, 0 rows affected (0.44 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc stagiare;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| code       | int         | YES  |     | NULL    |       |
| full_name  | varchar(30) | YES  |     | NULL    |       |
| first_name | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table stagiare
    -> rename full_name to last_name;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'to last_name' at line 2
mysql> alter table stagiare
    -> rename column full_name to last_name;
Query OK, 0 rows affected (0.56 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc  stagiare;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| code       | int         | YES  |     | NULL    |       |
| last_name  | varchar(30) | YES  |     | NULL    |       |
| first_name | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> alter table stagiare
    -> modify column last_name varchar (15);
Query OK, 2 rows affected (2.23 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> desc stagiare;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| code       | int         | YES  |     | NULL    |       |
| last_name  | varchar(15) | YES  |     | NULL    |       |
| first_name | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> drop table stagiare;
Query OK, 0 rows affected (0.34 sec)

mysql> show tables ;
Empty set (0.00 sec)

mysql> create table stagiaire;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> create table stagiaire
    -> values(id int, name varchar(10));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(id int, name varchar(10))' at line 2
mysql> create table  stagiare
    -> id int ,
    -> name varchar(10);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'id int ,
name varchar(10)' at line 2
mysql> create table stagiaire( id int, name varchar(10));
Query OK, 0 rows affected (0.57 sec)

mysql> show tables;
+----------------+
| Tables_in_isgi |
+----------------+
| stagiaire      |
+----------------+
1 row in set (0.02 sec)

mysql> desc stagiaire;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | YES  |     | NULL    |       |
| name  | varchar(10) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> alter table stagiaire
    -> modify column name varchar(10) not null;
Query OK, 0 rows affected (4.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc stagiaire ;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | YES  |     | NULL    |       |
| name  | varchar(10) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> insert into stagiaire
    -> values(1,"farah");
Query OK, 1 row affected (0.11 sec)

mysql> select* from stagiaire;
+------+-------+
| id   | name  |
+------+-------+
|    1 | farah |
+------+-------+
1 row in set (0.00 sec)

mysql> insert into stagiaire
    -> values(2,null)
    -> ;
ERROR 1048 (23000): Column 'name' cannot be null
mysql> insert into  stagiaire
    -> values(null , "qdoura");
Query OK, 1 row affected (0.13 sec)

mysql> select * from  stagiaire;
+------+--------+
| id   | name   |
+------+--------+
|    1 | farah  |
| NULL | qdoura |
+------+--------+
2 rows in set (0.00 sec)

mysql> alter table stagiaire
    -> modify column  id varchar(10) not  null;
ERROR 1265 (01000): Data truncated for column 'id' at row 2
mysql> alter table stagiare
    -> modify  id  not null;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'not null' at line 2
mysql> alter  table stagiaire
    -> modify column  id int not  null;
ERROR 1138 (22004): Invalid use of NULL value
mysql> alter table stagiaire
    -> modify  id varchar (10)  not null;
ERROR 1265 (01000): Data truncated for column 'id' at row 2
mysql> desc stagiarire;
ERROR 1146 (42S02): Table 'isgi.stagiarire' doesn't exist
mysql> desc stagiaire;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | YES  |     | NULL    |       |
| name  | varchar(10) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> alter table stagiaire
    -> modify  id int not null;
ERROR 1138 (22004): Invalid use of NULL value
mysql> alter table  stagiaire
    -> modify column id int not null;
ERROR 1138 (22004): Invalid use of NULL value
mysql> update stagiaire
    -> set id=2
    -> where name="qdoura";
Query OK, 1 row affected (0.18 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select* from stagiaire;
+------+--------+
| id   | name   |
+------+--------+
|    1 | farah  |
|    2 | qdoura |
+------+--------+
2 rows in set (0.00 sec)

mysql> desc stagiaire;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | YES  |     | NULL    |       |
| name  | varchar(10) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> alter table stagiaire
    -> modify column id int not null;
Query OK, 0 rows affected (1.35 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc stagiaire;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | NO   |     | NULL    |       |
| name  | varchar(10) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.06 sec)

mysql> alter table stagiaire
    -> modify column id varchar(10);
Query OK, 2 rows affected (1.95 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> desc stagiaire;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(10) | YES  |     | NULL    |       |
| name  | varchar(10) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> alter table stagiaire
    -> modify column id varchar(10) unique;
Query OK, 0 rows affected (1.68 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc stagiaire;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(10) | YES  | UNI | NULL    |       |
| name  | varchar(10) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql>
