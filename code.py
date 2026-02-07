import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="charan",
    password="cha123ran456",
    database="ggg"
)

cursor = conn.cursor()
cursor.execute("SELECT * FROM students")



for row in cursor.fetchall():
    print(row)

conn.close()
