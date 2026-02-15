# 🎓 Campus Placement Portal

> A Full-Stack Java Web Application for Managing Campus Placements  
> Built using Servlets, JSP, JDBC, MySQL, and MVC Architecture  
> Developed using Spring Tool Suite (STS) as a Dynamic Web Project.

---

## 📌 Overview

The **Campus Placement Portal** is a role-based web application designed to automate and manage the complete college placement lifecycle.

It provides a centralized platform where:

- 👨‍🎓 Students can explore and apply for jobs  
- 🏢 Companies can post job openings  
- 👨‍💼 Placement Officers/Admin can monitor and manage the process  

This system eliminates manual coordination and ensures a smooth and transparent placement workflow.

---

## 🚀 Key Features

### 👨‍🎓 Student Module
- Secure Registration & Login
- Edit and Update Profile
- View Approved Job Listings
- Apply for Jobs
- Track Application Status
- Personal Dashboard

### 🏢 Company Module
- Company Registration & Login
- Post New Job Opportunities
- View Applied Students
- Track Hiring Status

### 👨‍💼 Admin / Placement Officer Module
- Approve / Reject Company Registrations
- Approve / Reject Job Postings
- Monitor Placement Activities
- Manage Users and Records

---

## 🏗️ Architecture

This project follows the **MVC (Model–View–Controller)** design pattern.

### 🔹 Model
- Java Beans (POJO Classes)
- DAO Layer
- JDBC for Database Connectivity
- MySQL Database

### 🔹 View
- JSP Pages
- Tailwind CSS
- Responsive Dashboard UI
- Toast Notifications

### 🔹 Controller
- Java Servlets
- Request Handling
- Business Logic Processing

This architecture ensures:
- Separation of Concerns
- Clean Code Structure
- Easy Maintenance
- Scalability

---

## 🛠️ Tech Stack

| Technology      | Role |
|---------------|------|
| Java           | Core Backend Logic |
| Servlets       | Controller Layer |
| JSP            | View Layer |
| JDBC           | Database Connectivity |
| MySQL          | Relational Database |
| Tailwind CSS   | UI Styling |
| SLF4J          | Logging |
| Apache Tomcat  | Application Server |
| STS            | Development Environment |

---

## 🗄️ Database Schema

The system uses a relational database (MySQL) with properly structured tables and relationships.

---

### 📌 student

| Column | Type | Description |
|--------|------|------------|
| student_id | INT (PK, AI) | Unique Student ID |
| prn | BIGINT | Unique PRN Number |
| first_name | VARCHAR(50) | Student First Name |
| last_name | VARCHAR(50) | Student Last Name |
| address | VARCHAR(100) | Address |
| contact | BIGINT | Contact Number |
| email | VARCHAR(100) | Email Address |
| program_id | INT (FK) | Program Reference |
| bachelor_cgpa | DECIMAL(4,2) | UG CGPA |
| postgrad_cgpa | DECIMAL(4,2) | PG CGPA |
| ssc_percentage | DECIMAL(5,2) | 10th Percentage |
| hsc_percentage | DECIMAL(5,2) | 12th Percentage |

---

### 📌 company

| Column | Type | Description |
|--------|------|------------|
| company_id | INT (PK, AI) | Unique Company ID |
| name | VARCHAR(100) | Company Name |
| representative | VARCHAR(100) | Company Representative |
| contact | BIGINT | Contact Number |
| email | VARCHAR(100) | Email Address |
| address | VARCHAR(45) | Company Address |
| website | VARCHAR(45) | Company Website |
| status | VARCHAR(10) | Approval Status |
| prn | BIGINT | Linked Login PRN |

---

### 📌 jobopening

| Column | Type | Description |
|--------|------|------------|
| job_id | INT (PK, AI) | Unique Job ID |
| company_id | INT (FK) | Company Reference |
| role | VARCHAR(50) | Job Role |
| description | VARCHAR(255) | Job Description |
| vacancy | INT | Total Vacancies |
| openings | INT | Current Openings |
| approval_status | VARCHAR(50) | Job Approval Status |
| location | VARCHAR(255) | Job Location |
| type | VARCHAR(45) | Job Type (Full-time/Internship) |
| status | VARCHAR(10) | Active/Closed |

---

### 📌 applications

| Column | Type | Description |
|--------|------|------------|
| application_id | INT (PK, AI) | Unique Application ID |
| student_id | INT (FK) | Student Reference |
| job_id | INT (FK) | Job Reference |
| status | VARCHAR(50) | Application Status |

---

### 📌 coordinator

