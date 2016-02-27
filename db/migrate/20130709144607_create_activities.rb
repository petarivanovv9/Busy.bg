class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.text :math
      t.text :web
      t.text :mobile
      t.text :history

      t.timestamps
    end
  end
end
