class CreateAdApplications < ActiveRecord::Migration
  def change
    create_table :ad_applications do |t|
      t.integer :user_id
      t.integer :ad_id
      t.boolean :q_viewed, default: false

      t.timestamps
    end
  end
end
