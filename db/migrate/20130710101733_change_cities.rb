class ChangeCities < ActiveRecord::Migration
  def up
  	change_column :cities, :name, :string
  end

  def down
  	change_column :cities, :name, :text
  end
end
