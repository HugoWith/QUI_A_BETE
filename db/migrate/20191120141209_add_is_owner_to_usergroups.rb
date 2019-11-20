class AddIsOwnerToUsergroups < ActiveRecord::Migration[6.0]
  def change
    add_column :usergroups, :is_owner, :boolean
  end
end
