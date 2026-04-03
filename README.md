# Taghazout Surf Expo

A PHP web application for managing the Taghazout Surf Expo, built with the MVC (Model-View-Controller) architecture pattern.

## Project Structure

```
taghazout-surf-expo/
├── config/
│   └── Database.php          # Database connection (PDO)
├── controllers/
│   └── AdminController.php   # Handles admin dashboard logic
├── models/
│   └── Users.php             # User model — database queries
├── views/
│   └── admin/
│       └── dashboard.php     # Admin dashboard template
├── index.php                 # Application entry point
└── README.md
```

## Requirements

- **PHP** 7.4 or higher
- **MySQL** 5.7 or higher
- **XAMPP** (or any Apache + MySQL + PHP stack)

## Installation

1. **Clone the repository** into your XAMPP `htdocs` folder:
   ```bash
   git clone <repository-url> C:/xampp/htdocs/taghazout-surf-expo
   ```

2. **Create the database** in phpMyAdmin or MySQL CLI:
   ```sql
   CREATE DATABASE surf_academy;
   ```

3. **Create the `user` table:**
   ```sql
   USE surf_academy;

   CREATE TABLE user (
       id INT AUTO_INCREMENT PRIMARY KEY,
       username VARCHAR(100) NOT NULL,
       email VARCHAR(100) NOT NULL,
       password VARCHAR(255) NOT NULL,
       role VARCHAR(50) NOT NULL,
       created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
   );
   ```

4. **Configure the database** connection in `config/Database.php` if your credentials differ from the defaults (`root` / no password).

## Usage

Start Apache and MySQL from the XAMPP Control Panel, then open:

```
http://localhost/taghazout-surf-expo/
```

This loads the admin dashboard, which displays all registered users in a table.

> **Note:** Always access the app through `index.php`. Do not open view files directly in the browser — they require data from the controller to function.

## Architecture (MVC)

| Layer      | File                              | Responsibility                           |
|------------|-----------------------------------|------------------------------------------|
| Entry      | `index.php`                       | Bootstraps the app, routes to controller |
| Model      | `models/Users.php`                | Queries the `user` table via PDO         |
| View       | `views/admin/dashboard.php`       | Renders the HTML dashboard               |
| Controller | `controllers/AdminController.php` | Fetches data from model, loads view      |
| Config     | `config/Database.php`             | Manages the PDO database connection      |

## Technologies

- PHP (vanilla, no framework)
- MySQL with PDO
- HTML / CSS
