What is set ? 
Set is collection of thing.
In MySQL set is a collection of predefined values.
Example
    Customer communication : email, sms notification.

Set is an extension of enum. Enum stores only one value in a column but set can store multiple values.

ALTER TABLE enum_table ADD COLUMN subjects SET('science', 'math', 'english');

INSERT INTO enum_table (gender, subjects) VALUES ('male', 'science,math');