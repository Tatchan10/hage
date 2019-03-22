class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :introduce
      t.string :image
      t.integer :price
      t.string :date
      t.string :capacity
      t.integer :junre

      t.timestamps
    end
  end
end
