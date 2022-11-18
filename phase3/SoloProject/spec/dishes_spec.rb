require "dishes"

RSpec.describe Dishes do 
    context "initally" do
        it "returns an empty list" do
            requester = double(:requester)
            dishes = Dishes.new(requester)
            expect(dishes.all).to eq []
        end
    end

    context "after adding some dishes" do
        it "returns the list of dishes with prices" do
            dish_1 = double(:dish, name: "Burger", price: 10)
            dish_2 = double(:dish, name: "Pizza", price: 15)
            requester = double(:requester)
            dishes = Dishes.new(requester)
            dishes.add(dish_1)
            dishes.add(dish_2)
            dishes.all => [dish_1, dish_2]
        end
    end

    it "selects a number of dishes for an order" do
        dish_1 = double(:dish, name: "Burger", price: 10)
        dish_2 = double(:dish, name: "Pizza", price: 15)
        dish_3 = double(:dish, name: "Steak", price: 20)
        requester = double(:requester)
        dishes = Dishes.new(requester)
        dishes.add(dish_1)
        dishes.add(dish_2)
        dishes.add(dish_3)
        expect(dishes.select(["Burger" , "Pizza"])).to eq [dish_1, dish_2]

    end

    context "after ordering" do
        it "receieve an itemised receipt" do
            dish_1 = double(:dish, name: "Burger", price: 10)
            dish_2 = double(:dish, name: "Pizza", price: 15)
            dish_3 = double(:dish, name: "Steak", price: 20)
            requester = double(:requester)
            dishes = Dishes.new(requester)
            dishes.add(dish_1)
            dishes.add(dish_2)
            dishes.add(dish_3)
            expect(dishes.select(["Burger" , "Steak"])).to eq [dish_1, dish_3]
            price = dishes.total_price
            expect(dishes.receipt).to eq [dish_1, dish_3, price]
        end
    end
end