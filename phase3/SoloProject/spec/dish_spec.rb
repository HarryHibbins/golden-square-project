require "dish"

RSpec.describe Dish do 
    it "constructs" do
        dish = Dish.new("Burger" , 10)
        expect(dish.name).to eq "Burger"
        expect(dish.price).to eq 10
    end
end