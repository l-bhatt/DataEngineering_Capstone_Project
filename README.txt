1)Login to mysql
mysql -u anabig114233 -pBigdata123

2)show databases;
use anabig114233;

3) run the following command to get the table created

source table_creation.sql

4) Database creation over HDFS

 hive -f hive.sql


5>) queries to be performed 

 impala-shell -f impala.sql > output.txt





