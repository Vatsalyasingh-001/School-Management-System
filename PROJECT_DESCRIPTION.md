# School Management System - SRS

## 1. Introduction

### 1.1 Purpose
The purpose of this document is to provide a detailed specification for the School Management System database project. This project is intended to streamline record-keeping and data management in an educational institution, helping to organize student, teacher, class, attendance, and grading data.

### 1.2 Scope
The School Management System includes functionality for managing student and teacher records, organizing classes and subjects, and recording attendance and grades. It enables administrators and teachers to retrieve and manage data efficiently.

### 1.3 Technologies Used
- SQL for database creation and data management
- SQL-compatible database (e.g., MySQL)

---

## 2. Functional Requirements

### 2.1 Student Management
- **FR1**: The system shall store student information (ID, name, date of birth, class).
- **FR2**: The system shall allow querying students by class.

### 2.2 Teacher Management
- **FR3**: The system shall store teacher details (ID, name, subject taught).
- **FR4**: The system shall link teachers to the subjects they teach.

### 2.3 Subject and Class Management
- **FR5**: The system shall store information about subjects and classes.
- **FR6**: The system shall link classes to teachers for each subject.

### 2.4 Attendance Tracking
- **FR7**: The system shall allow recording of attendance status (Present, Absent, Late).
- **FR8**: The system shall retrieve attendance data by student or class.

### 2.5 Grade Management
- **FR9**: The system shall store and retrieve student grades for each subject.
- **FR10**: The system shall allow querying for average student grades.

---

## 3. Non-Functional Requirements

### 3.1 Reliability
- The system should accurately store and retrieve data with minimal errors.

### 3.2 Usability
- The system should be easy to use with clear SQL scripts and documentation.

### 3.3 Performance
- The system should handle queries efficiently for a database size of typical school records.

---

## 4. Database Design

### 4.1 Schema Diagram
Refer to `docs/SCHEMA_DIAGRAM.png` for a visual overview of the database schema.

### 4.2 Table Descriptions
- **Students**: Stores student details including ID, name, date of birth, and class.
- **Teachers**: Stores teacher information including ID, name, and subject taught.
- **Subjects**: Stores subject details.
- **Classes**: Organizes teachers and subjects for each class.
- **Attendance**: Records attendance status by date.
- **Grades**: Tracks student grades by subject.

---

## 5. Sample SQL Queries
Example queries to interact with the system can be found in `docs/QUESTIONS.md`.

---

## 6. Future Enhancements
- Implementing front-end interfaces for non-SQL users.
- Adding role-based access for different users.
