import mariadb
from fastapi import FastAPI


app = FastAPI()
conn = mariadb.connect(
    user="admin",
    password="test",
    host="51.91.214.189",
    port=14658,
    database="test"
)


@app.get("/test/db", tags=["test"])
async def create_test_table():
    cursor = conn.cursor()
    cursor.execute("CREATE TABLE IF NOT EXISTS test_table (id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(255))")
    conn.commit()
    return {"message": "Test table created successfully."}

@app.get("/test/create_account/{user_name}/{user_mdp}", tags=["test"])
async def create_test_account(user_name: str, user_mdp: str):
    cursor = conn.cursor()
    cursor.execute("CREATE TABLE IF NOT EXISTS test_accounts (id INT PRIMARY KEY AUTO_INCREMENT, username VARCHAR(255), password VARCHAR(255))")
    cursor.execute("INSERT INTO test_accounts (username, password) VALUES (?, ?)" , (user_name, user_mdp))
    conn.commit()
    return {"message": "Test account table created successfully."}