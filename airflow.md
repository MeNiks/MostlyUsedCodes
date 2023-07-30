```
>python3 --version //Python 3.11.3
>cd AirflowTutorial
>python3 -m venv py_env
>source py_env/bin/activate
In below command rename constraints-3.11.txt 3.11 with the python version, just use major and minor version ex- with version 3.11.3 use 3.11
>pip install 'apache-airflow==2.6.3' \
 --constraint "https://raw.githubusercontent.com/apache/airflow/constraints-2.6.3/constraints-3.11.txt"
>export AIRFLOW_HOME=.
Create SQLite Database
>airflow db init
Start Webserver
>airflow webserver -p 8080
Create User
>airflow users create --username admin --firstname firstname --lastname lastname --role Admin --email admin@domain.com
```


```
Run airflow in docker


```
