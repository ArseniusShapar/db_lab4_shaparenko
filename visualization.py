import psycopg2
import matplotlib.pyplot as plt

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
        eco, opening_name, games_count = [row[0] for row in response], [row[1] for row in response], [row[2] for row in response]

        # Query 2
        cursor.execute(query_2)
        response = cursor.fetchall()
        white_wins, black_wins, draws = [row[0] for row in response], [row[1] for row in response], [row[2] for row in response]

        # Query 3
        cursor.execute(query_3)
        response = cursor.fetchall()
        rating, wins = [row[0] for row in response], [row[1] for row in response]

        figure, (bar_ax, pie_ax, graph_ax) = plt.subplots(1, 3)

        bar_ax.bar(eco, games_count, label='Total')
        bar_ax.set_title('Кількість партій, в яких був розіграний кожен дебют')
        bar_ax.set_xlabel('Дебюти')
        bar_ax.set_ylabel('Кількість партій')

        pie_ax.pie(white_wins + black_wins + draws,
                   labels=['білі', 'чорні', 'нічия'],
                   autopct='%1.1f%%')
        pie_ax.set_title('Кількість перемог кожної сторони(або нічиїх)')

        graph_ax.plot(rating, wins, marker='o')
        graph_ax.set_xlabel('Рейтинг')
        graph_ax.set_ylabel('Кількість перемог')
        graph_ax.set_title('Графік залежності кількості перемог від рейтингу')
        graph_ax.plot(rating, wins, color='C0')

        mng = plt.get_current_fig_manager()
        mng.resize(1400, 600)
        plt.show()


if __name__ == '__main__':
    main()
