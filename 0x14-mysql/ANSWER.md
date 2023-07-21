1. Install SQL on you server
2.






To create a MySQL user named `holberton_user` on both web-01 and web-02 web servers, with the host name set to `localhost` and the password `projectcorrection280hbtn`, you can follow these steps:

### 1. Connect to the MySQL shell on web-01:
```
web-01:~$   sudo mysql -u root -p
Enter password:

Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 6
Server version: 5.7.42-log MySQL Community Server (GPL)

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
mysql>

```

### 2. Create the user `holberton_user` and set the password:
```
mysql> CREATE USER 'holberton_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'projectcorrection280hbtn';
```

* [TO check if the database name mysql exist]
```
mysql> SHOW DATABASES;
```

* [TO check if the user has been created in mysql database]
```
mysql> SELECT user FROM mysql.user;
```

### 3. Grant the necessary privileges to the user to check primary/replica status:
```
mysql> GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost';
```

### 4. Flush privileges to apply the changes:
```
mysql>    FLUSH PRIVILEGES;
```
### 5. To check if the privilage has been granted succefully:
```
mysql> SHOW GRANTS FOR 'holberton_user'@'localhost';
```
OR 
```
web-01:~$ mysql -uholberton_user -p -e "SHOW GRANTS FOR 'holberton_user'@'localhost'"
```
## Repeat 1 to 5 steps above on web-02 to create the `holberton_user` with the same credentials.









To create the database named `tyrell_corp`, the table named `nexus6`, and add at least one entry to it, as well as granting `holberton_user` SELECT permissions on the table, you can follow these steps:

### 1. Connect to the MySQL shell on web-01:
```
web-01:~$   sudo mysql -u root -p
Enter password:

Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 6
Server version: 5.7.42-log MySQL Community Server (GPL)

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
mysql>
```

### 2. Create the `tyrell_corp` database:
```
mysql>  CREATE DATABASE tyrell_corp;
```

### 3. Switch to the `tyrell_corp` database:
```
mysql> USE tyrell_corp;
```

### 4. Create the `nexus6` table with desired columns (e.g., `id`, `name`, `model`, etc.):
```
mysql> CREATE TABLE nexus6 (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(50));
```

### 5. Insert at least one entry into the `nexus6` table:
```
mysql> INSERT INTO nexus6 (name) VALUES ('Whatever you want');
```

### 6. Grant `holberton_user` SELECT permissions on the `nexus6` table:
```
mysql> GRANT SELECT ON tyrell_corp.nexus6 TO 'holberton_user'@'localhost';
```

### 7. Flush privileges to apply the changes:
```
mysql> FLUSH PRIVILEGES;
```

## NOTE: DONT Repeat 1 to 7 steps above on web-02 to create the `holberton_user` with the same credentials.







mysql> CREATE USER 'replica_user'@'%' IDENTIFIED WITH mysql_native_password BY 'replicapassword';

