require "todo"

RSpec.describe Todo do
    context "Upon completing a incomplete test" do
        it "that test should become compelete" do
            todo = Todo.new("task 1")
            todo_2 = Todo.new("task 2")         
            todo.complete_task
            expect(todo.is_done?).to eq true
            expect(todo_2.is_done?).to eq false
        end
    end

end