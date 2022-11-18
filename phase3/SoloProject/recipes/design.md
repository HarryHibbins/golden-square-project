Here is a project to test your golden square skills overall:

As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices.

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes.

As a customer
So that I can verify that my order is correct
I would like to see an itemised receipt with a grand total.

Use the twilio-ruby gem to implement this next one. You will need to use doubles too.

As a customer
So that I am reassured that my order will be delivered on time
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered.

Fair warning: if you push your Twilio API Key to a public Github repository, anyone will be able to see and use it. What are the security implications of that? How will you keep that information out of your repository?

Dishes
- all
- select
- available
- total_price
- order # returns the list that has been ordered
- receipt

Dish
- init(dish name, dish price)
- name # returns name
- price # returns price

* Integration tests 
* 1. see a list of dishes with prices
dish_1 = Dish.new("Burger", 10)
dish_2 = Dish.new("Pizza", 15)
dishes = Dishes.new()
dishes.add(dish_1)
dishes.add(dish_2)
dishes.all => [["Burger", 10] , ["Pizza" , 15]]

* 2. select a number of dishes 
dish_1 = Dish.new("Burger", 10)
dish_2 = Dish.new("Pizza", 15)
dish_3 = Dish.new("Steak",20)
dishes = Dishes.new()
dishes.add(dish_1)
dishes.add(dish_2)
dishes.add(dish_3)
dishes.select(["Burger" , "Pizza"]) => [dish_1, dish_2]
dishes.order() 

* 3. After ordering, receieve an itemised receipt
dish_1 = Dish.new("Burger", 10)
dish_2 = Dish.new("Pizza", 15)
dish_3 = Dish.new("Steak",20)
dishes = Dishes.new()
dishes.add(dish_1)
dishes.add(dish_2)
dishes.add(dish_3)
dishes.select(["Burger" , "Pizza"]) => [dish_1, dish_2]
dishes.order() 
dishes.receipt() => [[dish_1.name , dish_1.price], [dish_2.name , dish_2.price],[dishes_total_price()]]