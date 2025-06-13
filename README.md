# 📝 JSP Note Keeper

**JSP Note Keeper** is a dynamic web-based note management system built using Java EE technologies. It allows users to register, log in securely, and manage personal notes through a clean user interface. It supports CRUD operations (Create, Read, Update, Delete) and real-time interaction with a MySQL database through JDBC. The project was developed in Eclipse IDE and deployed using Apache Tomcat.

---

## 🚀 Features:

- 🔐 **User Registration**: New users can register with full name, email, and password.
- 🔑 **User Login**: Secure login is required to access note features.
- ➕ **Add Notes**: Logged-in Users can add personal notes with title and content.
- 📄 **View Notes**: Logged-in users can view a list of their saved notes.
- ✏️ **Edit Notes**: Update the title & content of existing notes.
- 🗑️ **Delete Notes**: Remove notes permanently.
- 🙍‍♂️ **View Profile**: Users can view their Id, full name and email.
- 🔓 **Logout**: End the session securely.

---

## 🌐 Tech Stack:

### 💻 Frontend:
- **HTML**: Structure of web pages.
- **CSS**: Styling and layout.
- **Bootstrap 4**: Responsive UI design components.
- **JSP (JavaServer Pages)**: Used to dynamically generate HTML based on Java backend logic.

### ⚙️ Backend:
- **Java Servlet**: Handles HTTP requests/responses and controls the application logic.
- **JSP**: Used alongside servlets to generate dynamic content.
- **JDBC (Java Database Connectivity)**: Connects and interacts with the MySQL database.
- **Session Management**: Maintains secure user sessions across pages.

### 🗄️ Database:
- **MySQL Workbench**: For creating and managing the database and its tables.
- **MySQL Connector/J**: JDBC driver to connect Java applications with MySQL.

### 🧰 Tools & IDE:
- **Eclipse IDE**: Java EE web project development environment.
- **Apache Tomcat 9+**: Local server to deploy and test the application.
- **MySQL Workbench**: GUI for managing the MySQL database

---

## 📌 Requirements:
To run this project on your local machine, you need the following:

* **Java JDK 8 or higher**: To compile and run Java code.

* **Eclipse IDE**: To develop and run the Java web project.

* **Apache Tomcat 9 or higher**: To deploy and test the web application.

* **MySQL Server & Workbench**: To create and manage the database.

* **MySQL JDBC Connector**: To connect Java with the MySQL database.

---

## 🛠️ Setup Instructions:

### 1. **Clone the Repository**:

```bash
git clone https://github.com/PAIshanMadusha/jsp-note-keeper.git
```

### 2. **Import into Eclipse**:

* Open **Eclipse IDE**.
* Go to `File > Import > General > Existing Projects into Workspace`.
* Select the cloned folder and click **Finish**.

### 3. **Set Up MySQL Database**:

* The project repository includes a file named `notekeeper.sql`.
* Open **MySQL Workbench**.
* Go to `Server > Data Import`.
* Select the `notekeeper.sql` file and import it.
* After successful import, you will see the database in the **Schemas** panel on the left.

### 4. **Configure Database Connection**:

* Open the file:
  `jsp-note-keeper/src/main/java/com/Db/DBConnect.java`
* Locate this line:

```java
jdbc:mysql://localhost:3306/notekeeper?useSSL=false&serverTimezone=UTC", "root", "root"
```
* Update the database **URL**, **username** (e.g., `root`), and **password** as per your local MySQL Workbench credentials.

### 5. **Run the Application**:

* Deploy the project on **Apache Tomcat Server** (Start the server within Eclipse IDE).
* Right-click on the project and choose **Run on Server**.
* If you see something like `com.mysql.cj.jdbc.ConnectionImpl@2bd5c9e7` in the console, it means the database connection was successful!

> **I have also included dummy data in the SQL file. You can log in using:**
> **Email:** `ishan@gmail.com`
> **Password:** `123456`
> Some sample notes have also been added for testing.

✅ **Troubleshooting:**:

* **If there are errors,**
* Double-check your **database URL**, **username**, and **password**.
* Ensure the **MySQL JDBC Driver** is correctly added to the project’s **Build Path**.

## 📸 System Screenshots:
---
<p align="center">
  <img src="https://github.com/user-attachments/assets/4f7491ed-04d1-42aa-99e7-d8cfcd953af6" alt="Screenshot 1" width="350">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <img src="https://github.com/user-attachments/assets/088c3988-66c9-466c-b155-b783a163500a" alt="Screenshot 2" width="350">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <br><br>
  <img src="https://github.com/user-attachments/assets/80ba4484-0722-4f1a-9da7-1b55febc7ee5" alt="Screenshot 3" width="350">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <img src="https://github.com/user-attachments/assets/7004271f-0ec9-4804-a9fb-fca9ff2d0cfa" alt="Screenshot 4" width="350">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <br><br>
  <img src="https://github.com/user-attachments/assets/d3147f04-2d31-4b13-b01a-86b039274895" alt="Screenshot 5" width="350">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <img src="https://github.com/user-attachments/assets/baca461b-5463-4952-8e93-91975853c7a7" alt="Screenshot 6" width="350">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <br><br>
  <img src="https://github.com/user-attachments/assets/94169a36-c287-4a50-879e-268cb2a56c89" alt="Screenshot 7" width="350">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <img src="https://github.com/user-attachments/assets/55ddbb5e-b1d1-461a-8a6a-9e2bbcd1d972" alt="Screenshot 8" width="350">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>

---

### 👨‍💻 Created by: 
**Ishan Madhusha**  
GitHub: [PAIshanMadusha](https://github.com/PAIshanMadusha)

Feel free to explore my work and get in touch if you'd like to collaborate! 🚀

---

## 📝 License:  
This project is licensed under the MIT License - See the [LICENSE](LICENSE) file for details.
