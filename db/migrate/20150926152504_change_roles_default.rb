class ChangeRolesDefault < ActiveRecord::Migration
  def change
  	change_column :users, :role, :string, default: "editor"
  end
end
