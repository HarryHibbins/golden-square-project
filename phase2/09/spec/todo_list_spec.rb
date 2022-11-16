require "todo_list"

RSpec.describe TodoList do
    context "initally" do
        it "has an empty todo list" do
            todo_list = TodoList.new()
            expect(todo_list.show_all).to eq []
            expect(todo_list.show_complete).to eq []
            expect(todo_list.show_incomplete).to eq []
        end
    end
end