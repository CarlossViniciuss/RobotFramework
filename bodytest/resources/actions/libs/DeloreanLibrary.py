import psycopg2
from logging import info
class DeloreanLibrary():

    def connect(self):
        return psycopg2.connect(
            host='ec2-18-209-153-180.compute-1.amazonaws.com', 
            database='da55naurer6de6',
            user='wvxegdesuajiof',
            password='0c19e04562d6f3e679639baf8baf57c1ec7e7ea871199f4f3e6803c9078e7dfc'
        )

	# No Robot Vira uma Keyword automaticamente -> Remove Student   email@desejado
    def remove_student(self, email):

        query = "delete from students where email = '{}'".format(email)
        info(query)

        conn = self.connect()

        cur = conn.cursor()
        cur.execute(query)
        conn.commit()
        conn.close()

    def insert_student(self, student):

        self.remove_student(student['email'])

        query = ("insert into students (name, email, age, weight, feet_tall, created_at, updated_at)"
            "values('{}','{}',{},{},{}, NOW(), NOW());"
            .format(student['name'], student['email'],student['age'],student['weight'], student['feet_tall'])
        )

        info(query)

        conn = self.connect()

        cur = conn.cursor()
        cur.execute(query)
        conn.commit()
        conn.close()