backup:
	mysqldump -u root -p goldensun > backup.sql

connect:
	mysql -u gsuser -p goldensun
