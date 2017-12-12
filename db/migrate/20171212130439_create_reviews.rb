class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :description
      t.integer :rating
      t.integer :user_id
      t.integer :restaurant_id
      t.timestamps
    end
  end
end
