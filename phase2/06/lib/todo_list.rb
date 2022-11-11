class TodoList
        
    def initialize
        @list = []
    end

    def add_todo(task)
        @list.push(task)
    end

    def view_list
        @list.each do |task|
            puts task
        end
        return @list
    end
    
    def complete_todo(task)
        fail "this task does not exist" unless @list.include? task
        @list.delete(task)
    end
end

todo_list = TodoList.new()
todo_list.add_todo("Take the bins out")
result = todo_list.view_list()
puts result
