class CreatePizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :pizzas do |t|
      t.string :name, null: false
      t.text :ingredients

      t.timestamps
    end
  end
end
