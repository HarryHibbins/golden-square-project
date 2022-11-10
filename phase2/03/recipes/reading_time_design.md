1. Desribe the problem.
As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute

2. Design Signature Method
reading_time = reading_time(text)

# text is a string with words in it
# reading time is an integer in minutes

3. Create examples as tests
reading_time(0_WORDS) => 0
reading_time(200_WORDS) => 1
reading_time(1_WORD) => 1
reading_time(2000_WORDS) => 10