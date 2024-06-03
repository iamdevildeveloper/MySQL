What is a constraint ?

In MySQL constraint are rules applied to columns in a table to enforce data integrity and consistency. They ensure that data entered in a database meets certain criteria and relationships.
In layman language. constraint are just rules applied to columns.
In real life example that we see and student first name cannot be null. but his age can be null.

Some constraint are 

NULL : Null constraint is used to define a column that will be by default carries a null value. If no value provide.
NOT NULL : Vice versa of NULL not null constraint applied to a column which should not be null. Like a student name.
UNIQUE : A UNIQUE constraint applied to a column to say that a column should only container UNIQUE values like a student ID or email.
DEFAULT : Assigns a default value to a column when no value is provided.
AUTO_INCREMENT : AUTO_INCREMENT is used to generate unique values. Like an student id or rowID.
PRIMARY KEY : Uniquely identifies each row in a table. and it cannot be not null. its very fast.
FOREIGN KEY: {
    Foreign key establish relationships between two table.
    A Foreign key in one table refers to primary key in another table
}