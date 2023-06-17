# *** Settings *** SQL Server pip install mysql-connector-python
# Documentation   Exemplo de conexão com banco de dados SQL Server
# Library         DatabaseLibrary

# *** Variables ***
# ${DB_HOST}      Driver={SQL Server};Server=GUILHERME;Database=TOTVSADV;Uid=PROPRIETARIO;Pwd=Aula$77;
# ${DB_NAME}      GUILHERME
# ${DB_USER}      PROPRIETARIO
# ${DB_PASSWORD}  Aula$77

# *** Test Cases ***
# Exemplo de conexão com banco de dados SQL Server pip install pyodbc
   # Connect To Database    pyodbc    ${DB_HOST}    ${DB_NAME}    ${DB_USER}    ${DB_PASSWORD}
   # ${result}    Query    SELECT * FROM mytable
   # Log Many    ${result}
   # Disconnect From Database

# *** Settings *** MySQL
# Documentation   Exemplo de conexão com banco de dados MySQL
# Library         DatabaseLibrary

# *** Variables ***
# ${DB_HOST}      localhost
# ${DB_PORT}      3306
# ${DB_NAME}      mydatabase
# ${DB_USER}      myuser
# ${DB_PASSWORD}  mypassword

# *** Test Cases ***
# Exemplo de conexão com banco de dados MySQL
   #Connect To Database    mysql-connector-python    ${DB_HOST}    ${DB_NAME}    ${DB_USER}    ${DB_PASSWORD}    ${DB_PORT}
   #${result}    Query    SELECT * FROM mytable
   #Log Many    ${result}
   #Disconnect From Database