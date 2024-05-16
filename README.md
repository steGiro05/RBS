# RBS

- [Introduction](#introduction)
- [Concept](#concept)
- [Structure](#structure)
- [Run the project](#how-to-install-and-run-the-project)

## Introduction

Welcome to RBS, an innovative news platform that redefines the traditional concept of digital journalism.

## Concept

RBS stands for Reader-Built Stories, a revolutionary approach to online news where every authorized user has the power to contribute and create compelling journalistic content.

## Structure

### RBS news

The RBS News application is built using React and Next.js for the frontend, and MySQL serves as the database to store news articles and user-related data. It features various functionalities such as displaying news content, user authentication, and interactions.

### RBS sort

RBS Sort is an algorithm designed for sorting articles based on user interactions. It's written in Python and operates on a Flask server.

## How to install and run the project

### Prerequisites

Before running the project, ensure that you have Node.js and Python installed on your computer.

### Database setup

1. Upload the `db.sql` file to your DBMS.
2. Edit the `db.js` file located in `/RBS_news/src/util` with your database connection info.

### Next.js server setup

1. Open a new terminal and navigate to the `RBS_news` folder.
2. Install all the dependencies with the following command:

   ```bash
   npm install
   ```

   or

   ```bash
   npm i
   ```

3. Start the server with the following command:

   ```bash
   npm run dev
   ```

4. Ensure the server is running on port 3000. If not, modify the URLs in the code to match your server's port.

### Flask server setup

1. Open a new terminal and navigate to the `RBS_sort` folder.
2. Run the following command to install all the dependencies:

   ```bash
   pip install -r requirements.txt
   ```

   or

   ```bash
   pip3 install -r requirements.txt
   ```

3. Run the Flask server with the command:

   ```bash
   python main.py
   ```

   or

   ```bash
   python3 main.py
   ```

4. Ensure the server is running on port 5000. If not, modify the URLs in the code to match your server's port.

## Future Functionalities

In our future updates, we plan to enhance our sorting algorithm. Our team is actively working on replacing the current sorting algorithm with a Linear Machine Learning Model. For this, we will be utilizing the Python library `sklearn`.
