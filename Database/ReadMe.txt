Install MySQL Workbench on Linux or Windows machine.

http://www.mysql.com/products/workbench/ 

Open MySQL Workbench, and go to the 'Scripting-> Install Plugin / Module "menu 
then, from the open file window open as filetype: lua files, and load ExportSQLite.grt.lua. 
Then restart MySQL Workbench. 
Now open MySQL Workbench again, and then open the file PeopleCounter.mwb. 
You can now create a SQL script that is suitable for use Sqlite via the menu: 
Plugins-> Utilities-> Export SQLite CREATE script, and save it to PeopleCounter.sql.