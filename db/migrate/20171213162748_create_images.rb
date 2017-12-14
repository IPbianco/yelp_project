class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :source
      t.integer :restaurant_id
      t.timestamps
    end
  end
end
