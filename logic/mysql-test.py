import mysql.connector

cnx = mysql.connector.connect(user='gsuser', password='gsuser_pass', host='127.0.0.1', database='goldensun')

#everything will look like this?
testcrs = cnx.cursor()

query = "SELECT name, element, game FROM DJINNI WHERE element = %s"

element = "mercury"

testcrs.execute(query, (element,))
#testcrs.execute(oldquery)

for (a,b,c) in testcrs:
    #print a,b
    #num += b
    #print num
    print("{} is a {} djinni from game {}".format(a, b, c))

#testcrs.close()
#cnx.close()
