1. Desribe the problem.
As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.


2. Design Signature Method
is_gramatically_correct = grammar_check(sentence)

# sentence is a string with words in it
# returns true if first letter is capital and last character is a punction mark
# returns false if either of the above conidtions are false


3. Create examples as tests
grammar_check("hello") => false
grammar_check("Hello") => false
grammar_check("Hello.") => true
grammar_check("Hello, what is your name?") => true
