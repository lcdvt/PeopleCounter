REM Delete old database file if present
rm PeopleCounter.db3

REM Create the database
cat PeopleCounter.sql | sqlite3.exe PeopleCounter.db3

REM Configure the database for Write-Ahead Logging 
cat DbConfig\DbConfig.sql | sqlite3.exe PeopleCounter.db3