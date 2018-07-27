import psycopg2
import psycopg2.extras

from flask import Flask, render_template, request
app = Flask(__name__)


def connectToDB():
  connectionString = 'dbname=diary user=postgres password=123456 host=localhost'
  #connectionString = 'dbname=music user=music password=2Vk0H39RLW6fA14GVd host=localhost'
  print (connectionString)
  try:
    return psycopg2.connect(connectionString)
  except:
    print("Can't connect to database")


@app.route('/', methods=['GET', 'POST'])
def mainIndex():
  """rows returned from postgres are a python dictionary (can
  also be treated as an ordered list)"""
  conn = connectToDB()
  cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)
  if request.method == 'POST':
    # add new entry into database
    try:
      cur.execute("""INSERT INTO entries (title, entry) 
       VALUES (%s, %s);""",
       (request.form['title'], request.form['entry']) )
    except:
      print("ERROR inserting into entries")
      print("Tried: INSERT INTO entries (title, entry) VALUES ('%s', '%s');" %
        (request.form['title'], request.form['entry']) )
      conn.rollback()
    conn.commit()

  try:
    cur.execute("select title, entry from entries")
  except:
    print("Error executing select")
  results = cur.fetchall()
  print (results)
  for r in results:
    print (r['title'])
  return render_template('index.html', entries=results)


if __name__ == '__main__':
    app.debug=True
    app.run(host='127.0.0.1', port=5000)
