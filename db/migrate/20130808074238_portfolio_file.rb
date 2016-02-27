class PortfolioFile < ActiveRecord::Migration
  def up
    add_column :users, :portfolio_file, :string
  end

  def down
  remove_column :users, :portfolio_file, :string
  end
end
