CREATE DATABASE surf_academy;
Use surf_academy;

CREATE TABLE User(
    Id int PRIMARY KEY AUTO_INCREMENT ,
    Username VARCHAR(150) NOT NULL,
    Email VARCHAR (250) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL,
    Role ENUM('Student','Admin') DEFAULT 'Student',
    Created_at DATETIME DEFAULT CURRENT_TIMESTAMP );


CREATE TABLE Student(
    Id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Id_User INT,
    Level ENUM ('débutant', 'intermédiaire', 'avancé') NOT NULL,
    Country VARCHAR(100),
    Created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (Id_User) REFERENCES User(Id) ON DELETE CASCADE

);


CREATE TABLE Lesson(
    Id INT PRIMARY KEY AUTO_INCREMENT ,
    Title VARCHAR (255) NOT NULL,
    Level ENUM('débutant', 'intermédiaire', 'avancé') NOT NULL,
    Date DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    Coach_name VARCHAR(200) NOT NULL,
    Created_at DATETIME DEFAULT CURRENT_TIMESTAMP 
);

CREATE TABLE ENROLL(
    Id INT PRIMARY KEY AUTO_INCREMENT ,
    Payment_status ENUM('payé', 'en attente') NOT NULL DEFAULT 'en attente',
    Student_Id INT,
    Lesson_Id INT,
    Created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (Student_Id) REFERENCES Student(Id) ON DELETE CASCADE,
    FOREIGN KEY(Lesson_Id) REFERENCES Lesson(Id) ON DELETE CASCADE
);