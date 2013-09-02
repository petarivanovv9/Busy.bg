class ChangeAdApplication < ActiveRecord::Migration
  def up
    add_column :ad_applications, :status, :string  
  end

  def down
    remove_column :ad_applications, :status
  end
end
