class AdColumnsToAds < ActiveRecord::Migration
  def up
    add_column :ads, :description, :text
  end

  def down
    remove_column :ads, :description
  end
end
