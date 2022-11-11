1. Desribe the problem.
s a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.


2. Design the Class Interface
* TodoList

* initalize()
# constructs a todo list (array)

* add_todo(task)
# task is a string
# the todo is pushed to the todo list

* view_todo_list()
# returns the todo list

* complete_todo(task)
# task is the todo task that has been completed
# removes that task from the list


3. Create examples as tests
* 1.
todo_list = TodoList.new()
todo_list.add_todo("Take the bins out")
view_todo_list() => ["Take the bins out"]

* 2.
todo_list = TodoList.new()
todo_list.add_todo("Take the bins out")
todo_list.add_todo("Go for a run")
view_todo_list() => ["Take the bins out", "Go for a run"]

* 3.
todo_list = TodoList.new()
todo_list.add_todo("Take the bins out")
todo_list.add_todo("Go for a run")
todo_list.add_todo("Water plants")
todo_list.complete_todo("Take the bins out")
view_todo_list() => ["Go for a run", "Water plants"]