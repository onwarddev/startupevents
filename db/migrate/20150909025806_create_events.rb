class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.decimal :price_money
      t.string :application_link
      t.date :last_day_apply

      t.timestamps null: false
    end
  end
end
