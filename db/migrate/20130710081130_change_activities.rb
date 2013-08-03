class ChangeActivities < ActiveRecord::Migration
  def up
  	remove_column :activities, :math
	  remove_column :activities, :web
	  remove_column :activities, :mobile
	  remove_column :activities, :history
  	add_column    :activities, :name, :string
  end

  def down
  	add_column :activities, :math
	  add_colmn :activities, :web
	  add_column :activities, :mobile
	  add_column :activities, :history
  	remove_column    :activities, :name, :string
  end
end
