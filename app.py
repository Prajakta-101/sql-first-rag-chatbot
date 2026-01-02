import streamlit as st
import duckdb
import pandas as pd

st.title("🦆 SQL-First RAG Chatbot - AmerEquity Analytics")

# Load your data
@st.cache_data
def load_data():
    con = duckdb.connect("data/ae_sales.duckdb")
    return con

con = load_data()

# SQL query selector
sql_files = [f for f in os.listdir("sql/") if f.endswith(".sql")]
selected_query = st.selectbox("Pick SQL query:", sql_files)

if selected_query:
    with open(f"sql/{selected_query}", "r") as f:
        query = f.read()
    
    if st.button("🚀 Run Query"):
        df = con.execute(query).df()
        st.dataframe(df)
        st.download_button("📥 Download CSV", df.to_csv(), "query_results.csv")

