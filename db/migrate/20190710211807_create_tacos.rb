class CreateTacos < ActiveRecord::Migration[6.0]
  def change
    create_table :tacos do |t|
      t.string :name
      t.string :base
      t.boolean :is_vegetarian

      t.timestamps
    end
  end
end
