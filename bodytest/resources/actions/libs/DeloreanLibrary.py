import psycopg2

class DeloreanLibrary():

	# No Robot Vira uma Keyword automaticamente -> Remove Student   email@desejado
    def remove_student(self, email):

        query = "delete from students where email = '{}'".format(email)

        conn = psycopg2.connect(
            host='ec2-18-209-153-180.compute-1.amazonaws.com', 
            database='da55naurer6de6',
            user='wvxegdesuajiof',
            password='0c19e04562d6f3e679639baf8baf57c1ec7e7ea871199f4f3e6803c9078e7dfc'
        )

        cur = conn.cursor()
        cur.execute(query)
        conn.commit()
        conn.close()
