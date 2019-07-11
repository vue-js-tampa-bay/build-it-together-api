# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
mt = Taco.create(name: 'Meatball Taco', base: 'lemongrass pork meatball', is_vegetarian: false)
mt.toppings << ['red curry mayo', 'mango slaw'].map { |name| Topping.find_or_create_by(name: name.downcase)}

ct = Taco.create(name: 'Cauliflour Taco', base: 'fried cauliflour', is_vegetarian: true)
ct.toppings << ['chili glaze', 'guacamole'].map { |name| Topping.find_or_create_by(name: name.downcase)}

tv = Taco.create(name: 'Tomyum Veggie', base: 'cabbage', is_vegetarian: true)
tv.toppings << ['kale', 'mushroom', 'tomyum'].map { |name| Topping.find_or_create_by(name: name.downcase)}

dc = Taco.create(name: 'Duck Confit', base: 'Mapleleaf Farms duck leg', is_vegetarian: false)
dc.toppings << ['pasilla pepper infused olive oil', 'chipotle and tart cherry salsa', 'queso fresco'].map { |name| Topping.find_or_create_by(name: name.downcase)}

bm = Taco.create(name: 'The Bob Marley', base: 'smoked jerk chicken', is_vegetarian: false)
bm.toppings << ['hemp seeds', 'charred pineapple salsa', 'fire roasted red peppers', 'sour cream'].map { |name| Topping.find_or_create_by(name: name.downcase)}

di = Taco.create(name: "Dante's Inferno", base: 'garlic-chili tempura chicken', is_vegetarian: false)
di.toppings << ['pepperjack cheese', 'Seven Levels of Hell hot sauce'].map { |name| Topping.find_or_create_by(name: name.downcase)}

tt = Taco.create(name: 'Tofu Taco', base: 'extra-firm bulgogi marinated tofu', is_vegetarian: true)
tt.toppings << ['pico de gallo', 'hummus', 'rajitas veggies'].map { |name| Topping.find_or_create_by(name: name.downcase)}

mm = Taco.create(name: 'Mahi Mahi', base: 'blackened Mahi Mahi', is_vegetarian: false)
mm.toppings << ['pineapple salsa', 'guacamole'].map { |name| Topping.find_or_create_by(name: name.downcase)}

sr = Taco.create(name: 'Steak & Rajitas', base: 'marinated steak', is_vegetarian: false)
sr.toppings << ['rajitas pepper mix', 'jalapeno/garlic mojo'].map { |name| Topping.find_or_create_by(name: name.downcase)}

wm = Taco.create(name: 'Woodland Mushroom', base: 'portobella mushrooms', is_vegetarian: true)
wm.toppings << ['arugula', 'goat cheese', 'garlic mayo'].map { |name| Topping.find_or_create_by(name: name.downcase)}
