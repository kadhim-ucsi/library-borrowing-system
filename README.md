# SmartLibrary

A Java Swing desktop application for managing library books, members, and borrowing records. Built as a UCSI University group course project.

## Contributions

Kadhim Ahmad contributed to application coding, interface design, and debugging. Database/SQL work was primarily implemented by a teammate, with collaboration and learning support from Kadhim. This repository presents the group project, not solely authored work.

## Features

- Add, update, delete, search, and sort books and members.
- Record borrowing and returns and update available-copy counts.
- Calculate due dates and display overdue records.
- Validate inputs and display application errors.
- Store records in MySQL through JDBC prepared statements.

## Technology

Java, Java Swing, JDBC, MySQL, MySQL Connector/J.

## Run on Windows

1. Install a JDK (17 or newer recommended) and MySQL 8.
2. In MySQL Workbench, open `library.sql` and execute it against a new, empty database. The public version includes table definitions only; create sample books and members through the app.
3. Create or select a local MySQL account with SELECT, INSERT, UPDATE and DELETE privileges on the `library` database. Do not put its password in source code.
4. Download MySQL Connector/J from https://dev.mysql.com/downloads/connector/j/ and place the JAR in `lib/`.
5. In PowerShell, from this repository folder:

```powershell
$env:SMARTLIBRARY_DB_URL = 'jdbc:mysql://localhost:3306/library'
$env:SMARTLIBRARY_DB_USER = Read-Host 'MySQL username'
$dbCredential = Get-Credential -UserName $env:SMARTLIBRARY_DB_USER -Message 'Local MySQL credentials'
$env:SMARTLIBRARY_DB_PASSWORD = $dbCredential.GetNetworkCredential().Password
New-Item -ItemType Directory -Force out | Out-Null
javac -d out library/*.java
java -cp "out;lib/*" library.MainFrame
Remove-Item Env:SMARTLIBRARY_DB_PASSWORD
```

## Project structure

- `library/`: models, Swing panels, data-access classes, validation and borrowing logic.
- `library.sql`: database schema without member records or database credentials.
- `lib/`: local JDBC driver, excluded from version control.

## Scope and limitations

This is an educational desktop prototype. Borrow/return updates currently use separate database operations rather than a single transaction; concurrent usage and partial failures need further work. No production deployment or performance claims are made.

