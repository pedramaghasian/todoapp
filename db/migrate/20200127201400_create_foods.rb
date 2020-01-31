class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :foodname
      t.text :aboutfood
    end
  end
end
