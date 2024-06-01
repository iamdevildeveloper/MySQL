What is Table in MySQL ?

Table is the most important part in relational database. Its a structured collection of data organized in rows and columns, where each column represents a specific attribute of the data and each row is a record or entry.
Command {
    CREATE TABLE table_name{
        tableId INT PRIMARY KEY AUTO_INCREMENT,
        name VARCHAR(200) NOT NULL
    }
}
