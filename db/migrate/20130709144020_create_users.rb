class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.integer :role_id
      t.integer :city_id

      t.timestamps
    end
  end
end
