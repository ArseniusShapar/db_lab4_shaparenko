import psycopg2
from tabulate import tabulate

username = 'arseniy'
password = 'pink_floyd'
database = 'db_lab3_shaparenko'
host = 'localhost'
port = '5432'

query_1 = '''SELECT eco, opening_name, COUNT(game_id) AS games_count FROM games RIGHT JOIN openings USING(eco) GROUP BY eco;'''
query_2 = '''SELECT (SELECT COUNT(*) FROM games WHERE winner = 'white') AS white_wins, 
	                (SELECT COUNT(*) FROM games WHERE winner = 'black') AS black_wins,
	                (SELECT COUNT(*) FROM games WHERE winner = 'draw') AS draws;'''
query_3 = '''SELECT rating, SUM(wins) AS wins FROM 
            (SELECT rating, (SELECT COUNT(*) FROM games 
				WHERE (white_player = player_id AND winner = 'white') OR (black_player = player_id AND winner = 'black')) AS wins FROM players) AS r
            GROUP BY rating
            ORDER BY rating;'''


def main():
    connection = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

    with connection.cursor() as cursor:
        # Query 1
        cursor.execute(query_1)
        response = cursor.fetchall()
        print(tabulate(response, headers=['eco', 'opening_name', 'games_count']))
        print()

        # Query 2
        cursor.execute(query_2)
        response = cursor.fetchall()
        print(tabulate(response, headers=['white_wins', 'black_wins', 'draws']))
        print()

        # Query 3
        cursor.execute(query_3)
        response = cursor.fetchall()
        print(tabulate(response, headers=['rating', 'wins']))


if __name__ == '__main__':
    main()
