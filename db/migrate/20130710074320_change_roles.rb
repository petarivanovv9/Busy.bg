class ChangeRoles < ActiveRecord::Migration
  def up
 	remove_column :roles, :teacher
	remove_column :roles, :softwareEngineer
	remove_column :roles, :accountast
	remove_column :roles, :searcher
  	add_column    :roles, :name, :string
  end

  def down
	add_column :roles, :searcher
  	add_column :roles, :teacher
	add_column :roles, :softwareEngineer
	add_column :roles, :accountast
  	remove_column    :roles, :name, :string
  end
end
