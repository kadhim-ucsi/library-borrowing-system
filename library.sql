-- Schema only. Import into a new, empty database.
CREATE DATABASE IF NOT EXISTS library;
USE library;

CREATE TABLE `book` (
  `bookID` varchar(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `author` varchar(100) NOT NULL,
  `copiesAvailable` int NOT NULL,
  PRIMARY KEY (`bookID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `borrowrecord` (
  `recordID` varchar(20) NOT NULL,
  `memberID` varchar(20) NOT NULL,
  `bookID` varchar(20) NOT NULL,
  `borrowDate` varchar(10) NOT NULL,
  `dueDate` varchar(10) NOT NULL,
  `returnStatus` varchar(20) NOT NULL,
  PRIMARY KEY (`recordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `member` (
  `memberID` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contactNo` varchar(20) NOT NULL,
  `memberType` varchar(20) NOT NULL,
  PRIMARY KEY (`memberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
