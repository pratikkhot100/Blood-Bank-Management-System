# 🩸 Blood Bank Management System

The Blood Bank Management System is developed to digitally manage and streamline the operations of blood donation and transfusion services. The main goal of this project is to create a user-friendly, reliable, and efficient web-based platform that connects blood donors with recipients and administrators. It aims to overcome the limitations of manual record-keeping by enabling secure data storage, easy donor registration, real-time blood availability checking, and request management. By automating critical tasks and reducing paperwork, the system ensures faster response in emergency situations, promotes voluntary blood donation, and helps maintain an accurate and accessible blood inventory — ultimately contributing to saving lives. ❤️

---

## 🧾 About Blood Bank Management System
The Blood Bank Management System is a dynamic web application designed to streamline and digitize the process of managing blood donations, donor records, and blood request handling. It serves as a centralized platform for administrators and donors, allowing for efficient tracking and management of blood inventory and donation history.

Built using Java (JSP, Servlet) on the backend, integrated with a MySQL database via JDBC, and styled using HTML, CSS, JavaScript, Bootstrap, and JSTL, this system helps eliminate paperwork and manual errors while improving overall accessibility and transparency in blood bank operations.

---

## 🎯 Key Objectives

- To create a simple, efficient system for managing donor records and blood stocks.

- To allow users to request blood and check availability online.

- To provide a secure login system for administrators and donors.

- To ensure easy updates, deletion, and search functionalities for blood data.

- To support real-time decision-making in emergency situations.

---

## 🚀 Features

- 🔐 **User Authentication** (Admin login)
- 🩸 **Manage Donors** (Add, View, Update, Delete)
- 🏥 **Blood Requests** (Donor Request, Admin Approve, Admin Reject)
- 🧾 **Donor History** & Search functionality
- 🗃️ **Database Integration** with MySQL using JDBC
- 🖥️ **Dynamic Content Rendering** using JSP & JSTL
- 💡 **Responsive Design** using Bootstrap 4+

---

## 🛠️ Tech Stack

| Layer       | Technology                       |
|-------------|----------------------------------|
| Frontend    | HTML, CSS, JavaScript, Bootstrap |
| Backend     | Java, JSP, Servlet, JSTL         |
| Database    | MySQL                            |
| Connectivity| JDBC                             |
| Server      | Apache Tomcat                    |

---

## 📸 Screenshots

---

## 📁 Project Structure

```
Blood-Bank-Management-System/ │ ├── src/ │ ├── com.bbms.dao/ # DAO classes │ ├── com.bbms.model/ # JavaBeans │ └── com.bbms.servlet/ # Servlet Controllers │ ├── WebContent/ │ ├── css/ # Stylesheets │ ├── js/ # JavaScript files │ ├── images/ # UI Images │ ├── jsp/ # JSP Pages │ ├── WEB-INF/ │ │ └── web.xml # Deployment descriptor │ └── index.jsp # Landing Page │ ├── .classpath ├── .project └── README.md

```
---

## 🧪 How to Run

1. ✅ Install **JDK 8+**, **Apache Tomcat 9+**, and **MySQL Server**.
2. ✅ Import project into **Eclipse/STS** as a **Dynamic Web Project**.
3. ✅ Configure **MySQL Database** and update DB connection in `DBConnection.java`.
4. ✅ Deploy project to **Tomcat Server** and run.
5. ✅ Access app via:  
   `http://localhost:8080/Blood-Bank-Management-System/`

---

## 🧬 MySQL Database

  ```
  create database bloodbank;
  use bloodbank;

  create table bloodrequest (
    name varchar(200) not null,
    mobilenumber varchar(200) not null,
    email varchar(200) not null unique, 
    bloodgroup varchar(10) not null,
    status varchar(100) not null
    );

   select * from bloodrequest;
  
   create table donor (
     id int auto_increment primary key,
     name varchar(200) not null,
     father varchar(200) not null,
     mother varchar(200) not null,
     mobilenumber varchar(10) not null unique,
     gender enum('Male', 'Female','Other') not null,
     email varchar(200) not null,
     bloodgroup varchar(20) not null,
     address varchar(200) not null,
     created_at timestamp default current_timestamp
     );
  
   select * from donor;
   
   Create table stock(
     bloodgroup varchar(100),
     units varchar(50)
     );
     
    insert into stock values('A+','100');
    insert into stock values('A-','100');
    insert into stock values('B+','100');
    insert into stock values('B-','100');
    insert into stock values('O+','100');
    insert into stock values('O-','100');
    insert into stock values('AB+','100');
    insert into stock values('AB-','100');
    
    select * from Stock;

   ```
---

## 🔐 Default Admin Login

--- 