| Column | Type | Description |
|--------|------|------------|
| coordinator_id | INT (PK, AI) | Coordinator ID |
| name | VARCHAR(100) | Coordinator Name |
| contact | BIGINT | Contact Number |
| email | VARCHAR(100) | Email Address |
| program_id | INT (FK) | Program Reference |
| prn | BIGINT | Linked Login PRN |

---

### 📌 program

| Column | Type | Description |
|--------|------|------------|
| program_id | INT (PK, AI) | Program ID |
| name | VARCHAR(50) | Program Name |

---

### 📌 login

| Column | Type | Description |
|--------|------|------------|
| login_id | INT (PK, AI) | Login ID |
| username | VARCHAR(50) | Username |
| password | VARCHAR(255) | Encrypted Password |
| role | VARCHAR(20) | Role (STUDENT / COMPANY / COORDINATOR / ADMIN) |
| prn | BIGINT | Linked User PRN |

---

## 🔗 Entity Relationships

- `student.program_id → program.program_id`
- `coordinator.program_id → program.program_id`
- `jobopening.company_id → company.company_id`
- `applications.student_id → student.student_id`
- `applications.job_id → jobopening.job_id`
- `login.prn → student/company/coordinator.prn`

This ensures proper normalization (3-NF) and relational integrity.

---

## 📂 Project Structure

```
Campus-Placement-Portal/
│
├── src/
│   ├── controller/        # Servlets
│   ├── model/             # Java Beans
│   ├── dao/               # JDBC Data Access Layer
│   ├── util/              # DB Connection & Utilities
│
├── WebContent/
│   ├── # JSP Views

│
├── WEB-INF/
│   ├── web.xml
│
└── README.md
```

---

## 🖥️ Application Server

This project is deployed using:

- **Apache Tomcat 10.1.52**
- Compatible with **Jakarta Servlet API**

> ⚠️ Note: Tomcat 10+ uses `jakarta.*` namespace instead of `javax.*`.  
> Ensure your project dependencies and imports use `jakarta.servlet.*`.

---

## ⚙️ How to Run the Project

### 1️⃣ Clone Repository
```bash
git clone https://github.com/your-username/Campus-Placement-Portal.git
```

### 2️⃣ Setup Database
- Install MySQL
- Create a new database (e.g., `placement_portal`)
- Execute the provided SQL scripts
- Update DB credentials in your `DBConnection` utility class

### 3️⃣ Import Project in STS
- Open **Spring Tool Suite (STS)**
- Import as **Dynamic Web Project**
- Configure **Apache Tomcat 10.1.52** in Servers tab

### 4️⃣ Add Tomcat Runtime (If Not Added)
- Go to:  
  `Window → Preferences → Server → Runtime Environments`
- Add **Apache Tomcat v10.1**
- Select Tomcat 10.1.52 installation directory

### 5️⃣ Run on Server
Right-click project →  
`Run As → Run on Server → Apache Tomcat 10.1.52`

---

## 🌐 Access the Application

```
http://localhost:8080/Campus-Placement-Portal/
```

---

## 📦 Environment Requirements

- Java 17+ (Recommended for Tomcat 10)
- Apache Tomcat 10.1.52
- MySQL 8+
- Spring Tool Suite (STS) / Eclipse IDE

---

## 🔐 Security & Best Practices

- MVC Architecture Implementation
- DAO Pattern for DB Access
- Prepared Statements (Prevents SQL Injection)
- Role-Based Access Control
- Logging using SLF4J
- Controlled JSP Access via Servlets
- Clean Error Handling

---

## 📊 Functional Highlights

- Dynamic Job Listing Fetching
- Apply Button with Toast Notification
- Disable Apply Button After Submission
- Application Status Tracking
- Admin Approval Workflow
- Modern Responsive Dashboard UI

---

## 📈 Learning Outcomes

Through this project, I gained hands-on experience in:

- Building Enterprise Java Web Applications
- Implementing MVC Architecture
- JDBC-Based Database Connectivity
- Designing Relational Database Schema
- Role-Based System Design
- Real-World Placement Workflow Automation

---

## 🎯 Future Enhancements

- Resume Upload & Parsing
- Email Notifications
- Placement Analytics Dashboard
- REST API Version
- JWT Authentication
- Docker Deployment
- Cloud Hosting (AWS)

---

## 👨‍💻 Author

**Yadnyesh Sawant**  
MCA Student – MIT World Peace University  
Java Developer  

---

## ⭐ Support

If you found this project useful, please give it a ⭐ on GitHub!

---

## 📜 License

This project is for academic and learning purposes.
