# research # ASP.NET MVC Core 3.1

## 1. Setup

### 1.1. Database:

Go to the wwwroot/db folder, then use research.bak to restore the database, or run script.sql directly
Right-click script.sql, choose Properties then set Build Action into None

### 1.2. Connection string:

Go to the appsettings.json file, put the connection string in ConnectionStrings/Research section

### 1.3. Nuget package:

Check 2 packages and restore them if missing:
- Microsoft.EntityFrameworkCore.SqlServer Version 5.0.0
- Microsoft.EntityFrameworkCore.Tools Version 5.0.0

## 2. Enjoy the project

### 2.1. Localhost:

URL: /Home/User
Full URL: https://localhost:44388/Home/User

### 2.2. Postman:

Import the API collection from link: https://www.getpostman.com/collections/8fdeec8738d9090bb5be