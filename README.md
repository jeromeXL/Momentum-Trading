Momentum Trading Strategy
Overview
This project implements a long-short momentum trading strategy using monthly stock data from the CRSP database. The strategy identifies stocks with the highest and lowest momentum, constructs a portfolio by investing in the top decile ("winners") and shorting the bottom decile ("losers"), and calculates the cumulative returns of the portfolio over time.

Steps
Data Import: Load CRSP data from crsp20042008.csv.
Data Preparation: Convert DateOfObservation into datenum, year, and month formats for easier manipulation.
Momentum Calculation: Write a function to compute the 11-month cumulative return for each stock.
Momentum Returns: Identify top and bottom momentum deciles and calculate equal-weighted returns.
Cumulative Returns: Compute the cumulative net return of the long-short momentum portfolio, treating missing values as zero.

Usage
Clone the repository and ensure you have the required datasets and MATLAB/Python environment set up.
Follow the step-by-step functions to compute momentum and analyze portfolio performance.

Requirements
MATLAB or Python environment
crsp20042008.csv dataset for testing
