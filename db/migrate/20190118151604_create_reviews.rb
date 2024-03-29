class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :point
      t.string :image
      t.string :content

      t.timestamps
      
      t.index [:user_id, :product_id], unique: true
    end
  end
end
