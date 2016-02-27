class CreateAdActivities < ActiveRecord::Migration
  def change
    create_table :ad_activities do |t|
      t.integer :acitvity_id
      t.integer :ad_id

      t.timestamps
    end
  end
end
