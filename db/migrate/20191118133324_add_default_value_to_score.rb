class AddDefaultValueToScore < ActiveRecord::Migration[6.0]
  def change
    change_column :usergroups, :score, :integer, default: 0
  end
end
