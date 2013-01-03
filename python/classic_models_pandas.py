import os
import sqlite3
from pandas.io.sql import read_frame

def here():
    return os.path.abspath(os.path.dirname(__file__))

def read_frame_sql(dbName, sql):
    with sqlite3.connect(dbName
        , detect_types=sqlite3.PARSE_DECLTYPES) as conn:
        frame = read_frame(sql, con=conn)
        return frame

def main():
    dbName = os.path.join(here(), '..', 'db', 'sqlite_cm.db')
    sql = 'select * from employee'

    return read_frame_sql(dbName, sql)
    with sqlite3.connect(dbName) as conn:
        cur = conn.cursor()
        cur.execute(sql)
        print cur.fetchall()
    frame = None

if __name__ == '__main__':
    main()

