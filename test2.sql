Enter password: **********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
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
| isgi               |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
7 rows in set (0.03 sec)

mysql> create database bdtest;
Query OK, 1 row affected (0.64 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| bdtest             |
| information_schema |
| isgi               |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
8 rows in set (0.00 sec)

mysql> use bdtest
Database changed
mysql> show tables;
Empty set (0.05 sec)

mysql> drop  database bdest;
ERROR 1008 (HY000): Can't drop database 'bdest'; database doesn't exist
mysql> drop  database bdtest;
Query OK, 0 rows affected (0.81 sec)

mysql> exit
