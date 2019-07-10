class CreateTacosToppings < ActiveRecord::Migration[6.0]
  def change
    create_table :tacos_toppings do |t|
      t.references :taco, null: false, foreign_key: true
      t.references :topping, null: false, foreign_key: true
    end
  end
end
