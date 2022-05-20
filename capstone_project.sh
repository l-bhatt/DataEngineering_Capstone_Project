hdfs dfs -rm -r /user/anabig114233/capstone/warehouse/departments/*
hdfs dfs -rm -r /user/anabig114233/capstone/warehouse/dept_emp/*
hdfs dfs -rm -r /user/anabig114233/capstone/warehouse/dept_manager/*
hdfs dfs -rm -r /user/anabig114233/capstone/warehouse/salaries/*
hdfs dfs -rm -r /user/anabig114233/capstone/warehouse/employees/*
hdfs dfs -rm -r /user/anabig114233/capstone/warehouse/titles/*


sqoop import --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114233 --username anabig114233 --password Bigdata123  --table salaries --as-parquetfile  --target-dir /user/anabig114233/capstone/warehouse/salaries -m 1 --driver com.mysql.jdbc.Driver 
sqoop import --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114233 --username anabig114233 --password Bigdata123  --table titles --as-parquetfile  --target-dir /user/anabig114233/capstone/warehouse/titles -m 1 --driver com.mysql.jdbc.Driver 
sqoop import --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114233 --username anabig114233 --password Bigdata123  --table employees --as-parquetfile  --target-dir /user/anabig114233/capstone/warehouse/employees -m 1 --driver com.mysql.jdbc.Driver 
sqoop import --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114233 --username anabig114233 --password Bigdata123  --table dept_manager --as-parquetfile  --target-dir /user/anabig114233/capstone/warehouse/dept_manager -m 1 --driver com.mysql.jdbc.Driver 
sqoop import --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114233 --username anabig114233 --password Bigdata123  --table dept_emp --as-parquetfile  --target-dir /user/anabig114233/capstone/warehouse/dept_emp -m 1 --driver com.mysql.jdbc.Driver 
sqoop import --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114233 --username anabig114233 --password Bigdata123  --table departments --as-parquetfile  --target-dir /user/anabig114233/capstone/warehouse/departments -m 1 --driver com.mysql.jdbc.Driver 
