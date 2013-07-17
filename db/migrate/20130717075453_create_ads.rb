class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.integer :user_id
      t.integer :max_price
      t.integer :city_id
      t.date :deadline
      t.integer :period

      t.timestamps
    end
  end
end
