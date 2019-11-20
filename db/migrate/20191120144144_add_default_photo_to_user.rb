class AddDefaultPhotoToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :default_photo, :string
  end
end
