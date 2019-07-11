json.id taco.id
json.name taco.name
json.base taco.base
json.is_vegetarian taco.is_vegetarian
json.toppings taco.toppings.map(&:name)