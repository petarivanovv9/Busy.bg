class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.text :teacher
      t.text :softwareEngineer
      t.text :accountast
      t.text :searcher
     

      t.timestamps
    end
  end
end
