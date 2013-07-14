class ChangeUsers < ActiveRecord::Migration
  def up
  	change_column :users, :name, :string
  	change_column :users, :email, :string
  end

  def down
  	change_column :users, :name, :text
  	change_column :users, :email, :text
  end
end
