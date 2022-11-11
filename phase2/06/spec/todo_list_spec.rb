require 'todo_list'

RSpec.describe TodoList do
    context 'when 1 todo is added and the list is viewed' do
        it 'returns the todo task as a string' do
            todo_list = TodoList.new()
            todo_list.add_todo("Take the bins out")
            result = todo_list.view_list()
            expect(result).to eq ["Take the bins out"]
        end
    end

    context 'when 2 todos are added to the list' do
        it 'returns the todo list as a string' do
            todo_list = TodoList.new()
            todo_list.add_todo("Take the bins out")
            todo_list.add_todo("Go for a run")
            result = todo_list.view_list()
            expect(result).to eq ["Take the bins out", "Go for a run"]
        end
    end

    context 'when 3 todos are added and 1 is completed' do
        it 'returns the 2 that have not been completed' do
            todo_list = TodoList.new()
            todo_list.add_todo("Take the bins out")
            todo_list.add_todo("Go for a run")
            todo_list.add_todo("Water plants")
            todo_list.complete_todo("Take the bins out")
            result = todo_list.view_list()
            expect(result).to eq ["Go for a run", "Water plants"]
        end
    end

    context 'given no tasks' do 
        it 'returns an empty string' do
            todo_list = TodoList.new()
            result = todo_list.view_list()
            expect(result).to eq []
        end
    end

    context 'when completing a task that does not exist' do 
        it 'fails: this task does not exist' do 
            todo_list = TodoList.new()
            
            expect{todo_list.complete_todo("Go to the gym")}.to raise_error "this task does not exist"

        end
    end


end
