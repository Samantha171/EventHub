# EventHub – Event Management System

## Overview
EventHub is a database-driven Event Management System designed to manage event details, volunteers, participants, sponsors, registrations, venues, departments, contests, and finances.  
The project focuses on strong backend design using SQL tables, relationships, stored procedures, triggers, and automated calculations.

---

## Key Features
- Comprehensive MySQL database with all event-related entities  
- Stored procedures for validation and availability checking  
- Triggers for automatic updates (e.g., total income, profit/loss)  
- ER Diagram and DFDs for better system understanding  
- Sample dataset included for testing  
- Well-structured SQL scripts for easy execution  

---

## Folder Structure

```
eventhub/
├── .idea/ # IDE project settings (PyCharm/VSCode)
├── dbms/ # Main Django project folder
│ ├── dbms/ # Django settings, URLs, WSGI
│ ├── newapp/ # User-created Django app (models, views)
│ ├── venv/ # Python virtual environment
│ ├── db.sqlite3 # Development SQLite database (unused now)
│ ├── manage.py # Django project manager
│ ├── models.py # Additional model references / scripts
├── main.py # Additional Python script (utility/custom)
└── README.md # Project documentation
```

---

## Technologies Used
- **MySQL**
- **SQL** (stored procedures & triggers)
- **SQL Workbench**
- **Draw.io** for ERD & DFD creation

---

## Conclusion
EventHub showcases a well-designed backend system with a complete relational database, constraints, and procedural logic.  
It demonstrates strong DBMS skills, SQL optimization, and real-world event-management workflow automation.

---
