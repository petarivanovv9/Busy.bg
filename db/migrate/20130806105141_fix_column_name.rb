class FixColumnName < ActiveRecord::Migration
  def up
    rename_column :ad_activities, :actitvity_id, :activity_id
  end

  def down
    rename_column :ad_activities, :activity_id, :actitvity_id
  end
end
