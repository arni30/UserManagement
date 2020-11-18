<p align="center">
    <h1 align="center">User Management</h1>
    <br>
<p align="center">Test task</p>

## Description

User management web-application allowing to create, edit, view list and details, and delete user accounts.
Client-side works correctly with Google Chrome web browser. 

## Building the application

1. Download/Clone the source code
2. `cd` into the root directory
3. Run `mvn clean package`

## Running  the application
1. Start MySQL server: <br>
   MacOS
   `mysql.server start`
   Ubuntu
   `service mysql start`
2. In `hibernate.cfg.xml` change this fields: <br>
     `<property name="hibernate.connection.username">Your_Username_from_MySQL</property>`<br>
      `<property name="hibernate.connection.password">Your_Password_from_MySQL</property>`
3. Go to the command line and type `mvn tomcat7:run`
4. Type `http://localhost:8080/management/` in your browser
## Author
<a href="https://github.com/arni30" target="_blank">Oleksandr Arnopolin</a>
