# EventHub – Event Management System

### Team Members
- **SAMANTHA W** (23PW25)  
- **SHREE SINDHIYA HARSHINI K** (23PW28)

## Overview
EventHub is a database-driven Event Management System designed to manage event details, volunteers, participants, sponsors, registrations, venues, departments, contests, and finances.  
The project focuses on strong backend design using SQL tables, relationships, stored procedures, triggers, and automated calculations.

---

# Key Features

- Event Management : Manage complete event details including event name, dates, department, coordinator information, and contact details. This centralizes all event-related information for easier planning and organization.

- Venue Management : Maintain venue records with attributes such as venue name, block number, capacity, email, and contact information. Helps organizers allocate appropriate venues based on event requirements.

- Department Information System : Store department details including HOD, director, official email, and website. Enables quick access to department information during event coordination.

- Sponsor Handling : Record sponsor details such as sponsor name, sponsored amount, mode of transaction, ratings, address, and contact number. Ensures proper financial tracking and transparency for events.

- Contest Management : Add and manage contests under each event with details like contest name, venue, start time, end time, registration date, and coordinator details. Supports multi-level event structuring.

- Volunteer Management : Maintain volunteer data such as roll number, name, age, contact, event assigned, and department. Helps coordinators allocate volunteers efficiently for different event tasks.

- Participant Registration : Capture and store participant details including name, college, gender, age, contests registered, payment status, and contact information. Simplifies registration tracking and reduces manual effort.

- Finance Tracking : Manage financial data such as event-wise expenses, sponsored amount, registration collection, total income, and profit/loss. Provides a clear financial summary for each event.

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
- **SQL Workbench**
- **Draw.io** for ERD & DFD creation

---

## Conclusion
EventHub showcases a well-designed backend system with a complete relational database, constraints, and procedural logic.  
It demonstrates strong DBMS skills, SQL optimization, and real-world event-management workflow automation.

---
