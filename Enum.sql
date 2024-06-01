What is enum ?
Enum stands for enumeration. mentioning all things.
Enum is used to store for predefined values. Like gender, category or fixed values.
Advantages {
    Readability,
    Less chances of error,
    Less use of space,
    Faster queries
}

CREATE TABLE enum_table (
	gender enum('male', 'female', 'other')
)

