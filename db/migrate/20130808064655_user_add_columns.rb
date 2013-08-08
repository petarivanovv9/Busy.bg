class UserAddColumns < ActiveRecord::Migration
  def up
    add_column :users, :phone, :string
    add_column :users, :portfolio_link, :string
    add_column :users, :portfolio_description, :text
  end

  def down
    remove_column :users, :phone, :string
    remove_column :users, :portfolio_link, :string
    remove_column :users, :portfolio_description, :text
  end
end
