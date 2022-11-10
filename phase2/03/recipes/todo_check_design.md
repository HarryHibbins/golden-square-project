1. Desribe the problem.
As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.


2. Design Signature Method
todo_check(text)

# text is a string with words in it
# returns true the string contains: #TODO
# otherwise returns false


3. Create examples as tests
todo_check("#TODO, walk the dog") => true
todo_check("make sure to take the bin out today, #TODO" => true
todo_check("hello") => false

