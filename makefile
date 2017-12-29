connect:
	mysql -u gsuser -p goldensun

backup:
	mysqldump -u root -p goldensun > backup.sql
