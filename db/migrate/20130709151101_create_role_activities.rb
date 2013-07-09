class CreateRoleActivities < ActiveRecord::Migration
  def change
    create_table :role_activities do |t|
      t.integer :role_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
