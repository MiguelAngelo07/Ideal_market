import pandas as pd
import pyodbc

def conectar_sqlserver():
    return pyodbc.connect(
        "DRIVER={SQL Server};SERVER=localhost;DATABASE=mercado_ideal;Trusted_Connection=yes;"
    )

def importar_csv_para_sql(tabela, caminho_csv, conn):
    df = pd.read_csv(caminho_csv)
    cursor = conn.cursor()

    for index, row in df.iterrows():
        colunas = ', '.join(df.columns)
        placeholders = ', '.join(['?'] * len(row))
        sql = f"INSERT INTO {tabela} ({colunas}) VALUES ({placeholders})"
        cursor.execute(sql, tuple(row))
    conn.commit()
