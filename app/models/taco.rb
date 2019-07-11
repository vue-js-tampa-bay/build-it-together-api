# == Schema Information
#
# Table name: tacos
#
#  id            :bigint           not null, primary key
#  name          :string
#  base          :string
#  is_vegetarian :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Taco < ApplicationRecord
  has_and_belongs_to_many :toppings
end
