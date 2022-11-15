require "todo"

RSpec.describe Todo do
    it "constructs a new todo" do 
        todo = Todo.new("This is a task")
        expect(todo.task).to eq "This is a task"
    end

    describe "#mark_done!" do
        context "when completing an incomplete task" do 
                it "marks the todo as done" do 
                todo = Todo.new("This is a task")
                todo.mark_done!()
                expect(todo.done?()).to eq true
            end
        end

        context "when completing a complete task" do
            it "should stay completed" do
                todo = Todo.new("This is a task")
                todo.mark_done!()
                todo.mark_done!()
                expect(todo.done?()).to eq true
            end
        end
    end

    describe "#done?" do
        it "returns true if a task is complete" do
            todo = Todo.new("This is a task")
            todo.mark_done!()
            expect(todo.done?()).to eq true
        end

        it "returns true if a task is incomplete" do
            todo = Todo.new("This is a task")
            expect(todo.done?()).to eq false
        end
    end
end