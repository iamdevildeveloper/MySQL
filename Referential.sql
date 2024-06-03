What is Referential action ?
In MySQL, referential actions are operations that enforce the integrity of relationships between tables when performing changes such as DELETE or UPDATE. They define what should happen to the rows in a child table when corresponding rows in a parent table are deleted or updated. These actions are specified using foreign key constraints.

Types of Referential Actions
There are several types of referential actions in MySQL:

CASCADE:
Definition: When a parent row is deleted or updated, the corresponding child rows in the foreign key relationship are automatically deleted or updated to maintain referential integrity.

SET NULL:
Definition: When a parent row is deleted or updated, the foreign key columns in the child table are set to NULL. This requires that the foreign key columns in the child table be nullable.

SET DEFAULT:
Definition: When a parent row is deleted or updated, the foreign key columns in the child table are set to their default values. This action is not supported in MySQL as of the latest versions.

RESTRICT:
Definition: Prevents the deletion or update of a parent row if there are corresponding child rows in the foreign key relationship. This is the default behavior in MySQL if no action is specified.

NO ACTION:
Definition: Similar to RESTRICT, but the difference is that NO ACTION checks the referential integrity at the end of the statement. If any foreign key constraints are violated, an error is raised.