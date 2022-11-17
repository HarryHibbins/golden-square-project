class SecretDiary
    def initialize(diary) 
        @diary = diary
        @locked = true
    end
  
    def read
      # Raises the error "Go away!" if the diary is locked
      # Returns the diary's contents if the diary is unlocked
      # The diary starts off locked
      fail "Go away!" if @locked
      return @diary.read
    end
  
    def lock
      @locked = true
    end
  
    def unlock
        @locked = false
    end
  end