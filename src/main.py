import streamlit as st

st.title('This is a title')

st.button('Click me', on_click=lambda: st.write('Hello'))

st.info('This is an info message')
