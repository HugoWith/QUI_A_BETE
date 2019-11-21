class CreateInvitations < ActiveRecord::Migration[6.0]
  def change
    create_table :invitations do |t|
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
