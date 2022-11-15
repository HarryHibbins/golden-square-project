require "todo"
require "todo_list"

RSpec.describe "todo_integration" do
    context "when one todo has been added to this list" do
        it "returns the incompelte todo" do
            todo_list = TodoList.new()
            todo = Todo.new("This is a task")
            todo_list.add(todo)
            result = todo_list.incomplete()
            expect(result).to eq [todo]

        end
    end

    context "when three todos have been added to this list" do
        it "returns the all todos" do
            todo_list = TodoList.new()
            todo1 = Todo.new("task1")
            todo2 = Todo.new("task2")
            todo3 = Todo.new("task3")
            todo_list.add(todo1)
            todo_list.add(todo2)
            todo_list.add(todo3)
            result = todo_list.incomplete()
            expect(result).to eq [todo1, todo2, todo3]
        end
    end

    context "when three todos have been added to this list" do
        it "returns the all todos" do
            todo_list = TodoList.new()
            todo1 = Todo.new("task1")
            todo2 = Todo.new("task2")
            todo3 = Todo.new("task3")
            todo_list.add(todo1)
            todo_list.add(todo2)
            todo_list.add(todo3)
            todo2.mark_done!
            expect(todo_list.incomplete()).to eq [todo1, todo3]
            expect(todo_list.complete()).to eq [todo2]

        end
    end

    context "when 0 todos are in the list" do
        it "returns 0 complete and 0 incomplete" do
            todo_list = TodoList.new()
            todo = Todo.new("This is a task")
            expect(todo_list.incomplete()). to eq []
            expect(todo_list.complete()). to eq []
        end
    end

    context "when giving up todos as complete" do
        it "returns the all todos as complete" do
            todo_list = TodoList.new()
            todo1 = Todo.new("task1")
            todo2 = Todo.new("task2")
            todo3 = Todo.new("task3")
            todo_list.add(todo1)
            todo_list.add(todo2)
            todo_list.add(todo3)
            todo2.mark_done!
            todo_list.give_up!
            expect(todo_list.incomplete()).to eq []
            expect(todo_list.complete()).to eq [todo1, todo2, todo3]

        end
    end


end