What is bit ?
Bit is 0 and 1.
Whole computer system is based on 0 and 1.
bit(size) 0 to 64 max

Storage minimum 1 byte which is 8 bit

Use case {
    Alternative to boolean
    Store ip address
}

CREATE TABLE bit_study (
	name bit(1)
)


INSERT INTO bit_study (name) VALUES (B'1');
INSERT INTO bit_study (name) VALUES (B'0');

We need to use B before value. We can only store 0 and 1. 
INSERT INTO bit_study (name) VALUES (B'2'); We cannot use this.