class TodoList
    def initialize
        @todos = []
    end
  
    def add(todo) 
      @todos << todo
    end
  
    def incomplete
        return @todos.filter do |todo|
            !todo.done? 
        end
    end
  
    def complete
        return @todos.filter do |todo|
            todo.done? 
        end
    end
  
    def give_up!
        incomplete.each do |todo| 
            todo.mark_done!
        end

    end

  end