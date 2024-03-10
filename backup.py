# Import the necessary library
import pymysql

# Function to connect to the database
def connect_to_database():
    # Connect to the database (adjust parameters as necessary)
    try:
        connection = pymysql.connect(host='localhost',  # The hostname where our database server is running
                                     user='root',       # our database username
                                     password='9547@Tjc19',   # our database password
                                     db='eduresource',    # our database name
                                     charset='utf8mb4',     # Character set
                                     cursorclass=pymysql.cursors.DictCursor)  # Cursor type
        print("Connected to database successfully")
        return connection
    except Exception as e:
        print(f"An error occurred while connecting to the database: {e}")
        return None

# Function to query the database and return a subset of data
def query_database(connection):
    try:
        with connection.cursor() as cursor:
            # Define the SQL query
            query = "SELECT * FROM StudentPopulation LIMIT 10;"  # Example query
            cursor.execute(query)
            
            # Fetch the results
            results = cursor.fetchall()
            return results
    except Exception as e:
        print(f"An error occurred while querying the database: {e}")
        return None

# Function to display and save the results
def save_and_display_results(results):
    # Open a text file to save the results
    with open("database_report.txt", "w") as file:
        for row in results:
            # Convert the row to a string and write to the file
            line = ', '.join(f"{key}: {value}" for key, value in row.items())
            file.write(line + "\n")
            # Print the row to the console
            print(line)

# Main function to run the program
def main():
    connection = connect_to_database()
    if connection:
        results = query_database(connection)
        if results:
            save_and_display_results(results)
        connection.close()

if __name__ == "__main__":
    main()