class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :itemName
      t.float :price
      t.string :foodType
      t.integer :qunanty

      t.timestamps
    end
  end
end
