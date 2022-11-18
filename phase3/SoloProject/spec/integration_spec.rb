require "dishes"
require "dish"

RSpec.describe "integration" do
    context "given some dishes" do
        it "returns a list of dishes with prices" do
            requester = double(:requester)
            dishes = Dishes.new(requester)
            dish_1 = Dish.new("Burger", 10)
            dish_2 = Dish.new("Pizza", 15)
            dishes.add(dish_1)
            dishes.add(dish_2)
            expect(dishes.all).to eq [dish_1, dish_2]
        end
    end

    it "selects a number of dishes for an order" do
        requester = double(:requester)
        dishes = Dishes.new(requester)
        dish_1 = Dish.new("Burger", 10)
        dish_2 = Dish.new("Pizza", 15)
        dish_3 = Dish.new("Steak",20)
        dishes.add(dish_1)
        dishes.add(dish_2)
        dishes.add(dish_3)
        expect(dishes.select(["Burger" , "Pizza"])).to eq [dish_1, dish_2]

    end

    context "after ordering" do
        it "receieve an itemised receipt" do
            requester = double(:requester)
            dishes = Dishes.new(requester)
            dish_1 = Dish.new("Burger", 10)
            dish_2 = Dish.new("Pizza", 15)
            dish_3 = Dish.new("Steak",20)
            dishes.add(dish_1)
            dishes.add(dish_2)
            dishes.add(dish_3)
            expect(dishes.select(["Burger" , "Steak"])).to eq [dish_1, dish_3]
            price = dishes.total_price
            expect(dishes.receipt).to eq [dish_1, dish_3, price]
        end
    end

end