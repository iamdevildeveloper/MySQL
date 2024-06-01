What is a data type ?

Data type defines what kind of data can a column store in table.
Allows MySQL to understand how to {
    store the data,
    manage and fetch data
}


Data types 

Data types in Numbers and their range to store data {
    TINYINT : -128 to 127
    SMALLINT : -32,768 to 32,767
    MEDIUMINT : -8,388,608 to 8,388,607
    INT : -2,147,483,648 to 2,147,483,647
    BIGINT : -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807
    FLOAT (Stores data in decimal form) : -3.402823466E+38 to -1.175494351E-38 and 1.175494351E-38 to 3.402823466E+38 
    DOUBLE : -1.7976931348623157E+308 to -2.2250738585072014E-308 and 2.2250738585072014E-308 to 1.7976931348623157E+308
    DECIMAL : You can decide the range in this 
}

Data types in string and their range to store data {
    CHAR : Fixed length character strings
    VARCHAR : Variable-length character string
    TEXT : Variable-length text data
    TINYTEXT : very small Variable-length text data
    MEDIUMTEXT : medium Variable-length text data
    LONGTEXT : Large variable length text data
}

Data types in Date and time {
    Date : Date values (YYYY-MM-DD)
    TIME : Time values (HH-MM-SS)
    DATETIME : Combined date and time values (YYYY-MM-DD HH-MM-SS)
    TIMESTAMP : Similar as DATETIME but updated when row is modified 
    YEAR : 
}


