# ⛽ fuel-indeed – Fuel Ordering & Platform Management Web App

## 📌 Project Overview

`fuel-indeed` is a web-based platform built using **JSP, Servlets, and Core Java**, designed to streamline **fuel ordering and distribution management**. It enables users to place fuel orders and allows admins to manage platforms, track deliveries, view inventory, and monitor order history. The app uses **MySQL** (via XAMPP) for data storage and is developed in **Eclipse IDE**.

---

## 🛠️ Tech Stack

| Layer           | Technology                         |
|------------------|-------------------------------------|
| Frontend         | HTML, CSS                          |
| Backend          | Java (JSP + Servlets)              |
| Database         | MySQL (XAMPP stack)                |
| IDE              | Eclipse IDE                        |
| Server           | Apache Tomcat (Bundled in Eclipse) |

---

## ✨ Features

- ✅ User registration and login
- ✅ Place fuel orders (Petrol/Diesel/etc.)
- ✅ View order history and statuses
- ✅ Admin dashboard for order and platform management
- ✅ Fuel inventory tracking
- ✅ Platform-wise order statistics
- ✅ Basic session-based authentication
- ✅ Clean, responsive interface using HTML/CSS

---

## 📦 Modules

- **User Module**
  - Register/Login
  - Place fuel orders
  - View past orders
- **Admin Module**
  - View all orders
  - Manage fuel platforms
  - Update fuel stock and pricing
  - Assign delivery statuses

---

## 🚀 How to Run the Project Locally

### 1. Requirements
- Java JDK 8 or higher
- Eclipse IDE for Enterprise Java Developers
- XAMPP (MySQL and Apache)
- Apache Tomcat Server (configured in Eclipse)

### 2. Setup Steps

#### ✅ Database Setup
- Open **XAMPP** and start **Apache** and **MySQL**
- Create a new MySQL database named `fuelindeed`
- Import the SQL script from `/database/fuelindeed.sql` (create manually if not present)

#### ✅ Eclipse Setup
- Open Eclipse → Import as existing web project
- Place the project in your workspace (e.g., `/fuel-indeed`)
- Right-click project → Build Path → Configure Build Path → Add libraries (JDK, Tomcat)
- Set up server: Add Apache Tomcat in **Servers** tab
- Deploy the project to the server

#### ✅ Configure DB Connection (example)
In your DAO or Utility file (like `DBConnection.java`):

```java
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/fuelindeed", "root", "");
```

### 3. Run the Project
- Right-click project → Run As → Run on Server
- Open browser and navigate:
```
http://localhost:8080/fuel-indeed/
```

---

## 🧑‍💻 Folder Structure

```
fuel-indeed/
├── WebContent/
│   ├── index.jsp
│   ├── login.jsp
│   ├── adminDashboard.jsp
│   ├── userDashboard.jsp
│   └── css/
├── src/
│   ├── com.fuelindeed.controller/
│   ├── com.fuelindeed.dao/
│   ├── com.fuelindeed.model/
│   └── com.fuelindeed.util/
└── database/
    └── fuelindeed.sql
```

---

## ✅ Prerequisites

- Java JDK 8+
- Eclipse IDE with Web Tools
- Apache Tomcat 9 or 10
- XAMPP (MySQL running on port 3306)

---

## 🤝 Contributing

Feel free to fork the repository and submit pull requests to improve features or fix bugs. Contributions are appreciated!

---

## 📃 License

This project is licensed under the [MIT License](LICENSE).

---

## 📧 Contact

For queries or feedback, contact: [your.email@example.com](mailto:your.email@example.com)
