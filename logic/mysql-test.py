import mysql.connector

cnx = mysql.connector.connect(user='gsuser', password='gsuser_pass', host='127.0.0.1', database='goldensun')

test = cnx.cursor()

query = "SELECT * FROM DJINNI"

test.execute(query)

test.close()
cnx.close()
