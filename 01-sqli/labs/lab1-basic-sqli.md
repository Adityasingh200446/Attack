\# Lab 1: Basic SQL Injection



\## 🎯 Goal



Understand how SQL queries can be manipulated.



\## 🔍 Vulnerability



User input is directly included in SQL query without validation.



\##  Approach



\* Tested input field with special characters

\* Observed application response

\* Identified improper query handling



\##  Payload Example



' OR '1'='1



\##  Result



Application returned unintended data.



\## 🛡️ Prevention



\* Use parameterized queries

\* Validate input

\* Avoid dynamic SQL queries







