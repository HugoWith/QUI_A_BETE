class AddTempPhotoToGroup < ActiveRecord::Migration[6.0]
  def change
    add_column :groups, :temp_photo, :string
  end
end
