# Sequential and Parallel Blocks:

#### Sequential blocks:
- Keyword 'begin' and 'end' to group the terms
- Statements execute in order
#### Parallel Blocks:
- Keyword 'fork' and 'join'  
- Statements are executed concurrently
- Need to stay careful with the Race conditions that may arise, if proper delays are not used.
#### Special Features of Block:
1.  Nested Blocks: 
	- Sequential or Parallel Blocks can be inter mixed
2. Named Blocks: 
	- Local variables can be declared for the named blocks
	- Variables in a named block can be accessed via hierarchal name referencing
	- Named blocks' execution can be stopped, i.e. they can be disabled.
3.  Disabling Named Blocks: 
	- Keyword 'disable' - provides a way to terminate the execution of named blocks.

