# 🩸 Blood Bank Management System

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

## 📸 Some Screenshots for the project:

- Blood Donation Portal
  
 ![Screenshot 2025-04-13 225459](https://github.com/user-attachments/assets/48c1ab64-9992-4300-b2f9-6f5d3d0d9052)

 ![Screenshot 2025-04-13 225620](https://github.com/user-attachments/assets/e17e360a-5aad-432f-aaca-64aa59bc9c7f)

 - Request Blood
   
 ![Screenshot 2025-04-13 225554](https://github.com/user-attachments/assets/1b46b6cc-a51c-4ca8-8c1b-9ba7fdf1b4fc)

 - Admin Login
   
 ![Screenshot 2025-04-13 225743](https://github.com/user-attachments/assets/09358c2e-2983-45a7-8bf5-41a6f1ee7651)

 - Home
   
 ![Screenshot 2025-04-13 230121](https://github.com/user-attachments/assets/5766c40a-b3ee-4b3b-a186-8d364c7050bf)

 ![Screenshot 2025-04-13 230236](https://github.com/user-attachments/assets/a9180de3-2e35-4e37-bf23-5747be108e75)

 - Add New Donor
   
 ![Screenshot 2025-04-13 230259](https://github.com/user-attachments/assets/9b53adcd-b756-451a-af01-b9bd97ea1f91)
 
 ![Screenshot 2025-04-13 230314](https://github.com/user-attachments/assets/2c53d286-f519-4999-96e5-ca92203ca115)

 - List Of Donors
   
 ![Screenshot 2025-04-13 231708](https://github.com/user-attachments/assets/72a1dcda-25da-4f0b-b00a-f29c7a785adb)
 
 ![Screenshot 2025-04-14 001906](https://github.com/user-attachments/assets/c8a9d4dd-d5ca-4b1d-a887-89ed3bb1551c)
 
 - Update Donor
   
 ![Screenshot 2025-04-13 231912](https://github.com/user-attachments/assets/620058f7-0496-41cb-99d3-acdad976f3e0)
 
 ![Screenshot 2025-04-13 231928](https://github.com/user-attachments/assets/49d4ef07-858f-4287-91f1-0f7dc524d14b)

 - Delete Donor
   
 ![Screenshot 2025-04-13 231956](https://github.com/user-attachments/assets/0be4134e-eb26-4325-83e5-5e905c4fb6d3)

 - Manage Stock
   
 ![Screenshot 2025-04-13 232105](https://github.com/user-attachments/assets/c357a774-79c1-4db2-92e9-8d79885e093e)

 ![Screenshot 2025-04-13 232132](https://github.com/user-attachments/assets/751a87b1-cc86-4088-b727-164954850f42)

 - Request For Blood
   
 ![Screenshot 2025-04-14 001832](https://github.com/user-attachments/assets/a580cf1c-971d-4abe-81b8-8d43458f9257)
 
 - Request Completed
   
 ![Screenshot 2025-04-13 232410](https://github.com/user-attachments/assets/9eb2ab2d-48d4-408a-b18e-b378e6b0618b)
 
---

## 📁 Project Structure

```
Blood-Bank-Management-System/
├── src/
│   └── com/
│       └── bbms/
│           ├── dao/           # DAO classes - Handles DB operations
│           ├── model/         # JavaBeans - Data models (e.g., Donor, BloodRequest)
│           └── servlet/       # Servlet Controllers - Handle HTTP requests
│
├── WebContent/
│   ├── css/                   # Stylesheets for frontend
│   ├── js/                    # JavaScript files
│   ├── images/                # UI images (logos, icons, etc.)
│   ├── jsp/                   # JSP Pages - Views/templates
│   ├── WEB-INF/
│   │   └── web.xml            # Deployment descriptor
│   └── index.jsp              # Landing/Home page
│
├── .classpath                 # Eclipse classpath settings
├── .project                   # Eclipse project metadata
└── README.md                  # Project overview and instructions

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

## 🗃️ ================= MySQL Database =================

 STEP 1: Open MySQL Command Prompt or MySQL Workbench

 STEP 2: Login to the administrator user of MySql:
	 ```mysql -u <username> -p``` (Enter Password if asked)

 STEP 3: Copy paste and execute the MySQL Query from the following file:-
 - Run the Sql Query From this file: [MySQL Database](https://github.com/pratikkhot100/Electronics-Store-ECommerce-Website/blob/main/mysql_database.sql)

---

## 🔐 Default Admin Login

 ![Screenshot 2025-04-13 235900](https://github.com/user-attachments/assets/dfbdd030-f671-4215-80d9-64402b396491)

--- 
 
## 📞 Contact Information

   🐙 GitHub: https://github.com/pratikkhot100

   💼 LinkedIn: https://www.linkedin.com/in/pratikkhot01

   📧 Email: pratikkhot1207@gmail.com
