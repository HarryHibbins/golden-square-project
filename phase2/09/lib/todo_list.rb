class TodoList
    def initialize 
        @list = []
    end

    def add(todo)
        @list << todo
    end

    def show_incomplete
        incomplete = []
        @list.each do |todo|
            if !todo.is_done?()
                incomplete << todo
            end
        end

        return incomplete
    end

    def show_complete
        complete = []
        @list.each do |todo|
            if todo.is_done?()
                complete << todo
            end
        end

        return complete
    end
    
    def show_all
        return @list
    end
end
