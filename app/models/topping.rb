class Topping < ApplicationRecord
  has_and_belongs_to_many :tacos
end
