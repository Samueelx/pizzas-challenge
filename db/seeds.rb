# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

print "Seeding...\n"
# Restaurants
Restaurant.create!(name: 'Sottocasa NYC', address: '298 Atlantic Ave, Brooklyn, NY 11201')
Restaurant.create!(name: 'PizzArte', address: '69 W 55th St, New York, NY 10019')
Restaurant.create!(name: 'Ichiraku', address: '69 W 55th St, Konoha, KH 10019')
Restaurant.create!(name: 'SushiArte', address: '69 W 55th St, Tokyo, Tokyo')
Restaurant.create!(name: 'Panari', address: 'Along Mombasa Road, Nairobi, Nairobi')
# Pizzas
Pizza.create!(name: 'Cheese', ingredients: "Dough, Tomato Sauce, Cheese")
Pizza.create!(name: 'Peperoni', ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni")
Pizza.create!(name: 'Marinara', ingredients: "Marinara sauce, Garlic, Olive oil, Basil, Oregano")
Pizza.create!(name: 'Bianca', ingredients: "Ricotta, Mozzarella, Garlic")
Pizza.create!(name: 'Capricciosa', ingredients: "Tomato sauce, Mozzarella, Mushrooms, Artichokes, Cooked ham, Olives, Olive oil")
Pizza.create!(name: 'Salame', ingredients: "Tomato sauce, Mozzarella, Italian salami")
Pizza.create!(name: 'Rusticana', ingredients: "Tomato sauce, Buffalo ricotta, Oyster mushrooms")
Pizza.create!(name: 'Quattro Stationi', ingredients: "Four Seasons Pizza with Tomato Sauce, Mozzarella, Parmesan, Basil, Mushrooms, Artichokes, Cooked ham, Olives, Olive oil")
Pizza.create!(name: 'Vier Käse', ingredients: "Four cheese with tomato sauce, Mozzarella, Parmigiano Reggiano, Gorgonzola and Pecorino")

print "Done\n"
