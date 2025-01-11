-- Write your PostgreSQL query statement below
select *
from Users
where mail ~ '^[a-zA-Z][a-zA-Z0-9._-]*@leetcode\.com$'

/*
    The prefix starts with a letter (upper or lower case).
    The prefix can contain letters, digits, underscore _, period ., or dash -.
    The domain is exactly @leetcode.com.
------------
    ^[a-zA-Z]: The prefix must start with a letter (either uppercase or lowercase).
    [a-zA-Z0-9._-]*: The rest of the prefix may contain letters, digits, underscore _, period ., or dash -.
    @leetcode\.com$: The domain must be exactly @leetcode.com.
*/