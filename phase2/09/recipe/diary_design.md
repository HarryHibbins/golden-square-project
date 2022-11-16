 # 1. Describe the problem
As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

# 2. Design the class system

Diary
- add(DiaryEntry) # DiaryEntry is an instance of DiaryEntry
- show_all # returns a list of all diary entries 
- show_entry_based_on_time(wpm, minutes) # return the most suitable entry 


DiaryEntry 
- initialize(text) # text is a string 

TodoList
- add(Todo) # Todo is an instance of Todo
- show_incomplete # return the incompleted todos
- show_complete # return the completed todos
- show_all # return the completed todos

Todo
@task
@done
- initalize(task) # task is a string
- complete_task # returns nothing, marks task as complete
- is_done? #returns true or false depending on the tasks' completion

Contacts
- show_all # return a list of contacts

Contact
- initalize(name, number)


# 3. Integration tests

<!-- * 1. showing all diary entries 
diary = Diary.new()
diary_entry_1 = DiaryEntry.new("first diary entry")
diary_entry_2 = DiaryEntry.new("second diary entry")
diary.add(diary_entry_1)
diary.add(diary_entry_2)
diary.show_all => [diary_entry_1, diary_entry_2] -->


* 2. showing most suitable entry for 5wpm, 1 minute
<!-- diary = Diary.new()
most_suitable_entry = DiaryEntry.new("one two three four five")
diary_entry_2 = DiaryEntry.new("one")
diary_entry_3 = DiaryEntry.new("1 2 3 4 5 6 7 8 9 10")
diary.add(most_suitable_entry)
diary.add(diary_entry_2)
diary.add(diary_entry_3)
diary.show_entry_based_on_time(5, 1) => most_suitable_entry -->

* 3. displaying a list of todos in a todolist
<!-- todo_list = TodoList.new()
todo_1 = Todo.new("first task")
todo_2 = Todo.new("second task")
todo_list.add(todo_1)
todo_list.add(todo_2)
todo_list.show_all() => [todo_1, todo_2]
todo_list.show_incomplete() => [todo_1, todo_2] -->

* 4. displaying incomplete and complete todos
<!-- todo_list = TodoList.new()
todo_1 = Todo.new("first task")
todo_2 = Todo.new("second task")
todo_list.add(todo_1)
todo_list.add(todo_2)
todo_1.complete_task
todo_list.show_all() => [todo_1, todo_2]
todo_list.show_incomplete() => [todo_2]
todo_list.show_complete() => [todo_1] -->

* 5. display all numbers with all diary entries 
<!-- Contacts = Contacts.new()
contact_1 = Contact.new("person 1", "123")
contact_2 = Contact.new("person 2", "456")
Contacts.add(contact_1)
Contacts.add(contact_2)
diary = Diary.new()
diary_entry_1 = DiaryEntry.new("first diary entry")
diary_entry_2 = DiaryEntry.new("second diary entry")
diary.add(diary_entry_1)
diary.add(diary_entry_2)
diary.show_all => [[diary_entry_1, diary_entry_2], contact_1, contact_2] -->


# 3. Unit tests

Diary 
<!-- * 1. initally has an empty diary
diary = Diary.new()
diary.show_all => []
diary.show_entry_based_on_time(10,10) => [] -->

<!-- * 2. Invalid wpm or time
diary = Diary.new()
diary.show_entry_based_on_time(0,1) => error invalid param
diary.show_entry_based_on_time(1,0) => error invalid param -->
-----

<!-- TodoList
* 1. initally has an empty todoList
todo_list = TodoList.new()
todo_list.show_all => []
todo_list.show_complete => []
todo_list.show_incomplete => [] -->
----

Todo
<!-- * 1. checking if a task is done or not
todo = Todo.new("task 1")
todo_2 = Todo.new("task 2")
todo.complete_task
todo.is_done? => true
todo_2.is_done? => false
---- -->

<!-- Contacts
* 1. initally the contacts should be empty
contacts = Contacts.new()
contacts.show_all = [] -->