class ChangeAdActivities < ActiveRecord::Migration
  def up
   remove_column :ad_activities, :acitvity_id
   add_column :ad_activities, :actitvity_id, :integer   
  end

  def down
   add_column :ad_activities, :acitvity_id
   remove_column :ad_activities, :actitvity_id, :integer   
  end
end
