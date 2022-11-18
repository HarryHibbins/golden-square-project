class Dishes
    def initialize(requester)
        @dishes = []
        @order = []
        @requester = requester
    end

    def all
        return @dishes
    end

    def add(dish)
        @dishes << dish
    end

    def select(food_names)
        selected = []
        food_names.each do |searched_food|
            all.each do |menu_item|
                if menu_item.name.include? searched_food
                    selected << menu_item
                    @order << menu_item
                end
            end
        end

        return selected
    end

    def order
        return @order
    end

    def total_price
        total = 0
        @order.each do |item|
            total += item.price
        end
        return total
    end

    def receipt
        return @order << total_price
    end

    def get_cat_fact
        text_response = @requester.get(URI("https://catfact.ninja/fact"))
        return JSON.parse(text_response)
      end

end