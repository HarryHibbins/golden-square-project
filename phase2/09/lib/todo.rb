class Todo
    def initialize(task)
        @task = task
        @is_done = false
    end

    def complete_task
        @is_done = true
    end

    def is_done?
        if @is_done
            return true
        else 
            return false
        end
    end
end