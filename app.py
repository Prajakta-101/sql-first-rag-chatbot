import streamlit as st
import duckdb
import pandas as pd
import os

st.title("🦆 SQL-First RAG Chatbot - AmerEquity Demo")

# Connect to DuckDB
@st.cache_data
def get_connection():
    return duckdb.connect("data/ae_sales.duckdb")

con = get_connection()

# Get SQL files
sql_dir = "sql"
if os.path.exists(sql_dir):
    sql_files = [f for f in os.listdir(sql_dir) if f.endswith('.sql')]
    selected_sql = st.selectbox("Choose query:", sql_files)
    
    if selected_sql:
        with open(os.path.join(sql_dir, selected_sql), 'r') as f:
            query = f.read()
        
        if st.button("🚀 Run Query"):
            try:
                df = con.execute(query).df()
                st.dataframe(df)
                st.download_button("📥 CSV", df.to_csv(), "results.csv")
            except Exception as e:
                st.error(f"Query error: {e}")
else:
    st.warning("sql/ folder not found!")
