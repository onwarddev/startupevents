class AddCityToEvents < ActiveRecord::Migration
  def up
  	add_column :events, :city, :string
  	add_column :events, :state, :string
  	add_column :events, :prize_money, :decimal
  	remove_column :events, :price_money
  end
  def down
  	add_column :events, :price_money, :decimal
  	remove_column :events, :city
  	remove_column :events, :state
  	remove_column :events, :prize_money
  end
end
